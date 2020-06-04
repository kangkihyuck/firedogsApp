package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/inspect/*")
public class InspectionController {
	@RequestMapping(value = "inspectMain", method = RequestMethod.GET)
	public String inspectMain() {
		return "/inspect/inspectMain";
	}

}
