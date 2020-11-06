package com.firedogsapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.dao.OrderListDAO;
import com.firedogsapp.dao.OrderRequestDAO;
import com.firedogsapp.dao.OrderRequestHistoryDAO;
import com.firedogsapp.mapper.AppMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService{
	@Setter(onMethod_ = @Autowired)
	private AppMapper mapper;
	
	@Override
	public List<OrderListDAO> orderList(OrderRequestDAO orderRequest) {
		// TODO Auto-generated method stub
		return mapper.orderList(orderRequest);
	}
	
	@Override
	public List<OrderListDAO> orderList_flag(String flag) {
		// TODO Auto-generated method stub
		return mapper.orderList_flag(flag);
	}
	
	@Override
	public OrderListDAO orderDetail(String order_seq) {
		// TODO Auto-generated method stub
		return mapper.orderDetail(order_seq);
	}
	
	@Override
	public void order_register(OrderRequestHistoryDAO orderRequest) {
		// TODO Auto-generated method stub
		mapper.order_register(orderRequest);
	}
	
	@Override
	public List<OrderRequestHistoryDAO> order_register_history(String reg_id) {
		// TODO Auto-generated method stub
		return mapper.order_register_history(reg_id);
	}
	
	@Override
	public void order_cancel(String order_his_seq) {
		// TODO Auto-generated method stub
		mapper.order_cancel(order_his_seq);
	}
}
