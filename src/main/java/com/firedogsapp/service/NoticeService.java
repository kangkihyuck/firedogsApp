package com.firedogsapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.firedogsapp.dao.NoticeListDAO;

@Service
public interface NoticeService {
	public List<NoticeListDAO> select_notice();
}
