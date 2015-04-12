<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<title>CADASTRO DE USUARIOS</title>
	<style>
div {
	color: black;
	border: 1px solid black;
}

#cabec {background-color;
	height: 125px;
}

#conteudo {
	background-color: #c9e7ff;
	height: 1530px;
	width: 1350px;
}

#rodape {
	height: 24px;
	clear: both;
	border: 1px solid black;
}

#geral {
	width: 1350px;
	border: 1px solid black;
}
</style>
<body>

	<div id='geral'>

		<div id='cabec'>

			<img src="Nova pasta/kkk.png" width="1100" height="125">
		</div>

		<div id='conteudo' align="left">
			<font color="#FF0033"><u>
					<h2>
						<left>AÇÕES</left>
					</h2>
					<br>
				<br>
			</u> <!-- Formulário para cadastro de um novo usuário -->
				<table>
					Cadastro de categoria
					<tr>
						<td>Login do Novo Usuario:</td>
						<td><input type="text" name="login" id="login" maxlength="50">
							<br></td>
					</tr>
					<tr>
						<td>Senha:</td>
						<td><input type="text" name="senha" id="senha" maxlength="50">
							<br></td>
					</tr>
					<tr>
						<td>Nome completo:</td>
						<td><input type="text" name="nome" id="nome" maxlength="50">
							<br></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="text" name="email" id="email" maxlength="50">
							<br></td>
					</tr>
				</table> <input type="submit" value="Enviar Dados"> <input
				type="reset" value="Limpar Dados">
				</form>
		</div>
</body>
</html>