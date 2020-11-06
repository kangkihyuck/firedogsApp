package com.firedogsapp.service;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.RegisterBoardDAO;

@Service
public interface BoardService {
	
	// 사고/팔고 관련 글 등록
	public void insert_board_data(RegisterBoardDAO registerBoardDAO);
	
	// 구인/구직 관련 글 등록
	public void insert_board_job_data(RegisterBoardDAO registerBoardDAO);

}
