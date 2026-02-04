package edu.cjc.sma.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.cjc.sma.app.model.Student;


public interface StudentRepositoryInt extends JpaRepository<Student, Integer> {

	public List<Student> findAllByBatchNumber(String batchNumber);
}
