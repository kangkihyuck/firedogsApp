package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.OrderListDAO;
import com.firedogsapp.dao.OrderRequestDAO;
import com.firedogsapp.dao.OrderRequestHistoryDAO;

@Service
public interface OrderService {
	// 주문 리스트
	public List<OrderListDAO> orderList(OrderRequestDAO orderRequest);
	public List<OrderListDAO> orderList_flag(String flag);
	
	// 주문 상세 리스트
	public OrderListDAO orderDetail(String order_seq);
	
	// 주문 요청
	public void order_register(OrderRequestHistoryDAO orderRequest);
	
	// 주문 상세 리스트
	public List<OrderRequestHistoryDAO> order_register_history(String reg_id);
	
	// 주문 취소
	public void order_cancel(String order_his_seq);
	
}
