package com.firedogsapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.InspectionService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/inspect/*")
@AllArgsConstructor
public class InspectionController {
	private InspectionService inspectionService;
	
	@RequestMapping(value = "inspectMain", method = RequestMethod.GET)
	public String inspectMain(Model model, HttpServletRequest request) {
		System.out.println("InspectionController inspectMain");

		model.addAttribute("inspectionList", inspectionService.inspectionList("0"));
		model.addAttribute("inspectionList1", inspectionService.inspectionList("1"));
		model.addAttribute("inspectionList2", inspectionService.inspectionList("2"));
		return "/inspect/inspectMain";
	}
	
}
