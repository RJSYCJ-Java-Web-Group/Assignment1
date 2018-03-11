<%-- 
    Document   : CJYDisplayBooks
    Created on : 11-Mar-2018, 10:54:53 AM
    Author     : jakob
--%>
<head>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
    
<jsp:include page="/includes/CJYBanner.jsp"/>

<section>
    <h2>List of Books</h2>
    <table style="border: 1px solid black;">
        <c:forEach items="${books}" var="book">
            <tr>
                <td style="border: 1px solid black;">${book.code}</td>
                <td style="border: 1px solid black;">${book.description}</td>
                <td style="border: 1px solid black;">${book.quantity}</td>
            </tr>
        </c:forEach>
    </table>
</section>

<jsp:include page="/includes/CJYFooter.jsp"/>
