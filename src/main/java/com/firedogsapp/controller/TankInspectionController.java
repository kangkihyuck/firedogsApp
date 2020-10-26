package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.TankInspectService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/tankinspect/*")
@AllArgsConstructor
public class TankInspectionController {
	private TankInspectService tankInspectService;
	
	@RequestMapping(value = "tankInspectMain", method = RequestMethod.GET)
	public String tankInspectMain(Model model) {
		System.out.println("TankInspectionController tankInspectMain");
		model.addAttribute("tankInspectList", tankInspectService.tankInspectList());
		return "/tankinspect/tankInspectMain";
	}
}
