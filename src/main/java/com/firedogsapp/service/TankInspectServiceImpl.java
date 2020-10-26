package com.firedogsapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.dao.TankInspectListDAO;
import com.firedogsapp.mapper.AppMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class TankInspectServiceImpl implements TankInspectService {
	@Setter(onMethod_ = @Autowired)
	private AppMapper mapper;

	@Override
	public List<TankInspectListDAO> tankInspectList() {
		// TODO Auto-generated method stub
		return mapper.tankInspectList();
	}

}
