<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col">
                <a href="${pageContext.request.contextPath}/login">Inicio</a>
            </div>
            <div class="col">
                <a href="${pageContext.request.contextPath}/registerCategories">Registro de categorías</a>
            </div>
            <div class="col">
                <a href="${pageContext.request.contextPath}/registerProducts">Registro de productos</a>
            </div>
            <div class="col">
                <a href="${pageContext.request.contextPath}/registerUsers">Registro de usuarios</a>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados My App Form - Cesar Fernando Montealegre Correa &copy;
                    <%=displayDate()%></p>
            </div>
        </div>
    </div>
</footer>


<%!
    public String displayDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>