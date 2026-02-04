package edu.cjc.sma.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.service.StudentServiceInt;

@Controller
public class AdminController {

	@Autowired
	StudentServiceInt ssi;
	
	@RequestMapping("/")
	public String prelogin()
	{
		return "login";
	}
	@RequestMapping("login")
	public String checkLogin(@RequestParam("username") String username,@RequestParam("password") String password ,Model m)
	{
		if(username.equals("Admin") && password.equals("Admin"))
		{
			List<Student> list = ssi.getAllStudent();
			m.addAttribute("data",list);
			return "adminscreen";
		}
		else {
			m.addAttribute("login_fail","Enter Valid details");
					return "login";
		}
	}
	@RequestMapping("enroll_student")
	public String saveStudent(@ModelAttribute Student stu)
	{
		ssi.saveData(stu);
		return "adminscreen";
	}
	@RequestMapping("view")
	public String viewStudent(Model m)
	{
		List<Student> list = ssi.getAllStudent();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	@RequestMapping("delete")
	public String removeData(@RequestParam("id") int studentId,Model m)
	{
		List<Student> list = ssi.removeStudentdata(studentId);
		m.addAttribute("data",list);
		return "adminscreen";
	}
	@RequestMapping("search")
	public String searchBybatchNum(@RequestParam("batchNumber") String batchno,Model m)
	{
		List<Student> list = ssi.searchData(batchno);
		if(list.size()>0)
		{
			m.addAttribute("data",list);
			return"adminscreen";
		}
		
		return null;
	}
}
