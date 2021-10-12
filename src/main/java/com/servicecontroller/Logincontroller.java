package com.servicecontroller;

import java.io.IOException;
import java.net.URISyntaxException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Employee;
import com.model.LoginManager;
import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;
import com.restservices.RestServor;



@Controller
public class Logincontroller {

	@RequestMapping("/")
	public String login() {

		return "login";
	}

	@RequestMapping("login")
	public String logout() {

		return "login";
	}

	/**
	 * add new employee details
	 * 
	 * @param emp
	 * @param session
	 * @return
	 * @throws URISyntaxException
	 */
//	method = RequestMethod.POST
	@RequestMapping(value = "/addd")
	public String addEmployee(Employee emp, HttpSession session) throws URISyntaxException {
//		System.out.println(emp.getName());
		RestServor.addEmployee(emp);
		

		Employee[] list = RestServor.getAllEmployee();
		session.setAttribute("list", list);
		return "welcome";
	}
//	method = RequestMethod.GET
	@RequestMapping(value = "/add" )
	public String uploadEmployee() throws URISyntaxException {

		return "add";
	}

	@RequestMapping("welcome")
	// @ResponseBody
	public String welcome() {

		return "welcome";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editEmployee() {

		return "edit";
	}

	/**
	 * edit the details
	 * 
	 * @param emp
	 * @param session
	 * @param code
	 * @return
	 * @throws URISyntaxException
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute Employee emp, HttpSession session, @RequestParam("code") int code)
			throws URISyntaxException {
		RestServor.editEmployee(emp);
		Employee[] list = RestServor.getAllEmployee();
		session.setAttribute("list", list);
		return "welcome";
	}
	
	//delete
	@RequestMapping(value="/delete")
	// @ResponseBody
	public String delete(@RequestParam("id") int id) {
//		System.out.println(id);
		RestServor.deleteEmployee(id);
		
		return "welcome";
	}


	/**
	 * validate user
	 * 
	 * @param session
	 * @param userId
	 * @param password
	 * @return
	 * @throws URISyntaxException
	 */
	@RequestMapping("/validate")
	public String validate(HttpSession session, @RequestParam("userId") String userId,
			@RequestParam("password") String password) throws URISyntaxException {

		LoginManager hrm = RestServor.getUser(userId, password);
		
		String message = "";
		if (hrm == null) {
			message = "Login ID or Password incorrect";
			session.setAttribute("message", message);
			return "login";
		}

		Employee[] list = RestServor.getAllEmployee();
		session.setAttribute("userName", hrm.getName());

		session.setAttribute("list", list);

		return "welcome";
	}
}