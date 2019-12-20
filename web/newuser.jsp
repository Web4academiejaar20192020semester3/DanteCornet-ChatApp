<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<main>
    <c:if test="${errors.size()>0 }">
        <div class="danger">
            <ul>
                <c:forEach var="error" items="${errors }">
                    <li>${error }</li>
                </c:forEach>
            </ul>
        </div>
    </c:if>
    <form method="post" action="Controller?action=RegisterForm">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="" required class="form-control">
        </div>
        <div class="form-group">
            <label for="Fname">First name:</label>
            <input type="text" id="Fname" name="Fname" value="" required class="form-control">
        </div>
        <div class="form-group">
            <label for="email">Your email </label>
            <input type="text" id="email" name="email" value="" required class="form-control">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" value="" required class="form-control">
        </div>
        <div class="form-group">
            <label for=" passwordAgain">Repeat password:</label>
            <input type="password" id=" passwordAgain" name=" passwordAgain" value="" required class="form-control">
        </div>
        <div class="form-group">
            <input type="submit" id="registerButton" value="Register">
        </div>
    </form>
</main>
<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
</body>
</html>
