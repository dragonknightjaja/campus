package com.cicoding.controller;


import com.cicoding.annotation.BizLog;
import com.cicoding.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


@Controller
public class ScoreController {

	@Autowired
	private ScoreService service;


	@ResponseBody
	@RequestMapping(value="/medicinelistforUseradd" , method={RequestMethod.POST})
	public String MedicineListForAdd(){
		return service.medicineListForUserAdd();
	}
	
	@ResponseBody
	@RequestMapping(value="/medicinelist" , method={RequestMethod.POST})
	public String MedicineList(HttpServletRequest request){
		String page = request.getParameter("page"); // 取得当前页数,注意这是jqgrid自身的参数
		String rows = request.getParameter("rows"); // 取得每页显示行数，,注意这是jqgrid自身的参数
		return service.getAllMedicineJson(Integer.parseInt(page) , Integer.parseInt(rows));
	}

	@BizLog("添加药品信息")
	@ResponseBody
	@RequestMapping(value="/addmedicine" , method={RequestMethod.POST})
	public String addMedicine(HttpServletRequest request){
		String medicineName = request.getParameter("name").trim();
		String medicineNumber = request.getParameter("number").trim();
		String manufacturer = request.getParameter("manufacturer").trim();
		if ("".endsWith(medicineName)) {
			return "";
		}
		return service.addMedicine(medicineName, Integer.valueOf(medicineNumber), manufacturer);
	}
	
	@BizLog("修改药品信息")
	@ResponseBody
	@RequestMapping(value="/setmedicine" , method={RequestMethod.POST})
	public String setMedicine(HttpServletRequest request){
		String medicineid = request.getParameter("id");
		String medicineName = request.getParameter("name").trim();
		String medicineprice = request.getParameter("number").trim();
		String manufacturer = request.getParameter("manufacturer").trim();
		return service.modifyMedicine(medicineid, medicineName, Integer.valueOf(medicineprice), manufacturer);
	}

	@BizLog("删除药品信息")
	@ResponseBody
	@RequestMapping(value="/deletemedicine" , method={RequestMethod.POST})
	public String deleteMedicine(HttpServletRequest request){
		String medicineid = request.getParameter("id");
		return service.deleteMedicine(medicineid);
	}
	

	
	
}
