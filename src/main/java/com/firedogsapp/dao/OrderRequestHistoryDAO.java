package com.firedogsapp.dao;

import lombok.Data;

@Data
public class OrderRequestHistoryDAO {
	String order_his_seq;
	String order_seq;
	String company_id;
	String company_name;
	String phone_no;
	String item;
	String cnt;
	String reg_id;
	String reg_date;
}
