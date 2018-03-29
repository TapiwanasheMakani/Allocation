/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import models.Pupil;
import models.Classroom;
import models.User;

public class ConnectionDB {

    private Connection conn = null;

    public static Connection connect() throws SQLException, ClassNotFoundException {

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection("jdbc:sqlserver://192.168.10.116\\SQL2008R2;databaseName=SchoolDB", "sa", "%$afro123");

        return con;

    }

    public boolean addPupil(Pupil pupil) throws SQLException {

        try {
            System.out.println(pupil);
            String query = "Insert into Pupil values('" + pupil.getName() + "','" + pupil.getSurname() + "','" + pupil.getAddress() + "','" + pupil.getClassRoomID() + "')";
            conn = connect();
            Statement st = conn.createStatement();
            st.executeUpdate(query);
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;

    }

    public List<Pupil> getPupils() throws SQLException {
        List<Pupil> pupils = new ArrayList<>();

        try {
            String query = "SELECT * from Pupil";
            conn = connect();

            Statement st = (Statement) conn.createStatement();
            st.execute(query);
            ResultSet rs = st.getResultSet();

            while (rs.next()) {
                Pupil ppl = new Pupil();
                ppl.setPupilID(Integer.parseInt(rs.getString("pupilID")));
                ppl.setName(rs.getString("name"));
                ppl.setSurname(rs.getString("surname"));
                ppl.setAddress(rs.getString("address"));

                ppl.setClassRoomID(Integer.parseInt(rs.getString("ClassRoomId")));
                pupils.add(ppl);
            }
            rs.close();
            st.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return pupils;

    }

    public boolean updatePupils(Pupil pupil) throws SQLException {

        try {
            System.out.println(pupil);
            String query = "Update Pupil set name='" + pupil.getName() + "',surname='"
                    + pupil.getSurname() + "',address='" + pupil.getAddress() + "',classRoomId='" + pupil.getClassRoomID() + "' where pupilId='" + pupil.getPupilID() + "'";
            System.out.println(query);

            conn = connect();
            Statement st = conn.createStatement();
            st.executeUpdate(query);
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;

    }

    public boolean deletePupils(int id) throws SQLException {

        try {

            String query = "Delete from Pupil where pupilId=" + id;
            conn = connect();
            Statement st = conn.createStatement();
            st.executeUpdate(query);
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;

    }

    public boolean addClassroom(Classroom classroom) throws SQLException {

        try {
            System.out.println(classroom);
            String query = "Insert into ClassRoom values('" + classroom.getTeacher() + "')";
            conn = connect();
            Statement st = conn.createStatement();
            st.executeUpdate(query);
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public List<Classroom> getClassrooms() throws SQLException {
        List<Classroom> classrooms = new ArrayList<>();

        try {
            String query = "SELECT * from Classroom";
            conn = connect();

            Statement st = (Statement) conn.createStatement();
            st.execute(query);
            ResultSet rs = st.getResultSet();

            while (rs.next()) {
                Classroom classroom = new Classroom();
                classroom.setClassroomId(Integer.parseInt(rs.getString("classroomId")));
                classroom.setTeacher(rs.getString("teacher"));

                classrooms.add(classroom);
            }
            rs.close();
            st.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return classrooms;

    }

    public User getUserByUsername(String username) throws SQLException {

        User user = new User();

        try {

            String query = "Select * from users ";
            conn = connect();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
            if(rs.getString("Username").equals(username))
            {
                    user.setPassword(rs.getString("Password"));
                user.setUsername(username);
                break;
            }
                

            }

            conn.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return user;

    }

}
