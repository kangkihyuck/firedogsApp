package com.firedogsapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board/*")

public class BoardController {
	@RequestMapping(value = "boardWrite", method = RequestMethod.GET)
	public String boardWrite(HttpSession httpSession) {
		System.out.println("BoardController boardWrite");
		String session = (String) httpSession.getAttribute("username");

		System.out.println("session : " + session);
		
		if(null == session || "".equals(session)) {
			// 로그인 수행 안되어 있을 시에는  login 페이지로 이동
			return "/account/login";
		} else {
			// 로그인 시에는 해당 페이지로 이동
			return "board/boardWrite";
		}		
	}
}
