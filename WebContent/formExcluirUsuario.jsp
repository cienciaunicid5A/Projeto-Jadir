<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excluir Usu�rio</title>
</head>
<body background='img/fundo.jpg'>


	<title>Excluir Usu�rio</title>
</head>

	<div align="top" class="navbar navbar-inverse">

	<div class="row">
	
		<div class='col-md-1'>
			<img src='img/LOGOMINI2.png'>
		</div>


		<div align='center' class="col-md-10">
		
			<h4>
				<font color="white"> EXCLUIR USU�RIO</font>
			</h4>
		</div>
		
 	</div>

	</div>
	<jsp:useBean id="usuarios" scope="session"
		class="br.com.projeto.bean.Usuarios" />
	
	<form action="ServletUsuarios?cmd=excluirUsuario" method="post">
		<center>
			<table >
			
				<tr>
					<td>Login:</td>
					<td><input type="text" maxlength="60" size="60" name="txtLogin"
						value="<%=usuarios.getLogin()%>" /></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="text" maxlength="60" size="60" name="txtSenha"
						value="<%=usuarios.getSenha()%>" style="margin-top: 5px"  /></td>
				</tr>
				<tr>
					<td>Nome Completo:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtNomeCompleto" value="<%=usuarios.getNomeCompleto()%>" style="margin-top: 5px"  /></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEmail" value="<%=usuarios.getEmail()%>" style="margin-top: 5px"  /></td>
				</tr>
				<tr>
					<td colspan="2"><input class="btn btn-danger" type="submit" maxlength="60" size="60"
						name="btnExcluir" value="Confirma Exclus�o" style="margin-top: 5px"  /></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>