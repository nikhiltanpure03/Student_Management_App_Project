package edu.cjc.sma.app.service;

import java.util.List;

import edu.cjc.sma.app.model.Student;

public interface StudentServiceInt {
	
	public void saveData(Student stu);
	public List<Student> getAllStudent();
	public List<Student> removeStudentdata(int studentId);
	public List<Student> searchData(String batchNumber);
}
