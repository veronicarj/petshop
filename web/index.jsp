<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.*, persistence.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mb" class="manager.ManagerBean" scope="request"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/estilo.css" rel="stylesheet" media="screen">
    <title>Pet online - Produtos</title>
</head>
<body>
    <div align="center">
        <h2>Pet online - Produtos</h2></th>
        
        <form method="post" action="Controle?cmd=consulta" name="form1">
            <a href="listar.jsp">Listagem de Produtos</a> &nbsp;&nbsp;|&nbsp;&nbsp;
            Pesquisa por código:
            <select name="idProduto">
                <option value="0">Selecione o código</option>
                <c:forEach items="${mb.listaNameCod}" var="linha">
                    <option value="${linha.idProduto}">${linha.codigo}</option>
                </c:forEach>
            </select>	
            <input type="submit" value="OK">
        </form>
    </div>
</body>
</html>