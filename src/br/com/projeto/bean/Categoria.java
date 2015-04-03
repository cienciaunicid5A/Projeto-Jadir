package br.com.projeto.bean;

public class Categoria {
	// padrão JavaBean ou POJO – Classe com getters/setters, mais métodos
	// construtores
	private int codigo;
	private String categoria;

	public Categoria(int codigo, String categoria) {
		this.codigo = codigo;
		this.categoria = categoria;

	}

	public Categoria() {
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

}