<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Layout Home Page</title>
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
	width: 150px;
	float: left;
}

#conteudo {
	background-color: #c9e7ff;
	height: 530px;
	width: 1196px;
	float: right;
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

.fotos {
	width: 165px;
	margin-right: 5px;
	height: 130px;
	border: 1px dotted red;
	background-color: orange;
	text-align: center;
	float: left;
	margin-top: 5px;
}
</style>
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
							Login <input type="text" name="txtLogin" size="10" maxlenght="10"><br>
							Senha <input type="password" name="txtSenha" size="10"maxlenght="10"><br> 
							<input type="submit" value="Entrar"></a>

						</fieldset>
					</td>
				</tr>
				</form>
			</table>

			<img src="img/kkk.png" width="1100" height="125">
		</div>



		<!-- Menu das categorias -->
		<div id='lateral' align="left">
			<font color="#FF0033"><u>
					<h2>Categorias</h2>
					<br>
				<br>
			</u> <a href='index.jsp'> Todas </a> <br> <?php
			public List toCategorias() throws Exception {
			try {
				conn = this.conn;
				ps = conn.prepareStatement("SELECT * FROM produtos ORDER BY categoria");
				rs = ps.executeQuery();
				List<Cate> list = new ArrayList<Cate>();
				while (rs.next()) {
					
					String categoria = rs.getString("categoria");
					
					list.add(new Cate(categoria));
				}
				return list;
			} catch (SQLException sqle) {
				throw new Exception(sqle);
			} finally {
				ConnectionFactory.closeConnection(conn, ps, rs);
			}
		}
				?> <!-- Colocar link de cada categoria --> </font>


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

	</div>
</body>
</html>