package edu.cjc.sma.app.service;

import java.util.List;

import edu.cjc.sma.app.model.Student;

public interface StudentServiceInt {
	
	public void saveData(Student stu);
	public List<Student> getAllStudent();
	public List<Student> removeStudentdata(int studentId);
	public List<Student> searchData(String batchNumber);
	public List<Student> pagindata(int pageno, int size);
	public Student getSingleStudent(int stuId);
	public void updateAddedfees(int stuId, float ammount);
	public void changeBatch(int stuId, String sb);
}
