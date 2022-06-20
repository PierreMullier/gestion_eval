<%-- 
    Document   : evaluations
    Created on : 17 juin 2022, 14:05:35
    Author     : stagiaire
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Evaluation</title>
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
    
      <body>
        <%@include file="menu.jsp"%>   
        <%@include file="menuEval.jsp"%>
<section style="background-color: #eee;">
    <form action="eval" method="POST">
    <div class="container py-5">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item active" aria-current="page">Création d'une évaluation</li>
          </ol>
        </nav>
      </div>
    </div>
    
    <div class="row">
      <div class="col-lg-8" >
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3" >
                <p class="mb-0">Description:</p>
              </div>
              <div class="col-sm-9">
                <input name="Description" id="nom" type="text" class="form-control">
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Date:</p>
              </div>
              <div class="col-sm-9">
                <input name="Date" id="date" type="text" class="form-control">
              </div>
            </div>        
          </div>
        </div>
      </div>
    </div>
    </div>

    <h5><center> Sélectionner les modules concernés :</center></h5>
    <div class="d-flex justify-content-center mb-2">
                <%-- Select a Category:&nbsp; --%>
                    <select name ="pickerModule" class="selectpicker" multiple data-live-search="true">
                        <c:forEach items="${listModules}" var ="module" >
                            <option value="${module}"> ${module} </option>     
                        </c:forEach>
                    </select>
    </div>
    <h5><center> Sélectionner la session concernée :</center></h5>
     <div class="d-flex justify-content-center mb-2">
                <%-- Select a Category:&nbsp; --%>
                    <select name ="pickerSession" class="selectpicker" multiple data-live-search="true">
                        <c:forEach items="${listSessions}" var ="session" >
                            <option value="${session}"> ${session} </option>     
                        </c:forEach>
                    </select>
    </div>
    <div class="d-flex justify-content-center mb-2">
        <button type = "submit" class="btn btn-primary">Créer l'évaluation</button>
        ${msg}
    </div>
    <br>
    </form>
  </section>  
  </body>

</html>



