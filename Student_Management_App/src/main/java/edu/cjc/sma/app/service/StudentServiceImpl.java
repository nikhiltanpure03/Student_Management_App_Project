package edu.cjc.sma.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.repository.StudentRepositoryInt;
@Service
public class StudentServiceImpl implements StudentServiceInt{

	@Autowired
	StudentRepositoryInt sri;
	@Override
	public void saveData(Student stu) {
		
		sri.save(stu);
		
	}
	@Override
	public List<Student> getAllStudent() {
		List<Student> list = sri.findAll();
		return list;
	}
	@Override
	public List<Student> removeStudentdata(int studentId) {
		sri.deleteById(studentId);
		List<Student> list = sri.findAll();
		return list;
	}
	@Override
	public List<Student> searchData(String batchNumber) {
		List<Student> list = sri.findAllByBatchNumber(batchNumber);
		return list;
	}

}
