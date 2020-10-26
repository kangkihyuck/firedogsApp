package com.firedogsapp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.firedogsapp.dao.InspectionListDAO;
import com.firedogsapp.dao.JobListDAO;
import com.firedogsapp.dao.LpgDisclosureListDAO;
import com.firedogsapp.dao.MarketListDAO;
import com.firedogsapp.dao.OrderListDAO;
import com.firedogsapp.dao.OrderRequestHistoryDAO;
import com.firedogsapp.dao.TankInspectListDAO;

public interface AppMapper {
	public void insertOrderData(@Param("register_name") String register_name, @Param("phone_no") String phone_no);
	// 주문 리스트
	public List<OrderListDAO> orderList();
	// 주문 상세 리스트
	public OrderListDAO orderDetail(@Param("order_seq") String order_seq);
	// 주문 요청
	
	// 주문 요청 리스트
	public List<OrderRequestHistoryDAO> orderRequestHistory();
	
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
}
