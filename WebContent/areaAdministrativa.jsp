<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<title>Administrativo</title>
	<style>
div {
	color: black;
	border: 1px solid black;
}

#cabec {background-color;
	height: 125px;
}

#lateral {
	background-color: #c9e7ff;
	height: 530px;
	width: 1350px;
	float: left;
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
</head>

<body>

	<div id='geral'>

		<div id='cabec'>



			<img src="Nova pasta/kkk.png" width="1100" height="125">
		</div>



		<div id='lateral' align="left">
			<font color="#FF0033"><u>
					<h2>
						<center>ÁREA ADMINISTRATIVA</center>
					</h2>
					<br>
				<br>
			</u>

				<center>
					<a href="ServletCategorias?cmd=listar"> Cadastro de Categorias</a> <br>
					<BR> <a href="ServletProdutos?cmd=listar"> Cadastro de Produtos</a> <br>
					<BR> <a href="ServletUsuarios?cmd=listar"> Cadastro de Usuários</a> <br>
					<BR>
				</center>
		</div>
</body>
</html>
