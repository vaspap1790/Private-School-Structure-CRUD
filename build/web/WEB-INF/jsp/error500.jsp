
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
                        <h1> Admin Area <small>500 Internal Server Error</small></h1>
                    </div>
                </div>
            </div>
        </header>

        <section id="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">

                        <img src="https://www.elegantthemes.com/blog/wp-content/uploads/2016/03/500-internal-server-error-featured-image-1.png">

                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp" />              

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v5.9.0/js/all.js"></script>
        <script><%@include file="/js/custom.js"%></script>
        <script><%@include file="/js/bootstrap.min.js"%></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

    </body>
</html> 