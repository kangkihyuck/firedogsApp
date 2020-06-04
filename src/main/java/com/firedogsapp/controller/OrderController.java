package com.firedogsapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.firedogsapp.service.OrderService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/order/*")
@AllArgsConstructor
public class OrderController {
	private OrderService service;
	
	@RequestMapping(value = "/orderMain", method = RequestMethod.GET)
	public String orderMain() {
		return "/order/orderMain";
	}
	
	@RequestMapping(value = "/orderDetail", method = RequestMethod.GET)
	public String orderDetail(Model model) {
		model.addAttribute("orderList", service.orderList());
		
		return "/order/orderDetail";
	}
	
	@RequestMapping(value = "/orderRequest", method = RequestMethod.GET)
	public String orderRequest(HttpServletRequest request) {
		String register_name = request.getParameter("register_name");
		String phone_no = request.getParameter("phone_no");
		
		System.out.println("register_name : " + request.getParameter("register_name"));
		System.out.println("phone_no : " + request.getParameter("phone_no"));
		
		if(!register_name.equals("") && !phone_no.equals("")) {
			service.insertOrderData(register_name, phone_no);
		}
			
		return "/order/orderDetail";
	}
}
