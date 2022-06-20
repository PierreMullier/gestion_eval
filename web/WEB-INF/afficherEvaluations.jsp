<%-- 
    Document   : afficherEvaluations
    Created on : 20 juin 2022, 10:07:41
    Author     : stagiaire
--%>

 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste des évaluations des gens</title>
        <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
    </head>
    <body>
        <%@include file="menu.jsp"%>
        <%@include file="menuEval.jsp"%>
        <h1>Voici la liste des évaluations existantes: </h1>
        <br>
       
      <table class="table">

<tr>
    <th scope="col">Id</th>
    <th scope="col">Description</th>
    <th scope="col">Date</th>

 

</tr>

<tbody>
<c:forEach items="${listEvaluations}" var ="eva">
<tr>
<td>${eva.idEvaluations}</td>
<td>${eva.description}</td>
<td>${eva.date}</td>

 

</tr>
</c:forEach>
</tbody>
</thead>
</table> 
       
    </body>
    </body>
</html>