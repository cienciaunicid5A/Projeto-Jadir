package br.com.projeto.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.com.projeto.bean.Categoria;
import br.com.projeto.util.ConnectionFactory;

public class CategoriaDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Categoria categoria;

	public CategoriaDAO() throws Exception {
		// chama a classe ConnectionFactory e estabele uma conexão
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage());
		}
	}

	// método de salvar
	public void salvar(Categoria categoria) throws Exception {
		if (categoria == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "INSERT INTO categorias (codigo, categoria, linha, faixaEtaria) values (?, ?, ?, ?)";
			conn = this.conn;

			ps = conn.prepareStatement(SQL);
			ps.setInt(1, categoria.getCodigo());
			ps.setString(2, categoria.getCategoria());
			ps.setString(3, categoria.getLinha());
			ps.setString(4, categoria.getFaixaEtaria());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao inserir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de atualizar
	public void atualizar(Categoria categoria) throws Exception {
		if (categoria == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "UPDATE categorias set categoria=?, linha=?, faixaEtaria=? WHERE codigo = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, categoria.getCodigo());
			ps.setString(2, categoria.getCategoria());
			ps.setString(3, categoria.getLinha());
			ps.setString(4, categoria.getFaixaEtaria());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao alterar dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de excluir
	public void excluir(Categoria categoria) throws Exception {
		if (categoria == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "DELETE FROM categorias WHERE codigo = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, categoria.getCodigo());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao excluir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// Procurar categoria
	public Categoria procurarCategoria(int codigo) throws Exception {
		try {
			String SQL = "SELECT * FROM categorias WHERE codigo=?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, codigo);
			rs = ps.executeQuery();
			if (rs.next()) {

				int cod = rs.getInt("codigo");
				String cat = rs.getString("categoria");
				String lin = rs.getString("linha");
				String faixa = rs.getString("faixaEtaria");
				categoria = new Categoria(cod, cat, lin, faixa);
			}
			return categoria;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}

	// Listar todos as categorias
	public List todasCategorias() throws Exception {
		try {
			conn = this.conn;
			ps = conn.prepareStatement("SELECT * FROM categorias");
			rs = ps.executeQuery();
			List<Categoria> list = new ArrayList<Categoria>();
			while (rs.next()) {
				int codigo = rs.getInt("codigo");
				String categoria = rs.getString("categoria");
				String linha = rs.getString("linha");
				String faixaEtaria = rs.getString("faixaEtaria");
				list.add(new Categoria(codigo, categoria, linha, faixaEtaria));
			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}
