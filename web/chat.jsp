<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="Chat" />
    </jsp:include>
</head>

<body onload="getStatus()">
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Chat" />
</jsp:include>
<main>
    uw Status: <div id="status"></div>
    <table>
        <thead>
        <tr>
            <th>Email</th>
            <th>status</th>
        </tr>
        </thead>
        <tbody  id="friends"></tbody>
    </table>

    <input id="newStatus" type="text">
    <input type="button" id="submit" value="verander status">
    <input type="button" id="friend" value="Voeg nieuwe vriend toe">

    <footer id="footer"></footer>
</main>
<script type="text/javascript" src="js/status.js"></script>
<script type="text/javascript" src="js/friends.js"></script>
</body>
</html>