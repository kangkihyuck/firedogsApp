package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface TankInfoService {
	public List<String> test();
	
	public void insert_device_status(String device_id);

}
