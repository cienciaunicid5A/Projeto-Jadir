<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualizar Produtos</title>
</head>
<body background='img/fundo.jpg'>

	<div align="top" class="navbar navbar-inverse">

		<div class="row">

			<div class='col-md-1'>
				<img src='img/LOGOMINI2.png'>
			</div>


			<div align='center' class="col-md-10">

				<h4>
					<font color="white"> ATUALIZAR PRODUTOS</font>
				</h4>
			</div>

		</div>

	</div>

	<jsp:useBean id="produto" scope="session"
		class="br.com.projeto.bean.Produto" />

	<form action="ServletProdutos?cmd=atualizarProduto" method="post">
		<center>
			<table>

				<tr>
					<td>Codigo</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCodigo" value="<%=produto.getCodigo()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Categoria:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCategoria" value="<%=produto.getCategoria()%>" /></td>
				</tr>
				<tr>
					<td>Estoque:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEstoque" value="<%=produto.getEstoque()%>" /></td>
				</tr>
				<tr>
					<td>Nome:</td>
					<td><input type="text" maxlength="60" size="60" name="txtNome"
						value="<%=produto.getNome()%>" /></td>
				</tr>
				<tr>
					<td>Preco Venda</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtPrecoVenda" value="<%=produto.getPrecoVenda()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Foto Principal</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtFotoPrincipal" value="<%=produto.getFotoPrincipal()%>" /></td>
				</tr>
				<tr>
					<td>Foto Site:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtFotoSite" value="<%=produto.getFotoSite()%>" /></td>
				</tr>
				<tr>
					<td>Descrição:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtDescricao" value="<%=produto.getDescricao()%>" /></td>
				</tr>
				<tr>
					<th colspan="2"><button class="btn btn-danger" type="button" name="btnAlterar">Confirma Atualização</button>
					</th>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>