package com.firedogsapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
