package com.atelier.main.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.CM_Dao;
import com.atelier.dto.CM_Dto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CM_Service {

	ModelAndView mav;
	
	@Setter(onMethod_ = @Autowired)
	CM_Dao cm_Dao;
	
	@Setter(onMethod_ = {@Autowired}) 
	private HttpSession session;
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 회원가입 서비스
	 * 작성자: JSH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView memberInsert(CM_Dto member, RedirectAttributes rttr) {
		mav = new ModelAndView();
		String view = null;
		
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		
		String encPwd = pwdEncoder.encode(member.getCm_pwd());
		member.setCm_pwd(encPwd);
		
		log.warn("회원가입 서비스 시작");

		try {
				cm_Dao.memberInsert(member);
				view= "redirect:main";
				rttr.addFlashAttribute("check", "회원 가입 성공!");
			} catch (Exception e) {
				view = "redirect:memJoinFrm";
				rttr.addFlashAttribute("check", "fail");
			}
		mav.setViewName(view);
		return mav;
	}

	/* ---------------------------------------------------------------------------------------
	 * 기능: 회원가입 / 아이디 유효성 검사
	 * 작성자: JSH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	public int userIdCheck(String CM_ID) {
		
		return cm_Dao.checkOverId(CM_ID);
	}

}
