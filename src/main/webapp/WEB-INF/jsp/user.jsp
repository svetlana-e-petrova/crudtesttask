<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Edit</title>
</head>

<body>
<form:form method="POST" action="${pageContext.request.contextPath}/save">
    <form:hidden path="id"/>
    <form:hidden path="createdDate"/>
    <table>
        <tr>
            <td><form:label path="name">Name</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="age">Age</form:label></td>
            <td><form:input path="age"/></td>
        </tr>
        <tr>
            <td><form:label path="admin">isAdmin</form:label></td>
            <td>
                <form:radiobutton path="admin" value="true" label="Yes"/>
                <form:radiobutton path="admin" value="false" label="No"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit"/>
            </td>
        </tr>
    </table>
</form:form>
</body>

</html>