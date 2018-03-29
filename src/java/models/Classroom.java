
package models;


public class Classroom {
    private int classroomId ;
    private String teacher;

    @Override
    public String toString() {
        return "ClassRoom{" + "classroomId=" + classroomId + ", teacher=" + teacher + '}';
    }

    public Classroom() {
    }

    public Classroom(int classRoomID, String teacher) {
        this.classroomId = classRoomID;
        this.teacher = teacher;
    }

    public int getClassroomId() {
        return classroomId;
    }

    public void setClassroomId(int classroomId) {
        this.classroomId = classroomId;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }
    
    
}
