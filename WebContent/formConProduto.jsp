<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Excluir Produtos</title>
</head>
<body>
	<h3 align="center">Excluir Produtos</h3>
	<jsp:useBean id="produto" scope="session"
		class="br.com.projeto.bean.Produto" />
	
		<center>
			<table>
			
				<tr>
					<td>Codigo</td>
					<td><input type="text" maxlength="60" size="60" name="txtCodigo"
						value="<%=produto.getCodigo()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Categoria:</td>
					<td><input type="text" maxlength="60" size="60" name="txtCategoria"
						value="<%=produto.getCategoria()%>" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>Estoque:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEstoque" value="<%=produto.getEstoque()%>" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>Nome:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtNome" value="<%=produto.getNome()%>" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>Preco Venda</td>
					<td><input type="text" maxlength="60" size="60" name="txtPrecoVenda"
						value="<%=produto.getPrecoVenda()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Foto Principal</td>
					<td><input type="text" maxlength="60" size="60" name="txtFotoPrincipal"
						value="<%=produto.getFotoPrincipal()%>"readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Foto Site:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtFotoSite" value="<%=produto.getFotoSite()%>"readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Descrição:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtDescricao" value="<%=produto.getDescricao()%>"readonly="readonly" /></td>
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