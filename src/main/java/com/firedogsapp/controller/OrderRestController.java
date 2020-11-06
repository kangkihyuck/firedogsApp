package com.firedogsapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.firedogsapp.dao.OrderRequestHistoryDAO;
import com.firedogsapp.service.OrderService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/order/api/*")
public class OrderRestController {
	private OrderService orderService;
	
	@RequestMapping(value = "/order_register", method = RequestMethod.POST)
	public ResponseEntity<String> order_register(HttpServletRequest request, HttpSession session) {
		String responseData = "";
		
		OrderRequestHistoryDAO orderRequest = new OrderRequestHistoryDAO();
		orderRequest.setOrder_seq(request.getParameter("order_seq"));
		orderRequest.setCompany_name(request.getParameter("register_name")); // 사용자 id
		orderRequest.setPhone_no(request.getParameter("phone_no"));
		orderRequest.setCnt(request.getParameter("num"));
		
		 if(null == (String) session.getAttribute("username") || "".equals((String) session.getAttribute("username"))) {
			 orderRequest.setReg_id("guest");
		 } else {
			 orderRequest.setReg_id((String) session.getAttribute("username"));
		 }
		
		try {
			orderService.order_register(orderRequest);
			responseData = "200"; // 정상 수행
		} catch(Exception e) {
			e.printStackTrace();
			responseData = "201"; // 정상 수행 실패
		}
		
		return new ResponseEntity(responseData, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/order_cancel", method = RequestMethod.POST)
	public ResponseEntity<String> order_cancel(HttpServletRequest request, HttpSession session) {
		String responseData = "";
		
		String order_his_seq = request.getParameter("order_his_seq");
		
		try {
			orderService.order_cancel(order_his_seq);
			responseData = "200"; // 정상 수행
		} catch(Exception e) {
			e.printStackTrace();
			responseData = "201"; // 비정상 수행.
		}
		
		
		return new ResponseEntity(responseData, HttpStatus.OK);
	}

}
