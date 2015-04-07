<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<center>
		<table width="100%" border="1" cellpadding="2" cellspacing="0">
			<tr>
				<th colspan="6"><h3>Todas</h3></th>
			
			<%
				List<Categoria> lista = new ArrayList<Aluno>();
				lista = (ArrayList) request.getAttribute("categoriaList");
				for (Categoria a : lista) {
			%>
			<tr>
				<td><%=a.getCodigo()%></td>
				<td><%=a.getCategoria()%></td>
				
			</tr>
			<%
				}
			%>
			<tr>
				<td colspan="6" align="center"><a href="index.jsp">Página Principal</a></td>
			</tr>
		</table>
	</center>
</body>
</html>