<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Atualizar Produto</title>
</head>
<body>
	<center>
		<table border="1">
			<form action="ServletProdutos?cmd=atuProdutos" method="post">
				<tbody>
					<tr>
						<th colspan="2"><h2>Atualizar Produto</h2></th>
					</tr>
					<tr>
						<td>Codigo:</td>
						<td><input type="text" name="txtCodigo" size="10" maxlenght="10" >
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Atualizar"></td>
					</tr>
				</tbody>
			</form>
		</table>
	</center>
</body>
</html>