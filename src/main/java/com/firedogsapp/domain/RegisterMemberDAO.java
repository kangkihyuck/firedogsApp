package com.firedogsapp.domain;

import lombok.Data;

@Data
public class RegisterMemberDAO {
	String company_name;
	String user_name;
	String phone_no;
	String user_id;
	String pw;
	String pwok;
	String address;
	String email;
}
