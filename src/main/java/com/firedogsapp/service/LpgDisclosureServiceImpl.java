package com.firedogsapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.dao.LpgDisclosureListDAO;
import com.firedogsapp.mapper.AppMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class LpgDisclosureServiceImpl implements LpgDisclosureService{
	@Setter(onMethod_ = @Autowired)
	private AppMapper mapper;
	
	@Override
	public List<LpgDisclosureListDAO> lpgDisclosureList() {
		// TODO Auto-generated method stub
		return mapper.lpgDisclosureList();
	}
}
