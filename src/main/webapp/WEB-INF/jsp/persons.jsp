<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <title>Persons</title>
</head>
<body>
<h1>Person</h1>
<br/>
<div>
    <table border="1">
        <tr>
            <th>
                First Name
            </th>
            <th>
                Last Name
            </th>
        </tr>
        <c:forEach items="${persons}" var="person">
            <tr>
                <td>${person.firstName}</td>
                <td>${person.lastName}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>