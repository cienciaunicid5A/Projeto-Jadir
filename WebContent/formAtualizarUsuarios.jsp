<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Atualizar Usuarios</title>
</head>
<body>
	<h3 align="center">Atualizar Usuarios</h3>
	<jsp:useBean id="usuarios" scope="session"
		class="br.com.projeto.bean.Usuarios" />
	
	<form action="ServletUsuarios?cmd=atualizarUsuarios" method="post">
		<center>
			<table>
			
				<tr>
					<td>Login:</td>
					<td><input type="text" maxlength="60" size="60" name="txtLogin"
						value="<%=usuarios.getLogin()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="text" maxlength="60" size="60" name="txtSenha"
						value="<%=usuarios.getSenha()%>" /></td>
				</tr>
				<tr>
					<td>Nome Completo:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtNomeCompleto" value="<%=usuarios.getNomeCompleto()%>" /></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEmail" value="<%=usuarios.getEmail()%>" /></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" name="btnAlterar"
						value="Confirma Atualização" /></th>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>