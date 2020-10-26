package com.firedogsapp.mapper;

import org.apache.ibatis.annotations.Param;

public interface TestMapper {
	public String test();
	
	// login 시도
	public String select_acccount(@Param("username") String username, @Param("password") String password);

}
