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
        <tbody id="friends"></tbody>
    </table>

    <input id="newStatus" type="text">
    <input type="button" id="submit" value="verander status">
    <input type="button" id="friend" value="Voeg nieuwe vriend toe">

    <div class="form-popup" id="jan@ucll.be0">
        <form action="" class="form-container">
            <h1>Chat</h1>

            <label><b>jan@ucll.be</b></label>
            <div class="jand"></div>
            <textarea class="jan" placeholder="Type message.." name="msg" required></textarea>

            <button  type="button" class="btn" onclick="postMessages('jan')">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm('jan@ucll.be')">Close</button>
        </form>
    </div>

    <div class="form-popup" id="an@ucll.be0" >
        <form action="" class="form-container">
            <h1>Chat</h1>

            <label><b>an@ucll.be</b></label>
            <div class="and"></div>
            <textarea class="an" placeholder="Type message.." name="msg" required></textarea>
            <button  type="button" class="btn" onclick="postMessages('an')">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm('an@ucll.be')">Close</button>
        </form>
    </div>

    <div class="form-popup" id="bib@ucll.be0">
        <form class="form-container">
            <h1>Chat</h1>

            <label><b>bib@ucll.be</b></label>

            <div class="bibd"></div>
            <textarea class="bib" placeholder="Type message.." name="msg" required></textarea>
            <button type="button" class="btn" onclick="postMessages('bib')">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm('bib@ucll.be')">Close</button>
        </form>
    </div>

    <footer id="footer">

    </footer>
</main>
<script type="text/javascript" src="js/status.js"></script>
<script type="text/javascript" src="js/friends.js"></script>
<script type="text/javascript" src="js/chat.js"></script>
</body>
</html>