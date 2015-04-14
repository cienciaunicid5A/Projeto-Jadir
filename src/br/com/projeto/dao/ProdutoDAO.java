package br.com.projeto.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.com.projeto.bean.Produto;
import br.com.projeto.util.ConnectionFactory;

public class ProdutoDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Produto produto;

	public ProdutoDAO() throws Exception {
		// chama a classe ConnectionFactory e estabele uma conexão
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage());
		}
	}

	// método de salvar
	public void salvar(Produto produto) throws Exception {
		if (produto == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "INSERT INTO produtos (codigo, categoria, estoque, nome, precoVenda, fotoPrincipal, fotoSite, descricao) values (?, ?, ?, ?, ?, ?, ?, ?)";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, produto.getCodigo());
			ps.setString(2, produto.getCategoria());
			ps.setInt(3, produto.getEstoque());
			ps.setString(4, produto.getNome());
			ps.setFloat(5, produto.getPrecoVenda());
			ps.setString(6, produto.getFotoPrincipal());
			ps.setString(7, produto.getFotoSite());
			ps.setString(8, produto.getDescricao());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao inserir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de atualizar
	public void atualizar(Produto produto) throws Exception {
		if (produto == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "UPDATE produtos set codigo=?, categoria=?, estoque=?, nome=?, precoVenda=?, fotoPrincipal=?, fotoSite=?, descricao=? WHERE codigo = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);

			ps.setInt(1, produto.getCodigo());
			ps.setString(2, produto.getCategoria());
			ps.setInt(3, produto.getEstoque());
			ps.setString(4, produto.getNome());
			ps.setFloat(5, produto.getPrecoVenda());
			ps.setString(6, produto.getFotoPrincipal());
			ps.setString(7, produto.getFotoSite());
			ps.setString(8, produto.getDescricao());
			ps.executeUpdate();

		} catch (SQLException sqle) {
			throw new Exception("Erro ao alterar dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de excluir
	public void excluir(Produto produto) throws Exception {
		if (produto == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "DELETE FROM produtos WHERE codigo = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, produto.getCodigo());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao excluir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// Procurar Produto
	public Produto procurarProduto(int codigo) throws Exception {
		try {
			String SQL = "SELECT * FROM produtos WHERE codigo = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, codigo);
			rs = ps.executeQuery();
			if (rs.next()) {

				int cod = rs.getInt("codigo");
				String cat = rs.getString("categoria");
				int esto = rs.getInt("estoque");
				String nom = rs.getString("nome");
				String principal = rs.getString("fotoPrincipal");
				String site = rs.getString("fotoSite");
				float preco = rs.getFloat("precoVenda");
				String desc = rs.getString("descricao");
				
				produto = new Produto(cod, cat, esto, nom, preco, site, principal, desc);
			}

			return produto;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}

	// Listar todos os produtos
	public List todosProdutos() throws Exception {
		try {
			conn = this.conn;
			ps = conn.prepareStatement("SELECT * FROM produtos");
			rs = ps.executeQuery();
			List<Produto> list = new ArrayList<Produto>();
			while (rs.next()) {

				int cod = rs.getInt("codigo");
				String cat = rs.getString("categoria");
				int esto = rs.getInt("estoque");
				String nom = rs.getString("nome");
				String principal = rs.getString("fotoPrincipal");
				String site = rs.getString("fotoSite");
				float preco = rs.getFloat("precoVenda");
				String desc = rs.getString("descricao");

				list.add(new Produto(cod, cat, esto, nom, preco, site,
						principal, desc));

			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}
