<%@page import="br.com.projeto.dao.CategoriaDAO"%>
<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.*"%>
<%@ page import="br.com.projeto.web.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Layout Home Page</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">
</head>

<body>

	<div id='geral'>

		<!-- Logo do Site na Div -->
		<div id='cabec'>


			<!-- Cadastro administrador -->

			<table align="right" id="adm">
				<form action="ServletUsuarios?cmd=con" method="post">
					<tr>
						<td height="108">
							<fieldset>

								<legend>Acesso Adm</legend>
								Login <input type="text" name="txtLogin" size="10"
									maxlenght="10"><br> Senha <input type="password"
									name="txtSenha" size="10" maxlenght="10"><br> <input
									type="submit" value="Entrar"></a>

							</fieldset>
						</td>
					</tr>
				</form>
			</table>
			<img src="img/kkk.png" width="1100" height="125">
		</div>
		<!-- Menu das categorias -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand">Categorias</li>
				<%
					List<Categoria> lista = new CategoriaDAO().todasCategorias();
					for (Categoria a : lista) {
				%>
				<li value="<%=a.getCodigo()%>"><a
					href="http://localhost:8080/TrabalhoJadir/ServletCategorias?cmd=<%=a.getCodigo()%>"><%=a.getCategoria()%></a></li>
				<%
					}
				%>
			</ul>
		</div>



		<!-- Fotos Dos produtos -->
		<div id='conteudo' align="right">
			<table>
				<%
					int count = 3;
					List<Produto> listaProduto = (ArrayList) session
							.getAttribute("produtos");
					if (listaProduto == null) {
						listaProduto = new ProdutoDAO()
								.procurarProdutoPorCategoria("BONECAS");
					}
					for (Produto a : listaProduto) {
				%>
				<%
					if (count == 3) {
				%>
				<tr>
					<%
						}
					%>
					<td>
						<div>
							<%
								String img = a.getFotoSite();
							%>
							<img src="img/<%=img%>"><br>
							<%=a.getNome()%><br>
							<%=a.getPrecoVenda()%><br> <a
								href="http://localhost:8080/TrabalhoJadir/ServletProdutos?cmd=<%=a.getCodigo()%>">Mais
								Detalhes</a>
						</div> <%
 	count = count + 1;
 %>
					</td>

					<%
						if (count == 3) {
								count = 0;
					%>

				</tr>
				<%
					}
				%>
				<%
					}
				%>

			</table>
		</div>


		<!-- Rodapé -->
	<!-- 	<div id='rodape' align="bottom">
			<img src="img/rodape.jpg">

		</div> -->
	</div>
</body>
</html>