<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir Usuarios</title>
</head>
<body>
	<center>
		<table border="1" width="42%">
			<form action="ServletUsuarios" method="get">
				<input type="hidden" name="cmd" value="incluirUsuarios"> <br />


				<tr>
					<th colspan="2"><h1>Incluir Usuarios</h1></th>
				</tr>
				<tr>
					<td>Login:</td>
					<td><input type="text" name="txtLogin" size="60"
						maxlength="60"></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="text" name="txtSenha" size="60"
						maxlength="60"></td>
				</tr>
				<tr>
					<td>Nome Completo</td>
					<td><input type="text" size="60" name="txtNomeCompleto"
						maxlength="60"></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><input type="text" name="txtEmail" size="60"
						maxlength="60"></td>
				</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Enviar"></td>
			</tr>
			</form>
		</table>
	</center>
</body>
</html>