<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Excluir Categoria</title>
</head>
<body>
	<h3 align="center">Excluir Categoria</h3>
	<jsp:useBean id="categoria" scope="session"
		class="br.com.projeto.bean.Categoria" />

	<form action="ServletCategorias?cmd=excluirCategoria" method="post">
		<center>
			<table>

				<tr>
					<td>Codigo:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCodigo" value="<%=categoria.getCodigo()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Categoria:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtCategoria" value="<%=categoria.getCategoria()%>" /></td>
				</tr>
				<tr>
					<td>Linha:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtLinha" value="<%=categoria.getLinha()%>" /></td>
				</tr>
				<tr>
					<td>Faixa Etaria</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtFaixaEtaria" value="<%=categoria.getFaixaEtaria()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" maxlength="60" size="60"
						name="btnExcluir" value="Confirma Exclusão" /></th>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>