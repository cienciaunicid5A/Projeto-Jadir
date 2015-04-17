<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir Categoria</title>
</head>
<body background='img/fundo.jpg'>


	<title>Incluir categoria</title>
</head>

<body>

	<div align="top" class="navbar navbar-inverse">

	<div class="row">
	
		<div class='col-md-1'>
			<img src='img/LOGOMINI2.png'>
		</div>


		<div align='center' class="col-md-10">
		
			<h4>
				<font color="white"> INCLUIR CATEGORIA</font>
			</h4>
		</div>
		
 	</div>
 	</div>

	<center>
	
	<div>
		<table >
			<form action="ServletCategorias" method="get">
				<input type="hidden" name="cmd" value="incluirCategorias"> <br />


			
				<tr>
					<td>Codigo:</td>
					<td><input type="text" name="txtCodigo" size="60"
						maxlength="60"></td>
				</tr>
				<tr>
					<td>Categoria:</td>
					<td><input type="text" name="txtCategoria" size="60"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>Linha:</td>
					<td><input type="text" size="60" name="txtLinha"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td collspan='2'>Faixa Etaria</td>
					<td><input type="text" name="txtFaixaEtaria" size="60"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
			<tr>
				<td colspan="2" align="center"><input  class="btn btn-danger" type="submit"
					value="Enviar" style="margin-top: 5px" ></td>
			</tr>
			</form>
		</table>
	</center>
	</div>
</body>
</html>