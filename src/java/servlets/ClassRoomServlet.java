package servlets;

import connection.ConnectionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Classroom;

@WebServlet(name = "ClassRoomServlet", urlPatterns = {"/ClassRoomServlet"})
public class ClassRoomServlet extends HttpServlet {

    Classroom classroom = new Classroom();
    ConnectionDB conn = new ConnectionDB();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("list") != null) {

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/classRoomOutput.jsp");
            try {
                request.setAttribute("Classrooms", conn.getClassrooms());
            } catch (Exception e) {

            }

            requestDispatcher.forward(request, response);

        } else {
            try {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/registerteacher.jsp");
                requestDispatcher.forward(request, response);
                request.setAttribute("Classroom", conn.getClassrooms());
            } catch (SQLException ex) {
                Logger.getLogger(PupilsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            classroom.setTeacher(request.getParameter("teacher"));

            if (conn.addClassroom(classroom)) {

                request.setAttribute("Classrooms", conn.getClassrooms());
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/classRoomOutput.jsp");
                requestDispatcher.forward(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(PupilsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
