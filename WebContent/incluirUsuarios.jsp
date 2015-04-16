<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir Usuários</title>
</head>
<body background='img/fundo.jpg'>


	<title>Incluir Usuário</title>
</head>

	<div align="top" class="navbar navbar-inverse">

	<div class="row">
	
		<div class='col-md-1'>
			<img src='img/LOGOMINI2.png'>
		</div>


		<div align='center' class="col-md-10">
		
			<h4>
				<font color="white"> INCLUIR USUÁRIO</font>
			</h4>
		</div>
		
 	</div>

	</div>
	<center>
		<table>
			<form action="ServletUsuarios" method="get">
				<input type="hidden" name="cmd" value="incluirUsuarios"> </br>

				<tr>
					<td>Login:</td>
					<td><input type="text" name="txtLogin" size="60"
						maxlength="60"></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="text" name="txtSenha" size="60"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>Nome Completo</td>
					<td><input type="text" size="60" name="txtNomeCompleto"
						maxlength="60" style="margin-top: 5px" ></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><input type="text" name="txtEmail" size="60"
						maxlength="60" style="margin-top: 5px" ></td>
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