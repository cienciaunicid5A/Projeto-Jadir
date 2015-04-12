package br.com.projeto.bean;

public class Usuarios {
	private String login;
	private String senha;
	private String nomeCompleto;
	private String email;

	public Usuarios(String login, String senha, String nomeCompleto,
			String email) {
		this.login = login;
		this.senha = senha;
		this.nomeCompleto = nomeCompleto;
		this.email = email;
	}

	public Usuarios() {
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNomeCompleto() {
		return nomeCompleto;
	}

	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = nomeCompleto;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
