
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
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

        <jsp:include page="navbar.jsp" />
        
        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1> Admin Area<small>Add Trainer</small></h1>
                    </div>
                </div>
            </div>
        </header>
        
        <section id="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
        
                        <spring:form modelAttribute="trainer" action="${pageContext.request.contextPath}/trainer/post.htm" method="POST" cssClass="well" >
                            <table>
                                <tr>
                                    <td><spring:label path="firstName">First Name</spring:label></td>
                                    <td><spring:input path="firstName" /></td>
                                </tr>
                                <tr>
                                    <td><spring:label path="secondName">Last Name</spring:label></td>
                                    <td><spring:input path="secondName" /></td>
                                </tr>
                                <tr>
                                    <td><spring:label path="trainerSubject">Subject</spring:label></td>
                                    <td><spring:input path="trainerSubject" /></td>
                                </tr>
                                <tr>
                                    <input type="submit"> </input>
                                </tr>
                            </table>
                        </spring:form>
                        
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp" />              

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v5.9.0/js/all.js"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

    </body>
</html> 
