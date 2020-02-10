package com.atelier.main.service;

import javax.servlet.http.HttpServletRequest;
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
	
	/*----------------------------------------------------------
	 * 기   능 : 로그인 프로세스, 입력된 아이디와 비밀번호를 DB와 대조 후 일치 시 세션에 저장
	 * 		   로그인 예외처리 추가 필요 
	 * 작성일 : 20.02.03
	 * 수정일 : -
	 * 작성자 : JSG
	 ----------------------------------------------------------*/
	public ModelAndView loginProc(CM_Dto customer, RedirectAttributes rttr) {
		mav = new ModelAndView();
		String view = null;
		BCryptPasswordEncoder pwdEncode = new BCryptPasswordEncoder();

		//DB에서 암호화된 비번 구하기
		String encPwd = cm_Dao.getSecurityPwd(customer.getCm_id());
		if(encPwd != null) {
			if(pwdEncode.matches(customer.getCm_pwd(), encPwd)) {			
				customer = cm_Dao.getMemberInfo(customer.getCm_id());
				// 사용자 정보를 세션에 저장
				session.setAttribute("mb", customer);
				rttr.addFlashAttribute("check","로그인 성공!");
				view = "redirect:main";
				
				
			}
			else {
				view = "redirect:/";
				rttr.addFlashAttribute("check","패스워드가 틀립니다.");
			}
		}
		else {
			//아이디가 존재하지 않는다.
			view = "redirect:/";
			rttr.addFlashAttribute("check","해당 아이디가 없습니다.");
		}
		mav.setViewName(view);
		return mav;
	}

	/*----------------------------------------------------------
	 * 기   능 : 로그아웃 프로세스 실행, 사용자 세션 정보 초기화
	 * 작성일 : 20.02.04
	 * 수정일 : -
	 * 작성자 : JSG
	 ----------------------------------------------------------*/
	public void logoutProc(HttpSession logout_session) {
		// TODO Auto-generated method stub
		logout_session.invalidate();
		//mav.setViewName("main");
		//return mav;
	}
	
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
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 이미 공방회원싱청을 요청한 회원인지 체크
	 * 작성자: JSG
	 * 작성일: 2020.02.07
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView registCheck(String id, RedirectAttributes rttr) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		
		int check = cm_Dao.checkRegistOverllap(id);
		if(check >= 1) {
			rttr.addFlashAttribute("check", 1);
		}
		else {
			//view = "ATRegist";
			mav.setViewName("ATRegist");
		}
		
		return mav;
	}

}
