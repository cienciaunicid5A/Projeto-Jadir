package br.com.projeto.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.projeto.bean.Produto;
import br.com.projeto.dao.ProdutoDAO;

/**
 * Servlet implementation class ServletProdutos
 */
@WebServlet("/ServletProdutos")
public class ServletProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletProdutos() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// a variável cmd indica o tipo de ação - incluir, alterar,
		// consulta.....
		String cmd = request.getParameter("cmd");
		// cria um objeto dao - CRUD
		ProdutoDAO dao;
		// cria um objeto do tipo aluno
		Produto produto = new Produto();
		if (cmd != null) {
			try {
				// inicializa os atributos da classe Categoria
				produto.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
				produto.setCategoria(request.getParameter("txtCategoria"));
				produto.setEstoque(Integer.parseUnsignedInt("txtEstoque"));
				produto.setNome(request.getParameter("txtNome"));
				produto.setPrecoVenda(Float.parseFloat(request.getParameter("txtPrecoVenda")));
				produto.setFotoPrincipal(request.getParameter("txtFotoprincipal"));
				produto.setFotoSite(request.getParameter("txtFotoSite"));
				produto.setDescricao(request.getParameter("txtDescricao"));
				
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		try {
			// cria a instancia do objeto dao
			dao = new ProdutoDAO();
			RequestDispatcher rd = null;

			// lista todos as Produto
			if (cmd.equalsIgnoreCase("listar")) {
				List produtoList = dao.todosProdutos();
				// cria uma sessão para encaminhar a lista para uma JSP
				request.setAttribute("produtoList", produtoList);
				// redireciona para a JSP mostraAlunosCads
				rd = request.getRequestDispatcher("/mostrarProdutos.jsp");
			}

			// incluir Produto
			else if (cmd.equalsIgnoreCase("incluirProdutos")) {
				dao.salvar(produto);
				rd = request.getRequestDispatcher("ServletProdutos?cmd=listar");

				// consulta produto para exclusão
			} else if (cmd.equalsIgnoreCase("excProdutos")) {
				produto = dao.procurarProduto(produto.getCodigo());
				HttpSession session = request.getSession(true);
				session.setAttribute("produto", produto);
				rd = request.getRequestDispatcher("/formExcluirProduto.jsp");

				// exclui produto
			} else if (cmd.equalsIgnoreCase("excluirProduto")) {
				dao.excluir(produto);
				rd = request.getRequestDispatcher("ServletProdutos?cmd=listar");

				// consulta produto para alteração
			} else if (cmd.equalsIgnoreCase("atuProdutos")) {
				produto = dao.procurarProduto(produto.getCodigo());
				HttpSession session = request.getSession(true);
				session.setAttribute("produto", produto);
				rd = request.getRequestDispatcher("/formAtualizarProduto.jsp");

				// consulta produto***
			} else if (cmd.equalsIgnoreCase("con")) {
				produto = dao.procurarProduto(produto.getCodigo());
				HttpSession session = request.getSession(true);
				session.setAttribute("produto", produto);
				rd = request.getRequestDispatcher("/formConProduto.jsp");

				// altera aluno
			} else if (cmd.equalsIgnoreCase("atualizarProduto")) {
				dao.atualizar(produto);
				rd = request.getRequestDispatcher("ServletProdutos?cmd=listar");

				// direciona para a página principal
			} else if (cmd.equalsIgnoreCase("principal")) {
				rd = request.getRequestDispatcher("/index.jsp");
			}
			// executa a ação de direcionar para a página JSP
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);

		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
