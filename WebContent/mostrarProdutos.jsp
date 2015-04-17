<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.Produto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lista de Produtos</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">

<body background='img/fundo.jpg'>

<div align="top" class="navbar navbar-inverse">

		<div class="row">

			<div class='col-md-1'>
				<img src='img/LOGOMINI2.png'>
			</div>


			<div align='center' class="col-md-10">

				<h4>
					<font color="white"> LISTA DE PRODUTOS</font>
				</h4>
			</div>

		</div>

	</div>
	<center>
		<table class="table table-hover">
			
			<tr>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
				<th><button class="btn" type="button"><a href="atualizarProduto.jsp">Alterar</a></button></th>
				<th><button class="btn" type="button"><a href="excluirProduto.jsp">Excluir</a></button></th>
				<th><button class="btn" type="button"><a href="incluirProdutos.jsp">Incluir</a></button></th>
				<th colspan="2"></th>
				
			</tr>
			<tr>

				<th>Codigo</th>
				<th>Categoria</th>
				<th>Estoque</th>
				<th>Nome</th>
				<th>Preco Venda</th>
				<th>Foto Principal</th>
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
			<th></th>
			<th></th>
			
				<td colspan="6" align="center"><button class="btn" type="button"><a href="areaAdministrativa.jsp">Area
						Administrativa</a></button></td>
			</tr>
		</table>
	</center>
</body>
</html>