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
			<tr>
				<th colspan="6"><h3>Todas</h3></th>
			</tr>
			<tr><th><a href="atualizarProduto.jsp">Alterar</a></th><th><a href="excluirProduto.jsp">Excluir</a></th><th><a href="incluirProdutos.jsp">Incluir</a> </th>
			</tr>
			<tr>
				
				<th>Codigo</th>
				<th>Categoria</th>
				<th>Estoque</th>
				<th>Nome</th>
				<th>Preco Venda</th>
				<th>Foto Princiapl</th>
				<th>Foto Site</th>
				<th>Descrição</th>
				

			</tr>
			<%
				List<Produto> lista = new ArrayList<Produto>();
				lista = (ArrayList) request.getAttribute("produtoList");
				for (Produto a : lista) {
			%>
			<tr>
				<td><%=a.getCodigo()%></td>
				<td><%=a.getCategoria()%></td>
				<td><%=a.getEstoque()%></td>
				<td><%=a.getNome()%></td>
				<td><%=a.getPrecoVenda()%></td>
				<td><%=a.getFotoPrincipal()%></td>
				<td><%=a.getFotoSite()%></td>
				<td><%=a.getDescricao()%></td>
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