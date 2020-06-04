package com.firedogsapp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.firedogsapp.dao.OrderListDAO;

public interface AppMapper {
	public void insertOrderData(@Param("register_name") String register_name, @Param("phone_no") String phone_no);
	
	public List<OrderListDAO> orderList();
}
