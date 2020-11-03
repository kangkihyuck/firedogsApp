package com.firedogsapp.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.AccountService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/account/*")
@AllArgsConstructor
public class AccountController {
	private AccountService accountService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "/account/login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		httpSession.setAttribute("username", null);

		return "redirect:/job/jobMain";
	}

	@RequestMapping(value = "/registerMember", method = RequestMethod.GET)
	public String registerMember() {
		System.out.println("AccountController registerMember");

		return "/account/registerMember";
	}

	// 가입 신청서 제출
	@RequestMapping(value = "/registerComplete", method = RequestMethod.GET)
	public String registerCertification() {
		return "/account/registerComplete";
	}

	// 아이디 찾기
	// 화면 구현 및 mapping 작업 진행해야 함.
	@RequestMapping(value = "/searchId", method = RequestMethod.GET)
	public String searchId() {
		return "/account/searchId";
	}
	
	@RequestMapping(value = "/searchIdResult", method = RequestMethod.GET)
	public String searchIdResult(Model model, HttpServletRequest request) {
		String user_id = request.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		
		return "/account/searchIdResult";
	}

	// 비밀번호 찾기
	// 화면 구현 및 mapping 작업 진행해야 함.
	@RequestMapping(value = "/searchPw", method = RequestMethod.GET)
	public String searchPw() {
		return "/account/searchPw";
	}

}
