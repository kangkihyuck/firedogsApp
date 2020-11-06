package com.firedogsapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.firedogsapp.dao.OrderRequestDAO;
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
	
	// 주문 리스트
	@RequestMapping(value = "/orderMain", method = RequestMethod.GET)
	public String orderMain(Model model, HttpServletRequest request) {
		System.out.println("OrderController orderMain 실행");	
		
		OrderRequestDAO orderRequest = new OrderRequestDAO();
		
		orderRequest.setKeyword(request.getParameter("keyword"));
		
		model.addAttribute("orderList", service.orderList(orderRequest));
		model.addAttribute("orderList1", service.orderList_flag("1"));
		model.addAttribute("orderList2", service.orderList_flag("2"));
		model.addAttribute("orderList3", service.orderList_flag("3"));
		model.addAttribute("orderList4", service.orderList_flag("4"));
		model.addAttribute("orderList5", service.orderList_flag("5"));
		model.addAttribute("orderList6", service.orderList_flag("6"));
		return "/order/orderMain";
	}
	
	// 주문 상세정보
	@RequestMapping(value = "/orderDetail", method = RequestMethod.GET)
	public String orderDetail(Model model, HttpServletRequest request, HttpSession session) {
		System.out.println("OrderController orderDetail 실행");
		String order_seq = request.getParameter("order_seq");
		
		model.addAttribute("orderDetail", service.orderDetail(order_seq));
		
		if(null == (String) session.getAttribute("username") || "".equals((String) session.getAttribute("username"))) {
			
		} else {
			model.addAttribute("orderRegisterHistory", service.order_register_history((String) session.getAttribute("username")));
		}
		
		return "/order/orderDetail";
	}
	
	// 주문 요청
//	@RequestMapping(value = "/orderRequest", method = RequestMethod.GET)
//	public String orderRequest(HttpServletRequest request) {
//		String register_name = request.getParameter("register_name");
//		String phone_no = request.getParameter("phone_no");
//		
//		System.out.println("register_name : " + request.getParameter("register_name"));
//		System.out.println("phone_no : " + request.getParameter("phone_no"));
//		
//		if(!register_name.equals("") && !phone_no.equals("")) {
//			service.insertOrderData(register_name, phone_no);
//		}
//			
//		return "/order/orderDetail";
//	}
}
