
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/trainer/form.htm">Insert Trainer</a>
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
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        </body>
    </html>
