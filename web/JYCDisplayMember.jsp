<%-- 
    Document   : JYCDisplayMember
    Created on : 29-Jan-2018, 1:37:42 PM
    Author     : jakob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/includes/JYCBanner.jsp"/>

<section>
    <h2>Thanks for joining our club!</h2>
    <p>Here is the information you entered:</p>
    <div class="form-group">
        <label>Full Name:</label><%= request.getParameter("fullName")%>
        <br><label>Email:</label><%= request.getParameter("email")%>
        <br><label>Phone:</label><%= request.getParameter("phone")%>
        <br><label>IT Program:</label><%= request.getParameter("itProgram")%>
        <br><label>Year Level:</label><%= request.getParameter("yearLevel")%>
    </div>
    <p>To register another member, click on the back button in your browser or the Return button shown below</p>
    <form action="JYCRegister.jsp">   
        <button type="submit">Return</button>
    </form>
</section>
<jsp:include page="/includes/JYCFooter.jsp"/>
