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
		// chama a classe ConnectionFactory e estabele uma conex�o
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage());
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

				int codigo = rs.getInt("codigo");
				String categoria = rs.getString("categoria");
				int estoque = rs.getInt("estoque");
				String nome = rs.getString("nome");
				String fotoPrincipal = rs.getString("fotoPrincipal");
				String fotoSite = rs.getString("fotoSite");
				float precoVenda = rs.getFloat("precoVenda");
				String descricao = rs.getString("descricao");
				
				list.add(new Produto (estoque, nome, fotoPrincipal, fotoSite, precoVenda, descricao,codigo,categoria));

			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}
