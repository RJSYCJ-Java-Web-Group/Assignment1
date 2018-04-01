<%-- 
    Document   : CJYDisplayBooks
    Created on : 11-Mar-2018, 10:54:53 AM
    Author     : Jakob Chisholm, Rawa Jalal, Steven Ye
--%>
<head>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="styles/site.css" type="text/css"/>
</head>
    
<jsp:include page="/includes/CJYBanner.jsp"/>

<section>
    <h2>List of Books</h2>
    <table>
        <c:forEach items="${books}" var="book">
            <tr style="font-weight: bold;">
                <th>Code</th>
                <th>Description</th>
                <th>Quantity</th>
            </tr>
            <tr>
                <td>${book.code}</td>
                <td>${book.description}</td>
                <td>${book.quantity}</td>
            </tr>
        </c:forEach>
    </table>
    <form action="CJYAddBook.jsp">
        <input type="submit" value="Add Book"/>
    </form>
</section>

<jsp:include page="/includes/CJYFooter.jsp"/>
