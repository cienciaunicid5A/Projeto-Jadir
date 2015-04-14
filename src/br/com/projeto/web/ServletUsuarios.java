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

import br.com.projeto.bean.Usuarios;
import br.com.projeto.dao.UsuariosDAO;

/**
 * Servlet implementation class ServletUsuarios
 */
@WebServlet("/ServletUsuarios")
public class ServletUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// a variável cmd indica o tipo de ação - incluir, alterar,
		// consulta.....
		String cmd = request.getParameter("cmd");
		// cria um objeto dao - CRUD
		UsuariosDAO dao;
		// cria um objeto do tipo aluno
		Usuarios usuarios = new Usuarios();
		if (cmd != null) {
			try {
				// inicializa os atributos da classe Alunos
				usuarios.setLogin(request.getParameter("txtLogin"));
				usuarios.setSenha(request.getParameter("txtSenha"));
				usuarios.setNomeCompleto(request
						.getParameter("txtNomeCompleto"));
				usuarios.setEmail(request.getParameter("txtEmail"));

			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		try {
			// cria a instancia do objeto dao
			dao = new UsuariosDAO();
			RequestDispatcher rd = null;
			// lista todos os usuarios
			if (cmd.equalsIgnoreCase("listar")) {
				List usuariosList = dao.todosUsuarios();
				// cria uma sessão para encaminhar a lista para uma JSP
				request.setAttribute("usuariosList", usuariosList);
				// redireciona para a JSP mostraUsuarios
				rd = request.getRequestDispatcher("/mostrarUsuarios.jsp");
			}
			// incluir usuarios
			else if (cmd.equalsIgnoreCase("incluirUsuarios")) {
				dao.salvar(usuarios);
				rd = request.getRequestDispatcher("ServletUsuarios?cmd=listar");

				// consulta usuarios para exclusão
			} else if (cmd.equalsIgnoreCase("excUsuarios")) {
				usuarios = dao.procurarUsuarios(usuarios.getLogin());
				HttpSession session = request.getSession(true);
				session.setAttribute("usuarios", usuarios);
				rd = request.getRequestDispatcher("/formExcluirUsuario.jsp");

				// exclui usuarios
			} else if (cmd.equalsIgnoreCase("excluirUsuario")) {
				dao.excluir(usuarios);
				rd = request.getRequestDispatcher("ServletUsuarios?cmd=listar");

				// consulta usuario para alteração
			} else if (cmd.equalsIgnoreCase("atuUsuarios")) {
				usuarios = dao.procurarUsuarios(usuarios.getLogin());
				HttpSession session = request.getSession(true);
				session.setAttribute("usuarios", usuarios);
				rd = request.getRequestDispatcher("/formAtualizarUsuarios.jsp");

				// Area Administrativa
			} else if (cmd.equalsIgnoreCase("con")) {
				usuarios = dao.loginUsuarios(usuarios.getLogin(),usuarios.getSenha());
				if(usuarios != null){
					HttpSession session = request.getSession(true);
					session.setAttribute("usuarios", usuarios);
					rd = request.getRequestDispatcher("/areaAdministrativa.jsp");
					
				}else{ rd = request.getRequestDispatcher("/index.jsp");}
				

				// altera aluno
			} else if (cmd.equalsIgnoreCase("atualizarUsuarios")) {
				dao.atualizar(usuarios);
				rd = request.getRequestDispatcher("ServletUsuarios?cmd=listar");

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

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
