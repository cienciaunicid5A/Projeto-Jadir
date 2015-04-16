package br.com.projeto.bean;

import java.util.ArrayList;
import java.util.List;

public class Categoria {
	// padr�o JavaBean ou POJO � Classe com getters/setters, mais m�todos
	// construtores
	private int codigo;
	private String categoria;
	private String linha;
	private String faixaEtaria;
	
	public Categoria(int codigo, String categoria, String linha, String faixaEtaria) {
		this.codigo = codigo;
		this.categoria = categoria;
		this.linha = linha;
		this.faixaEtaria = faixaEtaria;
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

	public String getLinha() {
		return linha;
	}

	public void setLinha(String linha) {
		this.linha = linha;
	}

	public String getFaixaEtaria() {
		return faixaEtaria;
	}

	public void setFaixaEtaria(String faixaEtaria) {
		this.faixaEtaria = faixaEtaria;
	}

}