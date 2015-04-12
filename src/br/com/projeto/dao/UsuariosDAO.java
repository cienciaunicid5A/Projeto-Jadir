package br.com.projeto.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.com.projeto.bean.Usuarios;
import br.com.projeto.util.ConnectionFactory;

public class UsuariosDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Usuarios usuarios;

	public UsuariosDAO() throws Exception {
		// chama a classe ConnectionFactory e estabele uma conexão
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage());
		}
	}

	// Listar todos os Usuarios
	public List todosUsuarios() throws Exception {
		try {
			conn = this.conn;
			ps = conn.prepareStatement("SELECT * FROM usuarios");
			rs = ps.executeQuery();
			List<Usuarios> list = new ArrayList<Usuarios>();
			while (rs.next()) {

				String login = rs.getString("login");
				String senha = rs.getString("senha");
				String nomeCompleto = rs.getString("nomeCompleto");
				String email = rs.getString("email");

				list.add(new Usuarios(login, senha, nomeCompleto, email));

			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}
