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
 * @author Jakob Chisholm, Rawa Jalal, Steven Ye
 */
public class CJYAddBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // get parameters from the request
        String code = request.getParameter("code");
        String description = request.getParameter("description");
        int quantity = 0;
        boolean errors = false;

        // try to load quantity as an int
        if (tryParseInt(request.getParameter("quantity"))) {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } else {

        }

        // store data in User object
        Book book = new Book(code, description, quantity);

        // validate the parameters
        ArrayList<String> messages = new ArrayList();
        String url = "/CJYAddBook.jsp";
        if (code == null || code.isEmpty()) {
            messages.add("Book code is required");
            errors = true;
        }
        if (description.length() < 2) {
            messages.add("Description must have at least 2 characters");
            errors = true;
        }
        if (quantity <= 0) {
            messages.add("Quantity must be a positive number");
            errors = true;
        }

        if (!errors) {
            url = "/CJYDisplayBooks";
            // get a relative file name and insert a record
            ServletContext context = getServletContext();
            String path
                    = context.getRealPath("/WEB-INF/books.txt");
            BookIO.insert(book, path);
        }

        request.setAttribute("book", book);
        request.setAttribute("messages", messages);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    boolean tryParseInt(String value) {
        try {
            Integer.parseInt(value);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
