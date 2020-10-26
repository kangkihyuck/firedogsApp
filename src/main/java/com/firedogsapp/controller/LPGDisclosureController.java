package com.firedogsapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.LpgDisclosureService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/lpgdisclosure/*")
@AllArgsConstructor
public class LPGDisclosureController {
	private LpgDisclosureService lpgDisclosureService;
	
	@RequestMapping(value = "/lpgDisclosureMain", method = RequestMethod.GET)
	public String lpgDisclosureMain(Model model) {
		System.out.println("LpgDisclosureController lpgDisclosureMain");
		model.addAttribute("lpgDisclosureList", lpgDisclosureService.lpgDisclosureList());
		return "/lpgdisclosure/lpgDisclosureMain";
	}
}
