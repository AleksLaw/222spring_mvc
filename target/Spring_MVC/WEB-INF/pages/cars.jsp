<!DOCTYPE html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

    <fmt:setBundle basename="MyBungle"/>
    <style type="text/css">
        table {
            border: 1px solid black;
            width: auto;
        }

        tr {
            height: 15px;
        }

        th {
            border: 1px solid black
        }

        td {
            align-content: center;
            border: 1px solid black
        }
    </style>
</head>


<body>
<c:set var="locale" value="${param.locale}" scope="session"/>
<%--<%--%>
<%--    Locale locale = new Locale("en");--%>
<%--    Locale.setDefault(Locale.ENGLISH);--%>
<%--    System.out.println("1111111111111111111111111");--%>
<%--%>--%>
<table>
    <%--<c:out value="${locale}"/>--%>
    <%--    <c:out value="111111111111111"/>--%>
    <%--    <fmt:message key="nameTable"/>--%>
    <caption>
        <c:choose>
            <c:when test="${locale == 'en'}">
                CARS TABLE
            </c:when>
            <c:when test="${locale == 'ru'}">
                ТАБЛИЦА МАШИН
            </c:when>
            <c:otherwise>
                Если не одно условие не есть верно.
            </c:otherwise>
        </c:choose>
    </caption>
    <tr>
        <th>Name</th>
        <th>Colour</th>
        <th>Number</th>
    </tr>

    <c:forEach var="car" items="${messagesCar}">
        <tr>
            <td align="center"><label><c:out value="${car.name}"/></label></td>
            <td align="center"><label><c:out value="${car.colour}"/></label></td>
            <td align="center"><label><c:out value="${car.number}"/></label></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>