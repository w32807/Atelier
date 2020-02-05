package com.atelier.at.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.AT_Dao;
import com.atelier.dao.CM_Dao;
import com.atelier.dto.AG_Dto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AT_Service {
	ModelAndView mav;
	
	@Setter(onMethod_ = @Autowired)
	AT_Dao at_Dao;
	
	@Setter(onMethod_ = {@Autowired}) 
	private HttpSession session;

	
	public void ATRegistProc(AG_Dto ag_Dto, RedirectAttributes rttr) {
		
		//boolean b;
		at_Dao.setATRegistUserData(ag_Dto);
		
		//return "main";
	}

}
