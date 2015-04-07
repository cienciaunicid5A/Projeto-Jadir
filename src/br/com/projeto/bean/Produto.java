package br.com.projeto.bean;

public class Produto {

	private int codigo;
	private String categoria;
	private int estoque;
	private String nome;
	private float precoVenda;
	private String fotoPrincipal;
	private String fotoSite;
	private String descricao;

	public Produto(int codigo, String categoria, int estoque, String nome,
			float precoVenda, String fotoPrincipal, String fotoSite,
			String descricao) {
		this.codigo = codigo;
		this.categoria = categoria;
		this.estoque = estoque;
		this.nome = nome;
		this.precoVenda = precoVenda;
		this.fotoPrincipal = fotoPrincipal;
		this.fotoSite = fotoSite;
		this.descricao = descricao;

	}

	public Produto() {
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

	public int getEstoque() {
		return estoque;
	}

	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public float getPrecoVenda() {
		return precoVenda;
	}

	public void setPrecoVenda(float precoVenda) {
		this.precoVenda = precoVenda;
	}

	public String getFotoPrincipal() {
		return fotoPrincipal;
	}

	public void setFotoPrincipal(String fotoPrincipal) {
		this.fotoPrincipal = fotoPrincipal;
	}

	public String getFotoSite() {
		return fotoSite;
	}

	public void setFotoSite(String fotoSite) {
		this.fotoSite = fotoSite;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
