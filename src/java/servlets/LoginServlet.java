package servlets;

import connection.ConnectionDB;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;


//@WebServlet(name = "LoginServlet", urlPatterns = {"/"})
public class LoginServlet extends HttpServlet {

     ConnectionDB conn = new ConnectionDB();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/view.jsp");

        requestDispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String password = request.getParameter("password");

            String username = request.getParameter("username");

            User user = conn.getUserByUsername(username);

            if (user.getUsername()!=null &&  user.getPassword().equals(password)) {

                System.out.println("Login Successful");

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/registerteacher.jsp");

                requestDispatcher.forward(request, response);

            } else {

                System.out.println("Failed Login Invalid Credentials");

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/login.jsp");

                requestDispatcher.forward(request, response);

                  }

        } catch (SQLException ex) {

            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
