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
        <h2>Pet online - Produtos</h2>
    
        <%  
        Produto p = (Produto) request.getAttribute("produto");

        try{
            if(p == null){
                    out.print("<br/>Não encontrado<br/>");
            }else{               
        %>
        <hr width="70%"/>
        <table width = '700' border='0'>
            <tr width = '%100'>
                <th width = '%20'>Foto</th>
                <th width = '%10'>Nome</th>
                <th width = '%10'>Código</th>
                <th width = '%10' >Descrição</th>
                <th width = '%10'>Preço</th>
                <th width = '%10'>Categoria</th>
            </tr>             
            <tr>
                <td width="%10"><img src ="/petshop/imagem/<%=p.getFoto()%>" width="80%" height="80"></td>
                <td width="%10" class="gridCampo"><%=p.getNome()%></td>
                <td width="%10" class="gridCampo"><%=p.getCodigo()%></td>
                <td width="%10" class="gridCampo"><%=p.getPreco()%></td>
                <td width="%10" class="gridCampo"><%=p.getDescricao()%></td>
                <td width="%10" class="gridCampo">
                    <%

                    int cat = p.getCategoria();

                    if(cat == 1){
                        out.print("Perfume");
                    }
                    if(cat == 2){
                        out.print("Cama");
                    }
                    if(cat == 3){
                        out.print("Ração");
                    }
                    if(cat == 4){
                        out.print("Remédio");
                    }
                    if(cat == 5){
                        out.print("Acessórios");
                    }

                    %>
                </td>
            </tr> 
        </table>                
        <%
            }
        }catch(Exception e){
             out.print("<br/>Error: " + e.getMessage());
        }
        %>
        <hr width="70%"/>
        <a href="index.jsp">Voltar</a>    
    </div>
</body>        
</html>