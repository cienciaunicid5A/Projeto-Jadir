<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Excluir Usuarios</title>
</head>
<body>
	<center>
		<table border="1">
			<form action="ServletUsuarios?cmd=excUsuarios" method="post">
				<tbody>
					<tr>
						<th colspan="2"><h2>Excluir Usuario</h2></th>
					</tr>
					<tr>
						<td>Login</td>
						<td><input type="text" name="txtLogin" size="10" maxlenght="10">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Atualizar"></td>
					</tr>
				</tbody>
			</form>
		</table>
	</center>
</body>
</html>