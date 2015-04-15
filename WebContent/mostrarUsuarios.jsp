<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.Usuarios"%>

<html>
<head>
<title>Lista de Usuarios</title>
</head>
<body>
	<center>
		<table width="100%" border="1" cellpadding="2" cellspacing="0">
			<tr>
				<th colspan="6"><h3>Todas</h3></th>
			</tr>
			<tr><th><a href="atualizarUsuarios.jsp">Alterar</a></th><th><a href="excluirUsuario.jsp">Excluir</a></th><th><a href="incluirUsuarios.jsp">Incluir</a> </th>
			</tr>
			<tr>
				<th>Login</th>
				<th>Senha</th>
				<th>Nome Completo</th>
				<th>E-mail</th>

			</tr>
			<%
				List<Usuarios> lista = new ArrayList<Usuarios>();
				lista = (ArrayList) request.getAttribute("usuariosList");
				for (Usuarios a : lista) {
			%>
			<tr>
				<td><%=a.getLogin()%></td>
				<td><%=a.getSenha()%></td>
				<td><%=a.getNomeCompleto()%></td>
				<td><%=a.getEmail()%></td>
			</tr>
			<%
				}
			%>
			<tr>
				<td colspan="6" align="center"><a href="areaAdministrativa.jsp">Area Administrativa</a></td>
			</tr>
		</table>
	</center>
</body>
</html>