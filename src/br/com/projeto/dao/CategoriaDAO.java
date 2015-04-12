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
	// Listar todos as categorias
		public List todasCategorias() throws Exception {
			try {
				conn = this.conn;
				ps = conn.prepareStatement("SELECT * FROM categoria");
				rs = ps.executeQuery();
				List<Categoria> list = new ArrayList<Categoria>();
				while (rs.next()) {
					int codigo = rs.getInt("codigo");
					String categoria = rs.getString("categoria");
					String linha = rs.getString("linha");
					String faixaEtaria = rs.getString("faixaEtaria");
					list.add(new Categoria (codigo, categoria, linha, faixaEtaria));
				}
				return list;
			} catch (SQLException sqle) {
				throw new Exception(sqle);
			} finally {
				ConnectionFactory.closeConnection(conn, ps, rs);
			}
		}
}
