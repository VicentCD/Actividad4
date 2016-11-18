<%-- 
    Document   : index
    Created on : 02-nov-2016, 9:24:36
    Author     : alumno
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="entidad.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito Sencillo!</title>
    </head>
    <body>
        <h2>Compra de productos:</h2>
        <form method="POST" action="CarritoServlet">
            <select id="selector__producto" style="height:1.6em;">
                <%
                    ArrayList<Producto> listaAuxiliar = (ArrayList) request.getSession().getAttribute("listaProductos");
                    for (int i = 0; i < listaAuxiliar.size(); i++) {%>
                    <option value=p<%=i%>><%=listaAuxiliar.get(i).getNombre()%></option>
                <% } %>
            </select>
            <input type="submit" value="Añadir a Carrito">
        </form>
        <button style="margin-top: 10px">Finalizar Compra</button>
    </body>
</html>