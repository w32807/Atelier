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

	/*-------------------------------------------------------------------
	 * 기   능 : 공방 신청 요청 서비스. AtRegist.jsp 입력폼에서 받은 데이터를 DB에 저장
	 * 작성일 : 20.02.05
	 * 수정일 :
	 * 작업자 : 정성규
	 -------------------------------------------------------------------*/
	public void ATRegistProc(AG_Dto ag_Dto, RedirectAttributes rttr) {
		
		//boolean b;
		at_Dao.setATRegistUserData(ag_Dto);
		
		//return "main";
	}

}
