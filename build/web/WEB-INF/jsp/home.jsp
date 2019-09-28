
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin Area | Trainers</title>
        <style><%@include file="/css/bootstrap.min.css"%></style>
        <style><%@include file="/css/style.css"%></style>
        <link rel="shortcut icon" href="https://i.ibb.co/NYjrFJC/keyboard.png" type="image/x-icon">  
    </head>

    <body>
        
    <!-- Navbar -->
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand"><img src="https://i.ibb.co/YfsyLGp/logo.png" alt=""></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a>Dashboard</a></li>
                        <li><a>Pages</a></li>
                        <li><a>Posts</a></li>
                        <li><a>Users</a></li>
                        <li><a>Courses</a></li>
                        <li class="active"><a>Trainers</a></li>
                        <li><a>Students</a></li>
                        <li><a>Assignments</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>Welcome</a></li>
                        <li><a>Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

    <!-- Header -->

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Trainers<small> Manage Trainers</small></h1>
                    </div>
                    <div class="col-md-2">
                        <div class="dropdown create">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="true">
                            Trainer Add Menu
                            <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a href="${pageContext.request.contextPath}/trainer/form.htm">Add Trainer</a></li>
                                <li><a>Add Course to a Trainer</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
              
        <section id="breadcrumb">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a>Dashboard</a></li>
                    <li class="active">Trainers</li>
                </ol>
            </div>
        </section>

  <!-- Main -->
        <section id="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">

                        <div class="list-group">
                            <a class="list-group-item active main-color-bg">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard
                            </a>
                            <a class="list-group-item"><span class="glyphicon glyphicon-list-alt"
                                aria-hidden="true"></span> Pages <span class="badge">1</span>
                            </a>
                            <a class="list-group-item"><span class="glyphicon glyphicon-pencil"
                                aria-hidden="true"></span> Posts <span class="badge">33</span></a>
                            <a class="list-group-item"><span class="glyphicon glyphicon-user"
                                aria-hidden="true"></span> Users <span class="badge">20</span></a>
                            <a class="list-group-item"><i class="fas fa-book"></i> Courses
                                <span class="badge">4</span>
                            </a>
                            <a class="list-group-item"><i class="fas fa-chalkboard-teacher"></i> Trainers <span
                                class="badge">${requestScope.trainers.size()}</span>
                            </a>
                            <a class="list-group-item"> <i class="fas fa-user-graduate"></i> Students <span
                                class="badge">40</span>
                            </a>
                            <a class="list-group-item"><i class="fas fa-file-alt"></i> Assignments <span
                                class="badge">81</span>
                            </a>
                        </div>

                        <div class="well">
                            <h4>Disk Space Used</h4>
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                    style="width: 60%;">
                                        60%
                                </div>
                            </div>
                            <h4>Bandwidth Used </h4>
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                    style="width: 40%;">
                                    40%
                                </div>
                            </div>
                        </div>
                    </div>
                            
                <div class="col-md-9">

          <!-- Trainers Table -->
                    <div class="panel panel-default">
                        
                        <div class="panel-heading main-color-bg">
                            <h3 class="panel-title">Trainers</h3>
                        </div>
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <input class="form-control" type="text" placeholder="Filter Trainers...">
                                </div>
                            </div>
                            <br>
        
                            <c:choose>
                                <c:when test = "${requestScope.trainers.size()>0}">

        
                                    <table class="table table-stripped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-center">#</th>
                                            <th scope="col" class="text-center">First Name</th>
                                            <th scope="col" class="text-center">Second Name</th>
                                            <th scope="col" class="text-center">Subject</th>
                                            <th scope="col" class="text-center">Update</th>
                                            <th scope="col"  class="text-center">Delete</th>
                                            </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var = "i" items = "${requestScope.trainers}">
                                        <tr>
                                            <th scope="row" class="text-center">${requestScope.trainers.indexOf(i)+1}</th>
                                            <td class="text-center" style="overflow:hidden"> <c:out value = "${i.getFirstName()}"/> </td>
                                            <td class="text-center" style="overflow:hidden"> <c:out value = "${i.getSecondName()}"/> </td> 
                                            <td class="text-center" style="overflow:hidden"> <c:out value = "${i.getTrainerSubject()}"/> </td> 
                                            <td class="text-center">  <a class="btn btn-default" href="${pageContext.request.contextPath}/trainer/Update.htm?id=${i.getTrainerId()}"> Update</a> </td>
                                            <td class="text-center"> <a class="btn btn-danger" href="${pageContext.request.contextPath}/trainer/Delete.htm?id=${i.getTrainerId()}" onclick="return confirm('Are you sure you want to delete the file?')"> Delete  </a> </td> 
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    </table> 

                                </c:when>
                                <c:otherwise>
                                    <span class="text-muted">No files uploaded</span>
                                </c:otherwise>                         
                            </c:choose>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <footer id="footer">
            <p><img src="https://i.ibb.co/YfsyLGp/logo.png"/> Copyright AdminCS, &copy; 2019</p>
        </footer>

       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v5.9.0/js/all.js"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

    </body>
</html> 


 