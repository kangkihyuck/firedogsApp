package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.JobService;
import com.firedogsapp.service.OrderService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/job/*")
@AllArgsConstructor
public class JobController {
	private JobService jobService;
	
	@RequestMapping(value = "/jobMain", method = RequestMethod.GET)
	public String jobMain(Model model) {
		System.out.println("JobController jobMain 실행");
		
		model.addAttribute("jobList", jobService.jobList("0"));
		model.addAttribute("jobList1", jobService.jobList("1"));
		model.addAttribute("jobList2", jobService.jobList("2"));
		return "/job/jobMain";
	}
}
