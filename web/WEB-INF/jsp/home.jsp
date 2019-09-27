
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>

    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <style><%@include file="/css/style.css"%></style>
        <link rel="shortcut icon" href="https://i.ibb.co/NYjrFJC/keyboard.png" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Trainers Admin</title>
    </head>

    <body>
        <div id="page-container">
            <div class="bg">

                <h1 class="display-4">Coding School
                    <br><span class="text-muted">Trainers Administration Page</span>
                </h1>

                <div class="page">

                    <div class="container border up col-8" id="main">

                        <div class="row">
                            <div class="col-4">
                                <a href="${pageContext.request.contextPath}/trainer/form.htm">Insert Trainer</a>
                            </div>
                            <div class="col-8 pull-right">
                                <img src='<c:url value="https://www.freeiconspng.com/uploads/upload-icon-31.png"></c:url>' width="110" class="float-right"/> 
                                </div>
                        </div>

                    </div>

                    <div class="col-12" id="large">
                            
                        <div class="col-2" id="empty">       
                        </div>

                        <div class="container border down col-8" id="main">

                            <h5>Current Stuff</h5>
                            <c:choose>
                                <c:when test = "${requestScope.trainers.size()>0}">

        
                                    <table class="table table-stripped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-center">#</th>
                                            <th scope="col" class="text-center">First Name</th>
                                            <th scope="col" class="text-center">Second Name</th>
                                            <th scope="col" class="text-center">Subject</th>
                                            <th scope="col" class="text-center">Download</th>
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
                                            <td class="text-center">  <a href="${pageContext.request.contextPath}/trainer/Update.htm?id=${i.getTrainerId()}"> Update</a> </td>
                                            <td class="text-center"> <a href="${pageContext.request.contextPath}/trainer/Delete.htm?id=${i.getTrainerId()}" onclick="return confirm('Are you sure you want to delete the file?')"> Delete  </a> </td> 
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
                            
                        <div class="col-2" id="icons">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <a class="fb-ic" href="">
                                            <i class="fab fa-facebook-f fa-md fa-3x"> </i>
                                        </a>
                                        <a class="tw-ic" href="">
                                            <i class="fab fa-twitter fa-md fa-3x"> </i>
                                        </a>
                                        <a class="ins-ic" href="">
                                            <i class="fab fa-instagram fa-md fa-3x"> </i> 
                                        </a>
                                        <img id="logo" src="https://i.ibb.co/1n01Zsm/logo.png">
                                    </div>
                                </div>
                            </div>  
                        </div>
                        
                        
                    </div>
                                
                </div> 
                                
            </div>
        </div>
                                
        <footer class="page-footer" id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <span>© 2019 Copyright: Coding School</span> <img id="footer_logo" src="https://i.ibb.co/NYjrFJC/keyboard.png"/>
                    </div>
                </div>
            </div>  
        </footer>

       
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>      
            <script src="https://kit.fontawesome.com/52e2938880.js" crossorigin="anonymous"></script>
            <script src="js/custom.js" type="text/javascript"></script>
        

    </body>
</html>