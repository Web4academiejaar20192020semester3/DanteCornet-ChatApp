<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header role="banner">
<img alt="Books" src="images/books.jpg">
<h1><span>Chat App</span></h1>
<nav>
<ul>
<c:choose>
<c:when test="${param.title=='Home'}">
<li  id="actual"><a href="Controller">Home</a></li>
    <li  id="actual"><a href="chat.jsp">Chat</a></li>
<li  id="actual"><a href="Controller?action=ShowBlog">Blog</a></li>

</c:when>
<c:otherwise>
<li><a href="Controller">Home</a></li>
    <li><a href="chat.jsp">chat</a></li>
<li><a href="Controller?action=ShowBlog">Blog</a></li>

</c:otherwise>
</c:choose>


</ul>
</nav>
<h2>
${param.title}
</h2>

</header>