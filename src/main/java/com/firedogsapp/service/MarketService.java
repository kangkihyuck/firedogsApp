package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.MarketListDAO;

@Service
public interface MarketService {
	// 사고/팔고 리스트
	public List<MarketListDAO> marketList(String flag);

}
