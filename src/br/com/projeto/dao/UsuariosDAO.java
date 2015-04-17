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

	// método de salvar
	public void salvar(Usuarios usuarios) throws Exception {
		if (usuarios == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "INSERT INTO usuarios (login, senha, nomeCompleto, email) values (?, ?, ?, ?)";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);

			ps.setString(1, usuarios.getLogin());
			ps.setString(2, usuarios.getSenha());
			ps.setString(3, usuarios.getNomeCompleto());
			ps.setString(4, usuarios.getEmail());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao inserir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de atualizar
	public void atualizar(Usuarios usuarios) throws Exception {
		if (usuarios == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "UPDATE usuarios set senha=?, nomeCompleto=?, email=? WHERE login = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);

			ps.setString(1, usuarios.getLogin());
			ps.setString(2, usuarios.getSenha());
			ps.setString(3, usuarios.getNomeCompleto());
			ps.setString(4, usuarios.getEmail());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao alterar dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de excluir
	public void excluir(Usuarios usuarios) throws Exception {
		if (usuarios == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "DELETE FROM usuarios WHERE login=?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setString(1, usuarios.getLogin());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao excluir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// Procurar Usuarios
	public Usuarios procurarUsuarios(String login) throws Exception {
		try {
			String SQL = "SELECT * FROM usuarios WHERE login=?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setString(1, login);
			rs = ps.executeQuery();
			if (rs.next()) {

				String log = rs.getString("login");
				String sen = rs.getString("senha");
				String nome = rs.getString("nomeCompleto");
				String ema = rs.getString("email");
				usuarios = new Usuarios(log, sen, nome, ema);
			}
			return usuarios;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}

	// login
	public Usuarios loginUsuarios(String login, String senha) throws Exception {
		try {
			String SQL = "SELECT * FROM usuarios WHERE login=? and senha =?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setString(1, login);
			ps.setString(2, senha);
			rs = ps.executeQuery();
			if (rs.next()) {

				String log = rs.getString("login");
				String sen = rs.getString("senha");
				String nome = rs.getString("nomeCompleto");
				String ema = rs.getString("email");
				usuarios = new Usuarios(log, sen, nome, ema);
			}
			return usuarios;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
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

				String log = rs.getString("login");
				String sen = rs.getString("senha");
				String nome = rs.getString("nomeCompleto");
				String ema = rs.getString("email");

				list.add(new Usuarios(log, sen, nome, ema));

			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}
