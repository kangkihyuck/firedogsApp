package com.firedogsapp.service;

import org.springframework.stereotype.Service;

@Service
public interface AccountService {
	public String test();
	
	// login 시도
	public String select_acccount(String username, String password);
}
