<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Excluir Usuarios</title>
</head>
<body>
	<h3 align="center">Excluir Usuarios</h3>
	<jsp:useBean id="usuarios" scope="session"
		class="br.com.projeto.bean.Usuarios" />
	
	<form action="ServletUsuarios?cmd=excluirUsuario" method="post">
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
						value="<%=usuarios.getSenha()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Nome Completo:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtNomeCompleto" value="<%=usuarios.getNomeCompleto()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEmail" value="<%=usuarios.getEmail()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" maxlength="60" size="60"
						name="btnExcluir" value="Confirma Exclusão" /></th>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>