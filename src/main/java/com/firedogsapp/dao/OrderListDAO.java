package com.firedogsapp.dao;

import lombok.Data;

@Data
public class OrderListDAO {
	String order_seq;
	String base_seq;
	String item;
	String contents;
	String reg_id;
	String reg_date;
	String image;
	String keyword;
}
