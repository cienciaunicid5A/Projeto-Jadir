<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.projeto.bean.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Layout Home Page</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">
</head>

<body>

	<div id='geral'>

		<!-- Logo do Site na Div -->
		<div id='cabec'>


			<!-- Cadastro administrador -->

			<table align="right" id="adm">
				<form action="ServletUsuarios?cmd=con" method="post">
					<tr>
						<td height="108">
							<fieldset>

								<legend>Acesso Adm</legend>
								Login <input type="text" name="txtLogin" size="10"
									maxlenght="10"><br> Senha <input type="password"
									name="txtSenha" size="10" maxlenght="10"><br> <input
									type="submit" value="Entrar"></a>

							</fieldset>
						</td>
					</tr>
				</form>
			</table>
			<img src="img/kkk.png" width="1100" height="125">
		</div>
		<!-- Menu das categorias -->
		<div>
			<ul>
				<li>Categoria</li>
				<%
					List<Categoria> lista = new ArrayList<Categoria>();
				%>
				<%
					lista = (ArrayList) request.getAttribute("categoriaList");
				%>
				<%
					for (Categoria a : lista) {
				%>
				<li><%=a.getCategoria()%></li>
				<%
					}
				%>
			</ul>
		</div>

	</div>

	<!-- Fotos Dos produtos -->
	<div id='conteudo'></div>

	<?php
					$sql = 'SELECT * FROM produtos';
					if( isset($_GET['categoria']) )
						$sql = $sql . ' WHERE '
						die('Categoria enviada:' . $_GET['categoria']);					
				?>
	<?php
					$sql='SELECT * FROM produtos';
					
					if( isset($_GET['categoria']) )
					{
						$cat = $_GET['categoria'];
						$sql = $sql . " WHERE categoria='$cat' "; 
						//die($sql);
					}
					$rsProdutos = mysql_query($sql) or
						die("ERRO MYSQL" . mysql_error() );
						
					$totLinhas = mysql_num_rows($rsProdutos) or
						die("ERRO MYSQL" . mysql_error() );
					
					for($n=0 ; $n<$totLinhas ; $n++)
					{
						$imagem = mysql_result($rsProdutos, $n, 'fotoSite');
						$nome =  mysql_result($rsProdutos, $n, 'nome');
						$preco=  mysql_result($rsProdutos, $n, 'precoVenda');
						echo "<div class='fotos'>";
						echo "<img src='imgs/$imagem'> <br>";
						echo $nome . '<br>';
						echo 'R$ ' . $preco;
						echo '</div>';
					}
				?>

	<!-- Rodap� -->
	<div id='rodape'>
		<img src="img/rodape.jpg">

	</div>

</body>
</html>