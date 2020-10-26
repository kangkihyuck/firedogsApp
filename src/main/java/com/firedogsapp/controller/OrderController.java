package com.firedogsapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.firedogsapp.dao.OrderRequestHistoryDAO;
import com.firedogsapp.service.AccountService;
import com.firedogsapp.service.OrderService;
import com.firedogsapp.service.TankInfoService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/order/*")
@AllArgsConstructor
public class OrderController {
	private OrderService service;
	private AccountService accountService;
	private TankInfoService tankInfoService;
	
	// 주문 리스트
	@RequestMapping(value = "/orderMain", method = RequestMethod.GET)
	public String orderMain(Model model) {
		System.out.println("OrderController orderMain 실행");		
		model.addAttribute("orderList", service.orderList());		
		return "/order/orderMain";
	}
	
	// 주문 상세정보
	@RequestMapping(value = "/orderDetail", method = RequestMethod.GET)
	public String orderDetail(Model model, HttpServletRequest request) {
		System.out.println("OrderController orderDetail 실행");
		String order_seq = request.getParameter("order_seq");
		model.addAttribute("orderDetail", service.orderDetail(order_seq));
		
		return "/order/orderDetail";
	}
	
	// 주문 요청
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
	
	// 주문 요청 리스트
	@RequestMapping(value = "/orderRequestHistory", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject orderRequestHistory() {
		JSONObject obj = new JSONObject();
		obj.put("resCode", "200");
		obj.put("message", "안녕하세여.");

		return obj;
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
//		System.out.println(accountService.test());
//
//		List<String> list = new ArrayList();
//		list = tankInfoService.test();
//		
//		System.out.println("list : " + list);
//		
//		for(int i = 0 ; i < list.size(); i++) {
//			tankInfoService.insert_device_status(list.get(i));
//		}
		return "test";
	}
}
