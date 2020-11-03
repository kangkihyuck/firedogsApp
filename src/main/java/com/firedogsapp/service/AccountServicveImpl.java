package com.firedogsapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.domain.RegisterMemberDAO;
import com.firedogsapp.mapper.TestMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class AccountServicveImpl implements AccountService{
	@Setter(onMethod_ = @Autowired)
	private TestMapper mapper;
	
	@Override
	public String test() {
		// TODO Auto-generated method stub
		return mapper.test();
	}
	
	@Override
	public String select_acccount(String username, String password) {
		// TODO Auto-generated method stub
		return mapper.select_acccount(username, password);
	}
	
	@Override
	public String select_user_id_check(String checkID) {
		// TODO Auto-generated method stub
		return mapper.select_user_id_check(checkID);
	}
	
	@Override
	public void register_member(RegisterMemberDAO registerMember) {
		// TODO Auto-generated method stub
		mapper.register_member(registerMember);
	}
	
	@Override
	public String search_id(RegisterMemberDAO registerMemberDAO) {
		// TODO Auto-generated method stub
		return mapper.search_id(registerMemberDAO);
	}
	
	@Override
	public String search_pw(RegisterMemberDAO registerMemberDAO) {
		// TODO Auto-generated method stub
		return mapper.search_pw(registerMemberDAO);
	}

}
