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
import models.Pupil;

@WebServlet(name = "PupilsServlet", urlPatterns = {"/PupilsServlet"})
public class PupilsServlet extends HttpServlet {

    Pupil pupil = new Pupil();
    ConnectionDB conn = new ConnectionDB();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if (request.getParameter("list") != null) {

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/pupilsOutput.jsp");
            try {
                  request.setAttribute("Pupils", conn.getPupils());
            } catch (Exception e) {

            }

            requestDispatcher.forward(request, response);

        } else {
            try {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/pupils.jsp");
                requestDispatcher.forward(request, response);
                request.setAttribute("Pupils", conn.getPupils());
            } catch (SQLException ex) {
                Logger.getLogger(PupilsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            pupil.setName(request.getParameter("name"));
            pupil.setSurname(request.getParameter("surname"));
            pupil.setAddress(request.getParameter("address"));
            pupil.setClassRoomID(Integer.parseInt(request.getParameter("classRoomID")));

            if (conn.addPupil(pupil)) {

                request.setAttribute("Pupils", conn.getPupils());
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/jsp/pupilsOutput.jsp");
                requestDispatcher.forward(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(PupilsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";

    }
}
