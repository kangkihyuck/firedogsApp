package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/press/*")
public class PressController {
	@RequestMapping(value = "/pressMain", method = RequestMethod.GET)
	public String pressMain() {
		System.out.println("PressController pressMain");
		return "/press/pressMain";
	}
}
