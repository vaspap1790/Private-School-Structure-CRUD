
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Insert Trainer</title>
    </head>
    <body>
        <spring:form modelAttribute="trainer" action="${pageContext.request.contextPath}/trainer/post.htm" method="POST">
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
                <input type="submit"> </input>
            </table>
        </spring:form>
    </body>
</html>
