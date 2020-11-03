package com.firedogsapp.service;

import org.springframework.stereotype.Service;

import com.firedogsapp.domain.RegisterMemberDAO;

@Service
public interface AccountService {
	public String test();
	
	// login 시도
	public String select_acccount(String username, String password);
	
	// ID 중복 검사
	public String select_user_id_check(String checkID);
	
	// 회원 가입
	public void register_member(RegisterMemberDAO registerMember);
	
	// ID 찾기 관련
	public String search_id(RegisterMemberDAO registerMemberDAO);
	
	// PW 찾기 관련
	public String search_pw(RegisterMemberDAO registerMemberDAO);
}
