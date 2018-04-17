<%-- 
    Document   : CJYAdmin
    Created on : Jan 23, 2018, 3:29:12 PM
    Author     : Jakob Chisholm, Rawa Jalal, Steven Ye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/includes/CJYBanner.jsp"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CJY Computer Programming Club</title>
    </head>
    <body>
        <h2>Admin : Data Maintenance</h2>
        <div><a href="CJYDisplayBooks">Maintain Books</a></div>
        <div><a href="CJYMemberAdmin?action=displayMembers">Display Members</a></div>
    </body>
    <jsp:include page="/includes/CJYFooter.jsp"/>
</html>
