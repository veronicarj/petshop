<%@page import="model.*, persistence.*, control.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mb" class="manager.ManagerBean" scope="request"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href= "css/estilo.css" rel="stylesheet" type="text/css">
    <title>Modulo: Produtos</title>
</head>
<body>
    <div align="center">
        <h2>Pet online - Produtos</h2>
        <hr width="70%"/>
        <span style="color:red;">${msg}</span>
        <table width = '700' border='0'>
            <tr width = '%100'>
                <th width = '%20'>Foto</th>
                <th width = '%10'>Nome</th>
                <th width = '%10'>Código</th>
                <th width = '%10' >Descrição</th>
                <th width = '%10'>Preço</th>
                <th width = '%10'>Categoria</th>        
                <th width = '%20' colspan = '2'>Excluir</th>
            </tr>               
            <c:forEach items="${mb.lista}" var="linha">
                <tr>
                    <td width="%10"><img src ="/petshop/imagem/${linha.foto}" width="80%" height="80"></td>
                    <td width="%10" class="gridCampo">${linha.nome}</td>
                    <td width="%10" class="gridCampo">${linha.codigo}</td>
                    <td width="%10" class="gridCampo">${linha.descricao}</td>
                    <td width="%10" class="gridCampo">${linha.preco}</td>
                    <td width="%10" class="gridCampo">${linha.categoria}</td>
                    <td width="%20" colspan ="2"><a href="Controle?cmd=excluir&cod=${linha.idProduto}">X</a></td>
                </tr>
            </c:forEach>
        </table>
        <hr width="70%"/>
        <a href="index.jsp">Voltar</a>
    </div>
</body>
</html>
