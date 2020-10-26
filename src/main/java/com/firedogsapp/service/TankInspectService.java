package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.TankInspectListDAO;

@Service
public interface TankInspectService {
	public List<TankInspectListDAO> tankInspectList();

}
