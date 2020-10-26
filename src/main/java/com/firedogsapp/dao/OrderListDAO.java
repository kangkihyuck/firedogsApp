package com.firedogsapp.dao;

import lombok.Data;

@Data
public class OrderListDAO {
	String order_seq;
	String base_seq;
	String item;
	String content;
	String reg_id;
	String reg_date;
}
