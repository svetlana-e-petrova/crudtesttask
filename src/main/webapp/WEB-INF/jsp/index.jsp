<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>${title}</title>
</head>

<body>
<p>
    <a href="${pageContext.request.contextPath}/update">Add new user</a>

</p>
<div class="row">
    <form method="get" action="${pageContext.request.contextPath}/search">
        <div class="small-3 columns">
            <input type="text" id ="txt" name="searchString" >
        </div>
        <div class="small-5 columns end">
            <button id="button-id" type="submit">Search by name</button>
        </div>
    </form>
    <br>
</div>
<div class="users">
    <table border="1">
        <!--
        <th>ID:</th>
        -->
        <th>Name:</th>
        <th>Age:</th>
        <th>isAdmin:</th>
        <th>CreatedDate:</th>
        <th>Edit:</th>
        <th>Delete:</th>
        <c:if test="${not empty users}">
            <c:forEach items="${users}" var="user">
                <tr>
                    <!--
                    <td><c:out value="${user.id}"/></td>
                    -->
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.age}"/></td>
                    <td><c:out value="${user.admin ? 'Yes' : 'No'}"/></td>
                    <td><c:out value="${user.createdDate}"/></td>
                    <td><a href="${pageContext.request.contextPath}/update/${user.id}">edit</a></td>
                    <td><a href="${pageContext.request.contextPath}/delete/${user.id}">X</a></td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
    <p>
        <c:if test="${previousPageNumber != -1}">
            <a href="${pageContext.request.contextPath}/${previousPageNumber}"><-prev </a>
        </c:if>
        <c:if test="${nextPageNumber != -1}">
            <a href="${pageContext.request.contextPath}/${nextPageNumber}"> next-></a>
        </c:if>
    </p>
</div>
<br>
</body>

</html>