<%-- 
    Document   : factura
    Created on : 18-nov-2016, 10:00:03
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
        <title>Factura del pedido</title>
    </head>
    <body>
        <fieldset>
            <legend style="font-size: xx-large">Factura</legend>
            <table>
                <tr>
                    <td style="padding-right: 20px">Nombre del Producto</td>
                    <td style="padding-right: 10px">Cantidad</td>
                    <td>Precio</td>
                </tr>
                <%

                    ArrayList<Producto> listaProductosFactura = (ArrayList) session.getAttribute("listaFactura");
                    double precioFactura = (Double) session.getAttribute("precioFinal");
                    DecimalFormat df = new DecimalFormat("#.#####");
                    for (Producto p : listaProductosFactura) {
                %>
                <tr>
                    <td><%=p.getNombre()%></td>
                    <td style="text-align: center"><%=p.getCantidad()%></td>
                    <td><%=df.format(p.getPrecio()*p.getCantidad())%></td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <td>_______________________________</td>
                </tr>
                <tr>
                    <td><%=df.format(precioFactura)%></td>
                </tr>
            </table>
        </fieldset>
    </body>
</html>
