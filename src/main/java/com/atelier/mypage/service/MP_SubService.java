package com.atelier.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;


import com.atelier.dao.SB_Dao;
import com.atelier.dto.SB_Dto;
import com.atelier.dto.SBS_Dto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MP_SubService {
	
	
	ModelAndView mav;
	
	@Setter(onMethod_=@Autowired)
	SB_Dao sbDao;
	
	public ModelAndView getSubscription(SB_Dto sbDto) {
		log.warn("abc");
		
		mav = new ModelAndView();
		
		try {
			sbDao.getSubscription(sbDto);
			log.warn("ok");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return mav;
	}

	
	public ModelAndView getSubList(String sc_cm_id) {
		log.warn("sub");
		mav = new ModelAndView();
		
		List<SBS_Dto> sList = sbDao.getSubList(sc_cm_id); 
		System.out.println(sc_cm_id);
		//System.out.println(sList.get(0));
		mav.addObject("sList",sList); 
		mav.setViewName("mySubscript");
		
		return mav;
	}

}
