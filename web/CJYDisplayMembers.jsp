<%-- 
    Document   : CJYDisplayMembers
    Created on : 16-April-2018, 11:27:42 PM
    Author     : Jakob Chisholm, Rawa Jalal, Steven Ye
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/includes/CJYBanner.jsp"/>

<section>
    <h2>List of Members</h2>


<table>
    <tr>
        <th>Email</th>
        <th>Program</th>
        <th>Year</th>
        <th></th>
    </tr>
   
        <c:forEach items="${members}" var="member">
             <tr>
            <td>${member.emailAddress}</td>
            <td>${member.programName}</td>
            <td>${member.yearLevel}</td>
            <td>
                <a href="CJYMemberAdmin?action=addMember&email=${member.emailAddress}">Update</a>
                <a href="CJYMemberAdmin?action=confirmDelete&email=${member.emailAddress}">Delete</a>
            </td>
            </tr>
        </c:forEach>
    
</table>
    <form method="GET" action="CJYMemberAdmin">
        <input type="hidden" name="action" value="addMember">
        <button type="submit">Add Member</button>
    </form>
    
</section>
<jsp:include page="/includes/CJYFooter.jsp"/>
