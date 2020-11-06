package com.firedogsapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.dao.NoticeListDAO;
import com.firedogsapp.mapper.AppMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService{
	@Setter(onMethod_ = @Autowired)
	private AppMapper mapper;
	
	@Override
	public List<NoticeListDAO> select_notice() {
		// TODO Auto-generated method stub
		return mapper.select_notice();
	}
}
