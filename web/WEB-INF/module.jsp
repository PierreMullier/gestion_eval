<%-- 
    Document   : module
    Created on : 17 juin 2022, 10:00:31
    Author     : stagiaire
--%>

 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Création de module</title>
        <link rel="stylesheet" href="style.css">
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
     <%@include file="menuModle.jsp"%>  
           
    <center>
    <form action="module" method="POST" style = "width:800px">    
    <div class="form-group" style="text-align: center">
    <label style="font-size:25px" for="exampleFormControlTextarea1">Module à ajouter</label>
    <textarea name="nomModule" class="form-control z-depth-1" id="exampleFormControlTextarea1" rows="3" cols ="2" placeholder="Ajouter le module ici..."></textarea>
  </div>
    
    <button type="submit" class="btn btn-primary">Créer</button>
    <p style="color:red">${msg}</p>
     

    </form>
    </center>
    </body>
</html>
 