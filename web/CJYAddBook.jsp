<%-- 
    Document   : CJYAddBook
    Created on : 11-Mar-2018, 12:10:03 PM
    Author     : jakob
--%>

<head>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="styles/site.css" type="text/css"/>
</head>
    
<jsp:include page="/includes/CJYBanner.jsp"/>

<section>
    <h2>Add a Book</h2>
    <form action="CJYAddBook" method="Post">
        <div class="form-group">
            <label for="code">Code: </label>
            <input type="text" id="code" name="code"/>
        </div>
        <div class="form-group">
            <label for="description">Description: </label>
            <input type="text" id="description" name="description"/>
        </div>
        <div class="form-group">
            <label for="quantity">Quantity: </label>
            <input type="text" id="quantity" name="quantity"/>
        </div>
        <div class="form-group">
            <label></label>
            <input type="submit" value="Save">
            <input type="submit" formaction="CJYDisplayBooks" formmethod="get" value="Cancel">
        </div>
    </form>
</section>

<jsp:include page="/includes/CJYFooter.jsp"/>
