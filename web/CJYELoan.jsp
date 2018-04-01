<%-- 
    Document   : CJYELoan
<<<<<<< HEAD
    Created on : 1-Apr-2018, 7:17:53 PM
    Author     : jakob
=======
    Created on : Apr 1, 2018, 6:06:55 PM
    Author     : Jakob Chisholm, Rawa Jalal, Steven Ye
>>>>>>> a392a08a2c9e1b986a013fff057f290a332fee48
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/includes/CJYBanner.jsp"/>

<table>
    <tr>
        <th>Code</th>
        <th>Description</th>
        <th>QOH</th>
        <th>Action</th>
    </tr>
   
        <c:forEach items="${loanitems}" var="book">
             <tr>
            <td>${book.code}</td>
            <td>${book.description}</td>
            <td>${book.quantity}</td>
            <td>
                <c:choose>
                    <c:when test="${book.quantity > 0}">
                        <a href="CJYCart?action=reserve&code=${book.code}">Reserve</a>
                    </c:when>
                    <c:otherwise>
                        <p>N/A</p>
                    </c:otherwise>
                </c:choose>
            </td>
            </tr>
        </c:forEach>
    
</table>


<jsp:include page="/includes/CJYFooter.jsp"/>




