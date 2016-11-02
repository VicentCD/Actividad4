<%-- 
    Document   : index
    Created on : 02-nov-2016, 9:24:36
    Author     : alumno
--%>
<%@page import="entidad.Producto"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="Carrito" scope="session" class="entidad.Producto" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito Sencillo!</title>
    </head>
    <body>
        <h2>Compra de productos:</h2>
        <form method="POST" action="">
            <select id="selector__producto" style="height:1.6em;">
                <%
                    HashMap listaAuxiliar = (HashMap) request.getSession().getAttribute("listaProductos");
                %>
                <option value="producto1" SELECTED></option>
            </select>
            <input type="submit" value="Añadir a Carrito">
        </form>
        <button action="" >Finalizar Compra</button>
    </body>
</html>
