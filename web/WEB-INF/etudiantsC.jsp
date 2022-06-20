<%-- 
    Document   : etudiantsC
    Created on : 17 juin 2022, 10:13:32
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/i18n/defaults-*.min.js"></script>

    </head>
    
    <body style="background-color: #eee;">
     <%@include file="menu.jsp"%>
     <%@include file="menuM.jsp"%> 
    <section style="background-color: #eee;">
    <form action="Cetudiants" method="POST">
  <div class="container py-5">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item active" aria-current="page">Création d'un étudiant</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Nom</p>
              </div>
              <div class="col-sm-9">
                <input name="nom" id="nom" type="text" class="form-control">
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Prenom</p>
              </div>
              <div class="col-sm-9">
                <input name="prenom" id="prenom" type="text" class="form-control">
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Adresse mail</p>
              </div>
              <div class="col-sm-9">
                <input name="mail" id="mail" type="text" class="form-control">
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Mot de passe</p>
              </div>
              <div class="col-sm-9">
                <input name="mdp" id="mdp" type="text" class="form-control">
              </div>
            </div>
            <hr>
          </div>
        </div>
      </div>
    </div>
  </div>
    <h5><center>Dans quelle(s) session(s) appartient l'étudiant?</center></h5>
    <div class="d-flex justify-content-center mb-2">
                <%-- Select a Category:&nbsp; --%>
                    <select name ="pickersessions" class="selectpicker" multiple data-live-search="true">
                        <c:forEach items="${listSessions}" var ="session" >
                            <option value="${session}"> ${session} </option>     
                        </c:forEach>
                    </select>
    </div>
    <div class="d-flex justify-content-center mb-2">
    <button type="submit" class="btn btn-primary">Ajouter l'étudiant</button>
    </div>
    
</form>

</section>
    </body>
</html>
