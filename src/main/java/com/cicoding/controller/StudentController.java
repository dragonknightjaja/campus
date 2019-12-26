package com.cicoding.controller;


import com.cicoding.annotation.BizLog;
import com.cicoding.service.DeptService;
import com.cicoding.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


@Controller
public class StudentController {

	@Autowired
	private PatientService service;

	/**
	 * 添加用户或修改用户信息时，需要传到前台当前所有的部门信息，thymeleaf解析显示
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/patientlistforUseradd" , method={RequestMethod.POST})
	public String deptListForAdd(){
		return service.patientListForUserAdd();
	}
	
	@ResponseBody
	@RequestMapping(value="/patientlist" , method={RequestMethod.POST})
	public String deptList(HttpServletRequest request){
		String page = request.getParameter("page"); // 取得当前页数,注意这是jqgrid自身的参数
		String rows = request.getParameter("rows"); // 取得每页显示行数，,注意这是jqgrid自身的参数
		return service.getAllPatientJson(Integer.parseInt(page) , Integer.parseInt(rows));
	}

	@BizLog("添加学生信息")
	@ResponseBody
	@RequestMapping(value="/addpatient" , method={RequestMethod.POST})
	public String addDept(HttpServletRequest request){
		String patientName = request.getParameter("name").trim();
		String patientavator = request.getParameter("avator").trim();
		String patientage = request.getParameter("age").trim();
		String patientill = request.getParameter("ill").trim();
		if ("".endsWith(patientName)) {
			return "";
		}
		return service.addPatient(patientName, Integer.valueOf(patientage), patientavator, patientill);
	}
	
	@BizLog("修改学生信息")
	@ResponseBody
	@RequestMapping(value="/setpatient" , method={RequestMethod.POST})
	public String setDept(HttpServletRequest request){
		String patientid = request.getParameter("patientid");
		String patientname = request.getParameter("patientname");
		String patientage = request.getParameter("patientage");
		String patientavator = request.getParameter("patientavator");
		String patientill = request.getParameter("patientill");
		return service.modifyPatient(patientid, patientname, Integer.valueOf(patientage),patientavator,patientill);
	}

	@BizLog("删除学生信息")
	@ResponseBody
	@RequestMapping(value="/deletepatient" , method={RequestMethod.POST})
	public String deleteDept(HttpServletRequest request){
		String deptid = request.getParameter("id");
		return service.deletePatient(deptid);
	}
	

	
	
}
