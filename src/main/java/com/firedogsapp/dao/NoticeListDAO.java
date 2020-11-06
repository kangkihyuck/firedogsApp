package com.firedogsapp.dao;

import lombok.Data;

@Data
public class NoticeListDAO {
	String notice_no;
	String notice_type;
	String notice_user_id;
	String notice_title;
	String notice_memo;
	String notice_hit;
	String notice_use_yn;
	String notice_reg_id;
	String notice_reg_date;
}
