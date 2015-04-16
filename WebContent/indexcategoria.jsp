<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.Categoria"%>

<html>
<head>
<title>Lista de Produtos</title>
</head>
<body>
	<center>
		<table width="100%" border="1" cellpadding="2" cellspacing="0">
			<tr>
				<th colspan="6"><h3>Todas</h3></th>
			</tr>
			<tr>


				<th>Categoria</th>


			</tr>
			<%
				List<Categoria> lista = new ArrayList<Categoria>();
				lista = (ArrayList) request.getAttribute("categoriaList");
				for (Categoria a : lista) {
			%>
			<tr>

				<td><%=a.getCategoria()%></td>

			</tr>
			<%
				}
			%>
			<tr>
				<td colspan="6" align="center"><a href="areaAdministrativa.jsp">Area
						Administrativa</a></td>
			</tr>
		</table>
	</center>
</body>
</html>