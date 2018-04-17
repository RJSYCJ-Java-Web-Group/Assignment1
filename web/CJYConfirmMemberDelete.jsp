<%-- 
    Document   : CJYDisplayMember
    Created on : 17-Apr-2018, 1:37:42 PM
    Author     : Jakob Chisholm, Rawa Jalal, Steven Ye
--%>


<jsp:include page="/includes/CJYBanner.jsp"/>

<section>
    <h2>Are you sure you want to delete ${member.fullName}</h2>
    <form action="CJYMemberAdmin" method="POST">   
        <input type="hidden" name="emailAddress" value="${member.emailAddress}">
        <div class="form-group">
            <label>Full Name:</label>${member.fullName}
            <br><label>Email:</label>${member.emailAddress}
            <br><label>Phone:</label>${member.phoneNumber}
            <br><label>IT Program:</label>${member.programName}
            <br><label>Year Level:</label>${member.yearLevel}
        </div>
       <button type="submit" name="action" value="deleteMember">Delete</button>
       <button type="submit" name="action" value="displayMembers">Cancel</button>
    </form>
</section>
<jsp:include page="/includes/CJYFooter.jsp"/>
