<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Lista de números (JSP tradicional) </h2>
	<ul>
		<%
			int[] numeros = {1, 2, 3, 4, 5};
			for (int i = 0; i < numeros.length; i++) {
		%>
			<li> Número: <%= numeros[i] %> </li>
			<ul> 
				<li> dos: <%= numeros[i] %> </li>
			</ul>
		<% 
			}
		%>
	</ul>
</body>
</html>