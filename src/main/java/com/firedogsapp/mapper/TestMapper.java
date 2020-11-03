package com.firedogsapp.mapper;

import org.apache.ibatis.annotations.Param;

import com.firedogsapp.domain.RegisterMemberDAO;

public interface TestMapper {
	public String test();
	
	// login 시도
	public String select_acccount(@Param("username") String username, @Param("password") String password);
	
	// ID 중복 확인
	public String select_user_id_check(@Param("checkid") String checkID);
	
	// 회원 등록
	public void register_member(RegisterMemberDAO registerMember);
	
	// 회원 ID 찾기
	public String search_id(RegisterMemberDAO registerMemberDAO);
	
	// 회원 PW 찾기
	public String search_pw(RegisterMemberDAO registerMemberDAO);

}
