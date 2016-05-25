<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Search result</title>
</head>

<div class="users">
    <table border="1">
        <!--
        <th>ID:</th>
        -->
        <th>Name:</th>
        <th>Age:</th>
        <th>isAdmin:</th>
        <th>CreatedDate:</th>
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
                </tr>
            </c:forEach>
        </c:if>
    </table>
    <p>
        <a href="${pageContext.request.contextPath}/"><-home </a>
    </p>
</div>
<br>
</body>

</html>