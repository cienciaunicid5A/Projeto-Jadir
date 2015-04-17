<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excluir categoria</title>
</head>
<body background='img/fundo.jpg'>

	<div align="top" class="navbar navbar-inverse">

		<div class="row">

			<div class='col-md-1'>
				<img src='img/LOGOMINI2.png'>
			</div>


			<div align='center' class="col-md-10">

				<h4>
					<font color="white"> EXCLUIR CATEGORIA</font>
				</h4>
			</div>

		</div>

	</div>
	<jsp:useBean id="categoria" scope="session"
		class="br.com.projeto.bean.Categoria" />

	<form action="ServletCategorias?cmd=excluirCategoria" method="post">
		<center>
			<table>

				<tr>
					<td>Codigo:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCodigo" value="<%=categoria.getCodigo()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Categoria:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCategoria" value="<%=categoria.getCategoria()%>" style="margin-top: 5px" /></td>
				</tr>
				<tr>
					<td>Linha:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtLinha" value="<%=categoria.getLinha()%>" style="margin-top: 5px" /></td>
				</tr>
				<tr>
					<td>Faixa Etaria</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtFaixaEtaria" value="<%=categoria.getFaixaEtaria()%>" style="margin-top: 5px"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td colspan="2">
					<input class="btn btn-danger" type="submit" maxlength="60" name="btnExcluir" 
					value="Confirma Exclusão" style="margin-top: 5px" /></th>
				</td>
			</table>
		</center>
	</form>
</body>
</html>