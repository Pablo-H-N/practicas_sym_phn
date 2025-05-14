<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<head>
<% String user = (String)request.getAttribute("user"); 
   String pass = (String)request.getAttribute("pass"); 
   boolean check = (boolean)request.getAttribute("check"); 
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <ul> -->
<%-- El codigo dentro de <% %> sera codigo java, para pintar el valor de una usaremos <%= %> --%>
<%-- <%for(int i=0;i<=10;i++){%>  --%>
<%-- 	<li>El valor de la variable es <%=i%></li> --%>
<%-- <%}%> --%>
<!-- </ul> -->

<form action="${pageContext.request.contextPath}/MiServlet" method="post" class="row g-3">
  <div class="col-md-3">
    <label for="inputUser" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputUser" name="inputUser">
  </div>
  <div class="col-md-3">
    <label for="inputPassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword" name="inputPassword">
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Enviar</button>
  </div>
</form>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">User</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
    <tr class="table <%if(check==true){%>table-success<%}else{%>table-danger<%}%>">
      <th scope="row">1</th>
      <td><%=user!=null?"El usuario es: " + user:""%></td>
      <td><%=pass!=null?"El pass es: " + pass:""%></td>
    </tr>
  </tbody>
</table>
<h1></h1>
<h1></h1>
</body>
</html>