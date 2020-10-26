package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.JobListDAO;

@Service
public interface JobService {
	// 구인/구직 리스트
	public List<JobListDAO> jobList(String flag);

}
