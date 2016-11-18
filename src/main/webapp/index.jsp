<%-- 
    Document   : index
    Created on : 02-nov-2016, 9:24:36
    Author     : alumno
--%>
<%@page import="java.text.DecimalFormat"%>
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
            <select name="selector_producto" style="height:1.6em;">
                <%
                    ArrayList<Producto> listaAuxiliar = (ArrayList) request.getSession().getAttribute("listaProductos");
                    for (int i = 0; i < listaAuxiliar.size(); i++) {%>
                <option><%=listaAuxiliar.get(i).getNombre()%></option>
                <% } %>
            </select>
            <input type="submit" value="Añadir a Carrito">
        </form>

        <fieldset style="margin-top: 10px">
            <legend>Compra Realizada</legend>
            <table style="border: 1px solid black">
                <tr>
                    <td style="padding-right: 20px">Nombre del Producto</td>
                    <td style="padding-right: 10px">Cantidad</td>
                    <td>Precio</td>
                </tr>
                <%
                    ArrayList<Producto> listaCarritoProductos = (ArrayList) session.getAttribute("listaProductos");
                    for (Producto p : listaCarritoProductos) {
                        String nombre_producto = p.getNombre();
                        Integer cantidad_producto = p.getCantidad();
                        Double precio_producto = p.getPrecio();
                        DecimalFormat df = new DecimalFormat("#.#####");
                        if (cantidad_producto != 0) {
                %> 
                <tr>
                    <td><%=nombre_producto%></td>
                    <td style="text-align: center"><%=cantidad_producto%></td>
                    <td><%=df.format(precio_producto * cantidad_producto)%>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </fieldset>

        <button onclick="location='RealizarCompra'" style="margin-top: 10px">Finalizar Compra</button>
    </body>
</html>