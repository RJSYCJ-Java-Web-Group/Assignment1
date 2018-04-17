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
                <option value="CAD" ${member.programName == "CAD" ? 'selected' : ''} >CAD</option>
                <option value="CP" ${member.programName == "CP" ? 'selected' : ''}>CP</option>
                <option value="CPA" ${member.programName == "CPA" ? 'selected' : ''}>CPA</option>
                <option value="ITID" ${member.programName == "ITID" ? 'selected' : ''}>ITID</option>
                <option value="ITSS" ${member.programName == "ITSS" ? 'selected' : ''}>ITSS</option>
                <option value="MSD" ${member.programName == "MSD" ? 'selected' : ''}>MSD</option>
                <option value="Others" ${member.programName == "Others" ? 'selected' : ''}>Others</option>
            </select>
        </div>
        <div class="form-group">
            <label for="yearLevel">Year Level: </label>
            <select  id="yearLevel" name="yearLevel" value="${member.yearLevel}">
                <option value="1" ${member.yearLevel == "1" ? 'selected' : ''}>1</option>
                <option value="2" ${member.yearLevel == "2" ? 'selected' : ''}>2</option>
                <option value="3" ${member.yearLevel == "3" ? 'selected' : ''}>3</option>
                <option value="4" ${member.yearLevel == "4" ? 'selected' : ''}>4</option>
            </select>
        </div>
        <div class="form-group">
            <label></label>
            <button type="submit" name="action" value="updateMember">Save</button>
            <button type="submit" name="action" value="displayMembers">Cancel</button>
        </div>
    </form>
</section>

<jsp:include page="/includes/CJYFooter.jsp"/>