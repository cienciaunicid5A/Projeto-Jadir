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
</head>

<body>

	<div id='geral'>
		<div id='cabec'>

			<img src="Nova pasta/kkk.png" width="1100" height="125">
		</div>

		<div id='conteudo' align="left">
			<font color="#FF0033"><u>
					<h2>
						<center>AÇÕES</center>
					</h2>
					<br>
				<br>
			</u> <!-- Formulário para alteração de um produto -->
				<table>
					Alterando o cadastro de um produto:
					<tr>
						<td>Código da produto que deseja alterar:</td>
						<td><input type="text" name="codigo" id="codigo"
							maxlength="10"></td>
					</tr>
					<tr>
						<td>Nome do produto:</td>
						<td><input type="text" name="nome" id="nome" maxlength="50">
							<br></td>
					</tr>
					<tr>
						<td>Categoria:</td>
						<td><input type="text" name="categoria" id="categoria"
							maxlength="50"> <br></td>
					</tr>
					<tr>
						<td>Estoque:</td>
						<td><input type="text" name="estoque" id="estoque"
							maxlength="50"> <br></td>
					</tr>
					<tr>
						<td>Preço de venda:</td>
						<td><input type="text" name="precovenda" id="precovenda"
							maxlength="50"> <br></td>
					</tr>
				</table> <input type="submit" value="Enviar Dados"> <input
				type="reset" value="Limpar Dados">
				</form> <!-- Recebendo os novos dados do produto--> <?php
$codigo = $_POST['codigo']; 
$nome = $_POST['nome']; 
$categoria = $_POST['categoria'];
$estoque = $_POST['estoque'];
$precovenda = $_POST['precovenda'];

mysql_connect("localhost","root","");
mysql_select_db("projeto") or 
die("ERRO MYSQL:" . mysql_error());
$sql="SELECT * FROM usuarios ";
					
$rs=mysql_query($sql)  or 
die("ERRO MYSQL:" . mysql_error());

mysql_query("UPDATE produtos SET nome='".$nome."', categoria='".$categoria."', estoque = '".$estoque."', precovenda ='".$precovenda."' WHERE codigo='".$codigo."'");

?>

				<table>
					Cadastrando um novo produto:
					<tr>
						<td>Código da produto incluir:</td>
						<td><input type="text" name="codigo" id="codigo"
							maxlength="10"></td>
					</tr>
					<tr>
						<td>Nome do produto:</td>
						<td><input type="text" name="nome" id="nome" maxlength="50">
							<br></td>
					</tr>
					<tr>
						<td>Categoria:</td>
						<td><input type="text" name="categoria" id="categoria"
							maxlength="50"> <br></td>
					</tr>
					<tr>
						<td>Estoque:</td>
						<td><input type="text" name="estoque" id="estoque"
							maxlength="50"> <br></td>
					</tr>
					<tr>
						<td>Preço de venda:</td>
						<td><input type="text" name="precovenda" id="precovenda"
							maxlength="50"> <br></td>
					</tr>
				</table> <input type="submit" value="Enviar Dados"> <input
				type="reset" value="Limpar Dados">
				</form> <!-- Recebendo as informações do formulário --> <?php
$codigo = $_POST['codigo']; 
$nome = $_POST['nome']; 
$categoria = $_POST['categoria']; 
$estoque = $_POST['estoque'];
$preco = $_POST['preco'];

mysql_connect("localhost","root","");
mysql_select_db("projeto") or 
die("ERRO MYSQL:" . mysql_error());
$sql="SELECT * FROM produtos ";
					
$rs=mysql_query($sql)  or 
die("ERRO MYSQL:" . mysql_error());

mysql_query("Insert into produtos (codigo, nome, categoria, estoque, precovenda) values ('".$codigo."','".$nome."','".$categoria."','".$estoque."','".$preco."')");

?>
		</div>
</body>
</html>