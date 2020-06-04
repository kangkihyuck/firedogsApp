package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/lpginsandorg")
public class LPGinsAndorg {
	@RequestMapping(value = "lpginsandorgMain", method = RequestMethod.GET)
	public String lpginsandorgMain() {
		return "/lpginsandorg/lpginsandorgMain";
	}

}
