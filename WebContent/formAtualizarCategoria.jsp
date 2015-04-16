<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualizar Categorias</title>
</head>
<body>
<body background='img/fundo.jpg'>
<div align="top" class="navbar navbar-inverse">

	<div class="row">
	
		<div class='col-md-1'>
			<img src='img/LOGOMINI2.png'>
		</div>


		<div align='center' class="col-md-10">
		
			<h4>
				<font color="white"> ATUALIZAR CATEGORIAS</font>
			</h4>
		</div>
		
 	</div>

	</div>

	<jsp:useBean id="categoria" scope="session"
		class="br.com.projeto.bean.Categoria" />
	
	<form action="ServletCategorias?cmd=atualizarCategoria" method="post">
		<center>
			<table>
			
				<tr>
					<td>Codigo: </td>
					<td><input type="text" maxlength="60" size="60" name="txtCodigo"
						value="<%=categoria.getCodigo()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Categoria: </td>
					<td><input type="text" maxlength="60" size="60" name="txtCategoria"
						value="<%=categoria.getCategoria()%>" /></td>
				</tr>
				<tr>
					<td>Linha: </td>
					<td><input type="text" maxlength="60" size="60"
						name="txtLinha" value="<%=categoria.getLinha()%>" /></td>
				</tr>
				<tr>
					<td>Faixa Etaria:   </td>
					<td><input type="text" maxlength="60" size="60"
						name="txtFaixaEtaria" value="<%=categoria.getFaixaEtaria()%>" /></td>
				</tr>
				<tr>
					<td colspan="2">
					<button class="btn btn-danger" type="submit" name="btnAtualizar">Confirma Atualização</button>
				
						
						</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>