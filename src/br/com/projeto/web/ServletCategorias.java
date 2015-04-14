package br.com.projeto.web;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import br.com.projeto.bean.Categoria;
import br.com.projeto.dao.CategoriaDAO;

/**
 * Servlet implementation class ServletCategorias
 */
@WebServlet("/ServletCategorias")
public class ServletCategorias extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// a variável cmd indica o tipo de ação - incluir, alterar,
		// consulta.....
		String cmd = request.getParameter("cmd");
		// cria um objeto dao - CRUD
		CategoriaDAO dao;
		// cria um objeto do tipo aluno
		Categoria categoria = new Categoria();
		if (cmd != null) {
			try {
				// inicializa os atributos da classe Categoria
				categoria.setCodigo(Integer.parseInt(request
						.getParameter("txtCodigo")));
				categoria.setCategoria(request.getParameter("txtCategoria"));
				categoria.setLinha(request.getParameter("txtLinha"));
				categoria
						.setFaixaEtaria(request.getParameter("txtFaixaEtaria"));

			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		try {
			// cria a instancia do objeto dao
			dao = new CategoriaDAO();
			RequestDispatcher rd = null;

			// lista todos as Categorias
			if (cmd.equalsIgnoreCase("listar")) {
				List categoriaList = dao.todasCategorias();
				// cria uma sessão para encaminhar a lista para uma JSP
				request.setAttribute("categoriaList", categoriaList);
				// redireciona para a JSP mostraAlunosCads
				rd = request.getRequestDispatcher("/mostrarCategorias.jsp");
			}

			// incluir aluno
			else if (cmd.equalsIgnoreCase("incluirCategorias")) {
				dao.salvar(categoria);
				rd = request.getRequestDispatcher("ServletCategorias?cmd=listar");

				// consulta aluno para exclusão
			} else if (cmd.equalsIgnoreCase("excCategoria")) {
				categoria = dao.procurarCategoria(categoria.getCodigo());
				HttpSession session = request.getSession(true);
				session.setAttribute("categoria", categoria);
				rd = request.getRequestDispatcher("/formExcluirCategoria.jsp");

				// exclui aluno
			} else if (cmd.equalsIgnoreCase("excluirCategoria")) {
				dao.excluir(categoria);
				rd = request
						.getRequestDispatcher("ServletCategorias?cmd=listar");

				// consulta aluno para alteração
			} else if (cmd.equalsIgnoreCase("atuCategorias")) {
				categoria = dao.procurarCategoria(categoria.getCodigo());
				HttpSession session = request.getSession(true);
				session.setAttribute("categoria", categoria);
				rd = request.getRequestDispatcher("/formAtualizarCategoria.jsp");

				// consulta usuario***
			} else if (cmd.equalsIgnoreCase("con")) {
				categoria = dao.procurarCategoria(categoria.getCodigo());
				HttpSession session = request.getSession(true);
				session.setAttribute("categoria", categoria);
				rd = request.getRequestDispatcher("/formConCategoria.jsp");

				// altera aluno
			} else if (cmd.equalsIgnoreCase("atualizarCategoria")) {
				dao.atualizar(categoria);
				rd = request
						.getRequestDispatcher("ServletCategorias?cmd=listar");

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
