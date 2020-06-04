package com.firedogsapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.dao.OrderListDAO;
import com.firedogsapp.mapper.AppMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService{
	@Setter(onMethod_ = @Autowired)
	private AppMapper mapper;
	
	@Override
	public void insertOrderData(String register_name, String phone_no) {
		// TODO Auto-generated method stub
		mapper.insertOrderData(register_name, phone_no);
	}
	
	@Override
	public List<OrderListDAO> orderList() {
		// TODO Auto-generated method stub
		return mapper.orderList();
	}

}
