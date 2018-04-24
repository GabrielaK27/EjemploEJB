<%--paso1: declarar el servicio--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="modelo.ServicioLocal"%>
<%! ServicioLocal servicio;%>
<%--paso 2: Crear el contexto--%>
<%
    InitialContext ctx=new InitialContext();
    servicio=(ServicioLocal)ctx.lookup("java:global/EjemploSingleton/Servicio!modelo.ServicioLocal");
%>
<%-- paso 3: hacer que el servicio sea visible para El y JSTL--%>
<c:set var="servicio" scope="page" value="<%=servicio%>"/>

<%@include file="templates/header.jsp" %>

<div class="row">
    <div class="col s6 offset-s3">
        <div class="card-panel">
            <p class="center-align">Ingresar Productos Nuevos</p>
            <form action="control.do" method="post">
            <div class="input-field col s6">
                <input id="nombre" type="text" class="validate" name="nombre">
          <label for="nombre">Nombre del Producto:</label>
        </div>
                <div class="input-field col s6">
                    <input id="precio" type="number" class="validate" name="precio">
          <label for="precio">Precio:</label>
        </div>
                <button type="submit" class="btn right">Guardar</button>
         </form>
        <table class="border highlight">
            <tr>
                <th>Nombre</th>
                <th>Precio</th>
            </tr>
            <c:forEach items="${servicio.productos}" var="p">
                <tr>
                    <td>${p.nombre}</td>
                    <td>${p.precio}</td>
                </tr>
            </c:forEach>
        </table>
            </div>
    </div>
</div>

<%@include file="templates/footer.jsp" %>