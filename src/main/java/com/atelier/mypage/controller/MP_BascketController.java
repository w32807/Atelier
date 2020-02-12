package com.atelier.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.dto.BT_Dto;
import com.atelier.dto.CM_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.mypage.service.MP_BasketService;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MP_BascketController {

	ModelAndView mav;
	
	@Setter(onMethod_=@Autowired)
	MP_BasketService mpServ;
	
	@Setter(onMethod_ = @Autowired)
	HttpSession session;
	

	
	//장바구니 출력
	@GetMapping("basket")
	public ModelAndView getBasketList() {
		
		CM_Dto cmDto = (CM_Dto) session.getAttribute("mb");
		
		String bt_cm_id = cmDto.getCm_id();
		
		mav = mpServ.getBasketList(bt_cm_id);
		
		return mav;
		
	}
	
	//장바구니 담기하고 팝업띄우기
	@GetMapping("~~")
	public ModelAndView goBasket(BT_Dto btDto) {
		
		mav = mpServ.goBasket(btDto);
		
		return mav;
	}
	
	
}