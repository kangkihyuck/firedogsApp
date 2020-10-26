package com.firedogsapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.dao.MarketListDAO;
import com.firedogsapp.mapper.AppMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MarketServiceImpl implements MarketService{
	@Setter(onMethod_ = @Autowired)
	private AppMapper mapper;
	
	@Override
	public List<MarketListDAO> marketList(String flag) {
		// TODO Auto-generated method stub
		return mapper.marketList(flag);
	}
}
