package edu.cjc.sma.app.service;

import java.awt.print.Pageable;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
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
	@Override
	public List<Student> pagindata(int pageno, int size) {
		List<Student> list = sri.findAll(PageRequest.of(pageno, size)).getContent();
		
		return list;
		
	}
	@Override
	public Student getSingleStudent(int stuId) {
		Optional<Student> op = sri.findById(stuId);
		if(op.isPresent())
		{
			Student student = op.get();
			return student;
		}
		return null;
		
		
	}
	@Override
	public void updateAddedfees(int stuId, float ammount) {
		Optional<Student> optional = sri.findById(stuId);
		Student stu = optional.get();
			
		stu.setFeesPaid(stu.getFeesPaid()+ammount);
		
		sri.save(stu);
		
		
	}
	@Override
	public void changeBatch(int stuId, String sb) {
		Optional<Student> optional = sri.findById(stuId);
		Student stu = optional.get();
			
		stu.setBatchNumber(sb);
		
		sri.save(stu);
		
	}
	

}
