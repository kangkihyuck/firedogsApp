package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.OrderListDAO;

@Service
public interface OrderService {
	public void insertOrderData(String register_name, String phone_no);
	
	public List<OrderListDAO> orderList();
}
