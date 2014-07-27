<%--
  Created by IntelliJ IDEA.
  User: newair
  Date: 7/26/14
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title></title>
</head>
<body>

<h1>Following files are uploaded successfully</h1>
<ol>
    <c:forEach items="${files}" var="file">
        <li>${file}</li>
    </c:forEach>
</ol>


</body>
</html>