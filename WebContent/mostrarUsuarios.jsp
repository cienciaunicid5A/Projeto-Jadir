<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.Usuarios"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">

<title>Lista de Usuarios</title>
</head>
<body background='img/fundo.jpg' >

	<div align="top" class="navbar navbar-inverse">

		<div class="row">

			<div class='col-md-1'>
				<img src='img/LOGOMINI2.png'>
			</div>


			<div align='center' class="col-md-10">

				<h4>
					<font color="white"> LISTA DE USUÁRIOS</font>
				</h4>
			</div>

		</div>

	</div>

	<center>
		<table class="table table-hover">

			<tr>
				<th></th>
				<th><button class="btn" type="button"><a href="atualizarUsuarios.jsp">Alterar</a></button></th>
				<th><button class="btn" type="button"><a href="excluirUsuario.jsp">Excluir</a></button></th>
				<th><button class="btn" type="button"><a href="incluirUsuarios.jsp">Incluir</a></button></th>
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
				<td colspan="6" align="center"><button class="btn" type="button"><a href="areaAdministrativa.jsp">Area
						Administrativa</a></button></td>
			</tr>
		</table>
	</center>
</body>
</html>