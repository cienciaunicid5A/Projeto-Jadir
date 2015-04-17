<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.Categoria"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">

<title>Lista de Categorias</title>
</head>
<body background='img/fundo.jpg'>

	<div align="top" class="navbar navbar-inverse">

		<div class="row">

			<div class='col-md-1'>
				<img src='img/LOGOMINI2.png'>
			</div>


			<div align='center' class="col-md-10">

				<h4>
					<font color="white"> LISTA DE CATEGORIAS</font>
				</h4>
			</div>

		</div>

	</div>

	<center>
		<table class="table table-hover">
			
			<tr align="center">
			<th></th>
				<th><button class="btn" type="button"><a href="atualizarCategoria.jsp">Alterar</a></button></th>
				<th><button class="btn" type="button"><a href="excluirCategoria.jsp">Excluir</a></button></th>
				<th><button class="btn" type="button"><a href="incluirCategorias.jsp">Incluir</a></button>
				</th>
			</tr>
			<tr>
				<th>Codigo</th>
				<th>Categoria</th>
				<th>Linha</th>
				<th>Faixa Etaria</th>

			</tr>
			<%
				List<Categoria> lista = new ArrayList<Categoria>();
				lista = (ArrayList) request.getAttribute("categoriaList");
				for (Categoria a : lista) {
			%>
			<tr>
				<td><%=a.getCodigo()%></td>
				<td><%=a.getCategoria()%></td>
				<td><%=a.getLinha()%></td>
				<td><%=a.getFaixaEtaria()%></td>


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