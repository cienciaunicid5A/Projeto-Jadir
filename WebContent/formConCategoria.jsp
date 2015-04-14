<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="estilo.css" />
<title>Consulta Categorias</title>
</head>
<body>
	<h2 align="center">Consulta Categorias</h2>
	<jsp:useBean id="categoria" scope="session"
		class="br.com.projeto.bean.Categoria" />
	
	<form>
		<center>
			<table>
				<tr>
					<tr>
					<td>Codigo:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCodigo" value="<%=categoria.getCodigo()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Categoria:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCategoria" value="<%=categoria.getCategoria()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Linha:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtLinha" value="<%=categoria.getLinha()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Faixa Etaria</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtFaixaEtaria" value="<%=categoria.getFaixaEtaria()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><a href="index.jsp">Página
							Principal</a></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>