<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Consultar Produto</title>
<link rel="stylesheet" type="text/css" href="estilo.css" />
<title>Consulta Produto</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta Produto</title>
</head>
<body background='img/fundo.jpg'>

	<div align="top" class="navbar navbar-inverse">

		<div class="row">

			<div class='col-md-1'>
				<img src='img/LOGOMINI2.png'>
			</div>


			<div align='center' class="col-md-10">

				<h4>
					<font color="white"> CONSULTAR PRODUTO</font>
				</h4>
			</div>

		</div>

	</div>

	<jsp:useBean id="produto" scope="session"
		class="br.com.projeto.bean.Produto" />

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
					name="txtCategoria" value="<%=produto.getCategoria()%>"
					readonly="readonly" style="margin-top: 5px"  /></td>
			</tr>
			<tr>
				<td>Estoque:</td>
				<td><input type="text" maxlength="60" size="60"
					name="txtEstoque" value="<%=produto.getEstoque()%>"
					readonly="readonly" style="margin-top: 5px"  /></td>
			</tr>
			<tr>
				<td>Nome:</td>
				<td><input type="text" maxlength="60" size="60" name="txtNome"
					value="<%=produto.getNome()%>" readonly="readonly" style="margin-top: 5px"  /></td>
			</tr>
			<tr>
				<td>Preco Venda</td>
				<td><input type="text" maxlength="60" size="60"
					name="txtPrecoVenda" value="<%=produto.getPrecoVenda()%>"
					readonly="readonly" style="margin-top: 5px"  /></td>
			</tr>
			<tr>
				<td>Foto Principal</td>
				<td><input type="text" maxlength="60" size="60"
					name="txtFotoPrincipal" value="<%=produto.getFotoPrincipal()%>"
					readonly="readonly" style="margin-top: 5px"  /></td>
			</tr>
			<tr>
				<td>Foto Site:</td>
				<td><input type="text" maxlength="60" size="60"
					name="txtFotoSite" value="<%=produto.getFotoSite()%>"
					readonly="readonly"  style="margin-top: 5px" /></td>
			</tr>
			<tr>
				<td>Descrição:</td>
				<td><input type="text" maxlength="60" size="60"
					name="txtDescricao" value="<%=produto.getDescricao()%>"
					readonly="readonly" style="margin-top: 5px" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="index.jsp">
						<button class="btn btn-danger" type="button" style="margin-top: 5px">Pagina
							inicial</button>
				</a></td>
			</tr>
		</table>
	</center>
	</form>
</body>
</html>