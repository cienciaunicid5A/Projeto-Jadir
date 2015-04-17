<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir Produto</title>
</head>
<body background='img/fundo.jpg'>

<div align="top" class="navbar navbar-inverse">

	<div class="row">
	
		<div class='col-md-1'>
			<img src='img/LOGOMINI2.png'>
		</div>


		<div align='center' class="col-md-10">
		
			<h4>
				<font color="white"> INCLUIR PRODUTO</font>
			</h4>
		</div>
		
 	</div>

	</div>


	<center>
		<table>
			<form action="ServletProdutos" method="get">
				<input type="hidden" name="cmd" value="incluirProdutos"> <br />


			
				<tr>
					<td>Codigo:</td>
					<td><input type="text" name="txtCodigo" size="60"
						maxlength="60" ></td>
				</tr>
				<tr>
					<td>Categoria:</td>
					<td><input type="text" name="txtCategoria" size="60"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>Estoque:</td>
					<td><input type="text" size="60" name="txtEstoque"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>Nome:</td>
					<td><input type="text" name="txtNome" size="60" maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>Preço Venda:</td>
					<td><input type="text" name="txtPrecoVenda" size="60"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>Foto Principal:</td>
					<td><input type="text" name="txtFotoPrincipal" size="60"
						maxlength="60" style="margin-top: 5px"  ></td>
				</tr>
				<tr>
					<td>Foto Site:</td>
					<td><input type="text" name="txtFotoSite" size="60"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>Descrição:</td>
					<td><input type="text" name="txtDescricao" size="60"
						maxlength="60 style="margin-top: 5px"  ></td>
				</tr>
			<tr>
				<td colspan="2" align="center"><input class="btn btn-danger" type="submit"
					value="Enviar" style="margin-top: 5px" ></td>
			</tr>
			</form>
		</table>
	</center>
</body>
</html>