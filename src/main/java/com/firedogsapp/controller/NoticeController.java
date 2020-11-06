package com.firedogsapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.NoticeService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/notice/*")
public class NoticeController {
	private NoticeService noticeService;
	
	@RequestMapping(value = "/noticeMain", method = RequestMethod.GET)
	public String noticeMain(Model model, HttpServletRequest request) {
		
		System.out.println("NoticeController noticeMain 실행");
		
		try {
			model.addAttribute("noticeList", noticeService.select_notice());
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "/notice/noticeMain";
	}

}
