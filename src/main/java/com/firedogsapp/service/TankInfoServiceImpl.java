package com.firedogsapp.service;

import org.springframework.stereotype.Service;

import com.firedogsapp.mapper.GastokMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class TankInfoServiceImpl implements TankInfoService{
	@Setter(onMethod_ = @Autowired)
	private GastokMapper mapper;
	
	@Override
	public List<String> test() {
		// TODO Auto-generated method stub
		return mapper.test();
	}
	
	@Override
	public void insert_device_status(String device_id) {
		// TODO Auto-generated method stub
//		mapper.insert_device_status(device_id);
	}
}
