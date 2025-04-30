<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Ejemplo JSP tradicional</title>
</head>
<body>
    <h2>Lista de números (JSP tradicional)</h2>
    <ul>
        <%
            int[] numero = {1, 2, 3, 4, 5};
            for (int i = 0; i < numero.length; i++) {
        %>
            <li>Número: <%= numero[i] %></li>
        <%
            }
        %>
    </ul>
</body>
</html>
