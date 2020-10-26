package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/lpginsandorg")
public class LPGinsAndorgController {
	@RequestMapping(value = "lpginsandorgMain", method = RequestMethod.GET)
	public String lpginsandorgMain() {
		System.out.println("LPGinsAndorgController lpginsandorgMain");
		return "/lpginsandorg/lpginsandorgMain";
	}
}
