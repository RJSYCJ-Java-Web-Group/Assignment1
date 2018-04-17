/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package club.admin;

import club.business.Member;
import club.data.MemberDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rawa
 */
public class CJYMemberAdminController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext context = getServletContext();
        HttpSession session = request.getSession();
        String url = "";
        String action = request.getParameter("action").isEmpty() ? "displayMembers" : request.getParameter("action");
        if (action.equals("addMember")){
            String emailAddress = request.getParameter("email");
            Member member = MemberDB.selectMember(emailAddress);
            session.setAttribute("member", member);
            url = "/CJYMember.jsp";
        } else if (action.equals("displayMembers")){
            url = "/CJYDisplayMembers.jsp";
            ArrayList<Member> members = MemberDB.selectMembers();
            request.setAttribute("members",members);
        }
       
        context.getRequestDispatcher(url).forward(request,response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        ServletContext context = getServletContext();
        HttpSession session = request.getSession();
        String newline = "<br>";
        String errorMessage ="Member information is not valid"+newline;
        String DBaction = "";
        String url ="";
        String emailAddress = request.getParameter("emailAddress");
        Member member;
        boolean valid = false;
        if(MemberDB.emailExists(emailAddress)){
            member = MemberDB.selectMember(emailAddress);   
            DBaction="update";
        } else {
            member = new Member();
            DBaction="insert";
        }
        member.setFullName(request.getParameter("fullName"));
        member.setEmailAddress(request.getParameter("emailAddress"));
        member.setPhoneNumber(request.getParameter("phoneNumber"));
        member.setProgramName(request.getParameter("programName"));
        if (member.isValid()){
            valid = true;
        } else {
            String regex ="^(.+)@(.+)$";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(member.getEmailAddress());
            if (member.getFullName().length()==0){
                errorMessage+="Full name is not valid" + newline;
            }
            if (!matcher.matches()){
                errorMessage+="Email address is not valid"+newline;
            }
        }
        try {
            member.setYearLevel(Integer.parseInt(request.getParameter("yearLevel")));
        } catch (Exception ex){
            valid = false;
            System.out.println(ex.getMessage());
        }
        
        if (valid){
            if (DBaction.equals("update")){
                MemberDB.update(member);
            } else if (DBaction.equals("insert")){
                MemberDB.insert(member);
            }
            url="/CJYMemberAdmin?action=displayMembers";
            response.sendRedirect(String.format("%s%s",request.getContextPath(),url));
        } else {
            session.setAttribute("member",member);
            request.setAttribute("errorMessage",errorMessage);
            url="/CJYMember.jsp";
            context.getRequestDispatcher(url).forward(request,response);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
