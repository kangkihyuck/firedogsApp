package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.OrderListDAO;
import com.firedogsapp.dao.OrderRequestHistoryDAO;

@Service
public interface OrderService {
	// 주문 리스트
	public List<OrderListDAO> orderList();
	// 주문 상세 리스트
	public OrderListDAO orderDetail(String order_seq);
	// 주문 요청
	
	// 주문 상세 리스트
	public List<OrderRequestHistoryDAO> orderRequestHistory();
	
	public void insertOrderData(String register_name, String phone_no);
}
