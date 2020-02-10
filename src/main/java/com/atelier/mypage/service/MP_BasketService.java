package com.atelier.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.dao.BT_Dao;
import com.atelier.dto.BT_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.dto.PO_Dto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MP_BasketService {

	
	ModelAndView mav;

	@Setter(onMethod_=@Autowired)
	BT_Dao btDao;
	
	
	public ModelAndView getBasketList(String bt_cm_id) {
		log.warn("aa");
		mav = new ModelAndView();
		
		List<PO_Dto> bList = btDao.getBasketList(bt_cm_id);
		mav.addObject("bList" , bList);
		mav.setViewName("basket");
		return mav;
	}

	//장바구니 담기하고 팝업띄우기
	public ModelAndView goBasket(BT_Dto btDto) {
		
		mav = new ModelAndView();
		String view = null;
		
		try {
			btDao.goBasket(btDto);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		mav.setViewName(view);
		
		return mav;
	}

	
	
}
