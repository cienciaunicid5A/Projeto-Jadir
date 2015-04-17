<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.Produto"%>

<html>
<head>
<title>Lista de Produtos</title>
</head>
<body>
	<center>
		<table width="100%" border="1" cellpadding="2" cellspacing="0">
			<%
				Produto produto = new Produto();
				produto = (Produto) request.getAttribute("produtoDetalhe");
			%>
			<tr>
				<td><%=produto.getFotoPrincipal()%></td>
			</tr>
			<tr>
				<td><%=produto.getNome()%></td>
			</tr>

			<tr>
				<td><%=produto.getCodigo()%></td>
			</tr>
			<tr>
				<td><%=produto.getPrecoVenda()%></td>
			</tr>
			<tr>
				<td><%=produto.getDescricao()%></td>
			</tr>
			<tr>
				<td colspan="6" align="center"><a href="index.jsp">Index</a></td>
			</tr>
		</table>
	</center>
</body>
</html>