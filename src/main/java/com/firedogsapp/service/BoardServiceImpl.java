package com.firedogsapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firedogsapp.dao.RegisterBoardDAO;
import com.firedogsapp.mapper.AppMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	@Setter(onMethod_ = @Autowired)
	private AppMapper appMapper;
	
	@Override
	public void insert_board_data(RegisterBoardDAO registerBoardDAO) {
		appMapper.insert_board_data(registerBoardDAO);
	}
	
	@Override
	public void insert_board_job_data(RegisterBoardDAO registerBoardDAO) {
		// TODO Auto-generated method stub
		appMapper.insert_board_job_data(registerBoardDAO);
	}
}
