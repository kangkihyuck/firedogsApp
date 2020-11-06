package com.firedogsapp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.firedogsapp.dao.InspectionListDAO;
import com.firedogsapp.dao.JobListDAO;
import com.firedogsapp.dao.LpgDisclosureListDAO;
import com.firedogsapp.dao.MarketListDAO;
import com.firedogsapp.dao.NoticeListDAO;
import com.firedogsapp.dao.OrderListDAO;
import com.firedogsapp.dao.OrderRequestDAO;
import com.firedogsapp.dao.OrderRequestHistoryDAO;
import com.firedogsapp.dao.RegisterBoardDAO;
import com.firedogsapp.dao.TankInspectListDAO;

public interface AppMapper {
	public void insertOrderData(@Param("register_name") String register_name, @Param("phone_no") String phone_no);
	// 주문 리스트
	public List<OrderListDAO> orderList(OrderRequestDAO orderRequest);
	public List<OrderListDAO> orderList_flag(String flag);
	// 주문 상세 리스트
	public OrderListDAO orderDetail(@Param("order_seq") String order_seq);
	// 주문 요청
	public void order_register(OrderRequestHistoryDAO orderRequest);
	
	// 주문 요청 리스트
	public List<OrderRequestHistoryDAO> order_register_history(String reg_id);
	
	// 주문 취소
	public void order_cancel(@Param("order_his_seq") String order_his_seq);
	
	// 구인 /구직 리스트
	public List<JobListDAO> jobList(@Param("flag") String flag);
	
	// 사고/팔고 리스트
	public List<MarketListDAO> marketList(@Param("flag") String flag);
	
	// Lpg공시가 리스트
	public List<LpgDisclosureListDAO> lpgDisclosureList();
	
	// 검사기관 리스트
	public List<InspectionListDAO> inspectionList(@Param("flag") String flag);
	
	// 탱크검사 리스트
	public List<TankInspectListDAO> tankInspectList();
	
	// 게시글 등록 관련 사고/팔고
	public void insert_board_data(RegisterBoardDAO registerBoardDAO); 
	
	// 게시글 등록 관련 구인/구직
	public void insert_board_job_data(RegisterBoardDAO registerBoardDAO);
	
	// 공지사항 관련
	public List<NoticeListDAO> select_notice();
}
