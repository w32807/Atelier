package com.atelier.mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.dto.PO_Dto;
import com.atelier.mypage.service.MP_OrderService;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MP_OrderController {

	ModelAndView mav;
	
	@Setter(onMethod_=@Autowired)
	MP_OrderService mpServ;
	
	
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 주문내역 조회메소드 <수정필요>
	 * 작성자: KBH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("myOrder")
	public ModelAndView MyOrder(String po_cm_id) {
		log.warn(po_cm_id);
		
		mav = mpServ.getMyOrder(po_cm_id);
		
		
		return mav;
	}
	
	
	 @PostMapping(value = "orderAjax", produces = "application/json; charset=utf-8")
	 @ResponseBody 
	 public Map<String , List<PO_Dto>> orderAjax(PO_Dto poDto) {
	 log.warn("aa");
	 Map <String , List<PO_Dto>> poMap = mpServ.getOrder(poDto);
	 
	 return poMap; 
	 
	 }
	 
}












