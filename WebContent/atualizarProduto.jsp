<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background='img/fundo.jpg'>


	<title>Administrativo</title>
</head>

<body>

	<div align="top" class="navbar navbar-inverse">

	<div class="row">
	
		<div class='col-md-1'>
			<img src='img/LOGOMINI2.png'>
		</div>


		<div align='center' class="col-md-10">
		
			<h4>
				<font color="white"> ALTERAR PRODUTO</font>
			</h4>
		</div>
		
 	</div>

	</div>


<center>
		<table class="table table-condensed">
			<form action="ServletpProdutos?cmd=atuProdutos" method="post">
				<tbody>
					<tr bgcolor='white' >
						<td><b>Codigo:</b> <input type="text" name="txtCodigo" size="10"
							maxlenght="10"/> 
							<input type="submit" value="Alterar">
						</td>
					</tr>

			</form>
		</table>
	</center>
	
	
</body>
</html>
