package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/market/*")
public class MarketController {
	@RequestMapping(value = "marketMain", method = RequestMethod.GET)
	public String marketMain() {
		return "/market/marketMain";
	}

}
