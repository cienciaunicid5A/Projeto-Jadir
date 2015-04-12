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
 * Servlet implementation class ServletCategoria
 */
@WebServlet("/ServletCategoria")
public class ServletCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public ServletCategoria() {
		
	}

	protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// a vari�vel cmd indica o tipo de a��o - incluir, alterar,
		// consulta.....
		String cmd = request.getParameter("cmd");
		// cria um objeto dao - CRUD
		CategoriaDAO dao;
		// cria um objeto do tipo aluno
		Categoria categoria = new Categoria();
		if (cmd != null) {
			try {
				// inicializa os atributos da classe Categoria
				categoria.setCodigo(Integer.parseInt(request.getParameter("?")));
				categoria.setCategoria(request.getParameter("?"));
				
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
				// cria uma sess�o para encaminhar a lista para uma JSP
				request.setAttribute("categoriaList", categoriaList);
				// redireciona para a JSP mostraAlunosCads
				rd = request.getRequestDispatcher("/mostrarcategorias.jsp");
			
			}
			/*
			// incluir aluno
			else if (cmd.equalsIgnoreCase("incluir")) {
				dao.salvar(aluno);
				rd = request.getRequestDispatcher("ServletAlunos?cmd=listar");
				// consulta aluno para exclus�o
			} else if (cmd.equalsIgnoreCase("exc")) {
				aluno = dao.procurarAluno(aluno.getCaAluno());
				HttpSession session = request.getSession(true);
				session.setAttribute("aluno", aluno);
				rd = request.getRequestDispatcher("/formExcAluno.jsp");
				// exclui aluno
			} else if (cmd.equalsIgnoreCase("excluir")) {
				dao.excluir(aluno);
				rd = request.getRequestDispatcher("ServletAlunos?cmd=listar");
				// consulta aluno para altera��o
			} else if (cmd.equalsIgnoreCase("atu")) {
				aluno = dao.procurarAluno(aluno.getCaAluno());
				HttpSession session = request.getSession(true);
				session.setAttribute("aluno", aluno);
				rd = request.getRequestDispatcher("/formAtuAluno.jsp");
				// consulta aluno
			} else if (cmd.equalsIgnoreCase("con")) {
				aluno = dao.procurarAluno(aluno.getCaAluno());
				HttpSession session = request.getSession(true);
				session.setAttribute("aluno", aluno);
				rd = request.getRequestDispatcher("/formConAluno.jsp");
				// altera aluno
			} else if (cmd.equalsIgnoreCase("atualizar")) {
				dao.atualizar(aluno);
				rd = request.getRequestDispatcher("ServletAlunos?cmd=listar");
				// direciona para a p�gina principal
			} else if (cmd.equalsIgnoreCase("principal")) {
				rd = request.getRequestDispatcher("/index.jsp");
			}
			// executa a a��o de direcionar para a p�gina JSP
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);

		}
	}*/
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
