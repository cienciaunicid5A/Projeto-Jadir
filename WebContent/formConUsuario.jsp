<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Consultar Usuario</title>
<link rel="stylesheet" type="text/css" href="estilo.css" />
<title>Consultar Usuario</title>
</head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Usu�rio</title>
</head>
<body background='img/fundo.jpg'>

	<div align="top" class="navbar navbar-inverse">

		<div class="row">

			<div class='col-md-1'>
				<img src='img/LOGOMINI2.png'>
			</div>


			<div align='center' class="col-md-10">

				<h4>
					<font color="white"> CONSULTAR USU�RIO</font>
				</h4>
			</div>

		</div>

	</div>
	<jsp:useBean id="usuarios" scope="session"
		class="br.com.projeto.bean.Usuarios" />
	
		<center>
			<table>
			
				<tr>
					<td>Login:</td>
					<td><input type="text" maxlength="60" size="60" name="txtLogin"
						value="<%=usuarios.getLogin()%>" readonly="readonly" style="margin-top: 5px" /></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="text" maxlength="60" size="60" name="txtSenha"
						value="<%=usuarios.getSenha()%>" readonly="readonly" style="margin-top: 5px" /></td>
				</tr>
				<tr>
					<td>Nome Completo:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtNomeCompleto" value="<%=usuarios.getNomeCompleto()%>" readonly="readonly" style="margin-top: 5px" /></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEmail" value="<%=usuarios.getEmail()%>" readonly="readonly" style="margin-top: 5px" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><a href="index.jsp">
			<button class="btn btn-danger" type="button" style="margin-top: 5px">Pagina inicial</button>
		</a></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>