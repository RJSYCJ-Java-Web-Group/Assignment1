<%-- 
    Document   : CJYError.jsp
    Created on : 12-Mar-2018, 8:02:18 AM
    Author     : Jakob Chisholm, Rawa Jalal, Steven Ye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="/includes/CJYBanner.jsp"/>

<section>
    <h1>Java Error</h1>
    <p>Sorry, Java has thrown an exception.</p>
    <p>To continue, click the Back button.</p>

    <h2>Details</h2>
    <p>Type: ${pageContext.exception["class"]}</p>
    <p>Message: ${pageContext.exception.message}</p>
</section>
    
<jsp:include page="/includes/CJYFooter.jsp" />
