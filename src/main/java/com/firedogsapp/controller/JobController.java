package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/job/*")
public class JobController {
	@RequestMapping(value = "/jobMain", method = RequestMethod.GET)
	public String jobMain() {
		return "/job/jobMain";
	}
}
