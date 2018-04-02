<%-- 
    Document   : CJYECart
    Created on : Apr 1, 2018, 8:23:29 PM
    Author     : Jakob Chisholm, Rawa Jalal, Steven Ye
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/includes/CJYBanner.jsp"/>

<table>
    <tr>
        <th>Code</th>
        <th>Description</th>
        <th>Quantity</th>
    </tr>
        <c:forEach items="${cart.items}" var="book">
            <tr>
                <td>${book.code}</td>
                <td>${book.description}</td>
                <td align="right">${book.quantity}</td>
            </tr>
        </c:forEach>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr>
            <td></td>
            <td align="right">Total: </td>
            <td align="right">${cartTotal}</td>
        </tr>

</table>
        
<br/>
<br/>
<p><a href="CJYClearCart">Clear the cart</a></p>
<p><a href="CJYLoan">Return to eLoan</a></p>


<jsp:include page="/includes/CJYFooter.jsp"/>

