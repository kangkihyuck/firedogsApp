package com.firedogsapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.AccountService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/account")
@AllArgsConstructor
public class AccountController {
	private AccountService accountService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		httpSession.setAttribute("username", null);
		
		
		return "redirect:/job/jobMain";
	}
	
	@RequestMapping(value = "/registerMember", method = RequestMethod.GET)
	public String registerMember() {
		return "registerMember";
	}
	
	// 아이디 찾기
	// 화면 구현 및 mapping 작업 진행해야 함.
	
	// 비밀번호 찾기
	// 화면 구현 및 mapping 작업 진행해야 함.

}
