/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author tapiwanashem
 */
public class Pupil {
    private int pupilID;
    private String name;
    private String surname;
    private String address;
    private int classRoomID;

    public Pupil() {
    }

    public Pupil(int pupilID, String name, String surname, String address, int classRoomID) {
        this.pupilID = pupilID;
        this.name = name;
        this.surname = surname;
        this.address = address;
        this.classRoomID = classRoomID; 
    }
      public Pupil( int classRoomID) {
       
        this.classRoomID = classRoomID; 
    }
 
    @Override
    public String toString() {
        return "Pupils{" + "pupilID=" + pupilID + ", name=" + name + ", surname=" + surname + ", address=" + address + ", ClassRoomID=" + classRoomID + '}';
    }

    public int getPupilID() {
        return pupilID;
    }

    public void setPupilID(int pupilID) {
        this.pupilID = pupilID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getClassRoomID() {
        return classRoomID;
    }

    public void setClassRoomID(int ClassRoomID) {
        this.classRoomID = ClassRoomID;
    }
    
    
    
    
    
    
    
}
