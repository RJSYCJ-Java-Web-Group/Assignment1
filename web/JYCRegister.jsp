<%-- 
    Document   : JYCRegister
    Created on : Jan 23, 2018, 3:29:02 PM
    Author     : Rawa Jalal, Steven Ye, Jakob Chrisholm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/includes/JYCBanner.jsp"/>

<section>
    <h2>New Member Registration Form</h2>
    <br>
    <form method="POST" action="JYCDisplayMember.jsp">
        <div class="form-group">
            <label for="fullName">Full Name: </label><input type="text" id="fullName" name="fullName" size="25" required/>
        </div>
        <div class="form-group">
            <label for="email">Email: </label><input type="email" id="email" name="email" size="50" required/>
        </div>
        <div class="form-group">
            <label for="phone">Phone: </label><input type="text" id="phone" name="phone" size="10"/>
        </div>
        <div class="form-group">
            <label for="itProgram">IT Program: </label>
            <select  id="itProgram" name="itProgram">
                <option>CAD</option>
                <option>CP</option>
                <option>CPA</option>
                <option>ITID</option>
                <option>ITSS</option>
                <option>MSD</option>
                <option>Others</option>
            </select>
        </div>
        <div class="form-group">
            <label for="yearLevel">Year Level: </label>
            <select  id="yearLevel" name="yearLevel">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>
        <div class="form-group">
            <label></label>
            <input type="submit" value="Register Now!">
            <input type="reset" value="Reset">
        </div>
    </form>
</section>

<jsp:include page="/includes/JYCFooter.jsp"/>
