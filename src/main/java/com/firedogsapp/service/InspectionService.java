package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.InspectionListDAO;

@Service
public interface InspectionService {
	public List<InspectionListDAO> inspectionList(String flag);
}
