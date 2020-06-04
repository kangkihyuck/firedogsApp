package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/tankinspect/*")
public class TankInspectionController {
	@RequestMapping(value = "tankInspectMain", method = RequestMethod.GET)
	public String tankInspectMain() {
		return "/tankinspect/tankInspectMain";
	}
}
