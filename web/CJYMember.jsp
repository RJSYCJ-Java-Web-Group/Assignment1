<%-- 
    Document   : CJYMember
    Created on : Apr 16, 2018, 11:49:35 PM
    Author     : Rawa
--%>

<jsp:include page="/includes/CJYBanner.jsp"/>

<section>
    <h2>New Member Registration Form</h2>
    <div class="errorMessage">
        ${errorMessage}
    </div>
    <br>
    <form method="POST" action="CJYMemberAdmin">
        <div class="form-group">
            <label for="fullName">Full Name: </label><input type="text" id="fullName" name="fullName" value="${member.fullName}" size="25" />
        </div>
        <div class="form-group">
            <label for="emailAddress">Email: </label><input type="emailAddress" id="emailAddress" name="emailAddress" value="${member.emailAddress}" size="50" />
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone: </label><input type="text" id="phoneNumber" name="phoneNumber" value="${member.phoneNumber}" size="10"/>
        </div>
        <div class="form-group">
            <label for="programName">IT Program: </label>
            <select  id="programName" name="programName" value="${member.programName}">
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
            <select  id="yearLevel" name="yearLevel" value="${member.yearLevel}">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>
        <div class="form-group">
            <label></label>
            <input type="submit" value="Save">
            <input type="reset" value="Cancel">
        </div>
    </form>
</section>

<jsp:include page="/includes/CJYFooter.jsp"/>