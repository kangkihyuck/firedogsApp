package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.LpgDisclosureListDAO;

@Service
public interface LpgDisclosureService {
	public List<LpgDisclosureListDAO> lpgDisclosureList();

}
