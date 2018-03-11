/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package club.admin;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.business.Book;
import club.data.BookIO;
/**
 *
 * @author jakob
 */
public class CJYDisplayBooksServlet extends HttpServlet 
{ 
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException 
    {
        ServletContext context = getServletContext();
        ArrayList<Book> books = BookIO.getBooks(context.getRealPath("/WEB-INF/books.txt"));
        request.setAttribute("books", books);
        getServletContext()
                .getRequestDispatcher("/CJYDisplayBooks.jsp")
                .forward(request, response);
    }
}
