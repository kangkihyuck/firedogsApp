package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.MarketService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/market/*")
@AllArgsConstructor
public class MarketController {
	private MarketService marketService;
	
	@RequestMapping(value = "marketMain", method = RequestMethod.GET)
	public String marketMain(Model model) {
		System.out.println("MarketController marketMain");
		
		model.addAttribute("marketList", marketService.marketList("0"));
		model.addAttribute("marketList1", marketService.marketList("1"));
		model.addAttribute("marketList2", marketService.marketList("2"));
		return "/market/marketMain";
	}

}
