package com.atelier.main.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.AT_Dao;
import com.atelier.dao.CM_Dao;
import com.atelier.dto.BT_Dto;
import com.atelier.dto.CM_Dto;
import com.atelier.dto.PD_productDto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CM_Service {

	ModelAndView mav;
	

	@Setter(onMethod_ = @Autowired)
	AT_Dao atDao;
	
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

	/* ---------------------------------------------------------------------------------------
	 * 기능: 상품 목록 전체 보기
	 * 작성자: JWJ
	 * 작성일: 2020.02.10
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView getproduct_AllList() {
		mav = new ModelAndView();
		List<PD_productDto> pdList = cm_Dao.getproduct_AllList();
		//List<String> imgName = new ArrayList<String>();
		for(int i = 0; i < pdList.size(); i++) {
			int pd_code = pdList.get(i).getPd_code();
			String pi_oriName = cm_Dao.getPi_oriName(pd_code);
			pdList.get(i).setImgOriName(pi_oriName);
		}
		mav.addObject("pdList",pdList);
		mav.setViewName("prodList_All");
		
		
		return mav;
	}


	/* ---------------------------------------------------------------------------------------
	 * 기능: 상품별 목록 보기
	 * 작성자: JWJ
	 * 작성일: 2020.02.10
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView getProdList(String pd_cate) {
		mav = new ModelAndView();
		String view = null;
		List<PD_productDto> pdList = cm_Dao.getProdList(pd_cate);
		for(int i = 0; i < pdList.size(); i++) {
			int pd_code = pdList.get(i).getPd_code();
			String pi_oriName = cm_Dao.getPi_oriName(pd_code);
			pdList.get(i).setImgOriName(pi_oriName);
		}
		switch (pd_cate) {
		case "의류":
			view = "prodList_Clo";
			break;
		case "가방":
			view = "prodList_Bag";	
				break;
		case "신발":
			view = "prodList_shoes";
			break;
		case "지갑":
			view = "prodList_Wallet";
			break;
		case "벨트":
			view = "prodList_Belt";
			break;
		case "장갑":
			view = "prodList_Gloves";
			break;
		case "가구":
			view = "prodList_House";
			break;
		case "기타 악세사리":
			view = "prodList_Etc";
			break;
		}
		
		mav.addObject("pdList",pdList);
		mav.setViewName(view);
		return mav;
	}

	

	/* ---------------------------------------------------------------------------------------
	 * 기능: 상품 상세정보 보기
	 * 작성자: JWJ
	 * 작성일: 2020.02.11
	 -----------------------------------------------------------------------------------------*/

	public ModelAndView getprodDetail(int pd_code) {
		mav = new ModelAndView();
		PD_productDto prodDto = cm_Dao.getprodDetail(pd_code);
			String pi_oriName = cm_Dao.getPi_oriName(pd_code);
			int at_num = cm_Dao.getAt_num(prodDto.getPd_at_name());
			prodDto.setImgOriName(pi_oriName);
			
			mav.addObject("at_num",at_num);
			mav.addObject("prodDto",prodDto);
			mav.setViewName("prodDetail");
		
		return mav;
	}
	
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 장바구니 담기
	 * 작성자: JWJ
	 * 작성일: 2020.02.12
	 -----------------------------------------------------------------------------------------*/
	public String insertbasket(String bt_count, String bt_pd_code) {
		String insertChk = null;
		BT_Dto btDto = new BT_Dto();
		int btCount = Integer.parseInt(bt_count);
		int btPdCode = Integer.parseInt(bt_pd_code);
		CM_Dto cmDto = (CM_Dto) session.getAttribute("mb");
		String AT_id = cmDto.getCm_id();
		PD_productDto prodDto = atDao.getModifyProd(btPdCode);
		String bt_at_name = prodDto.getPd_at_name();
		int bt_price = prodDto.getPd_price();
		
		btDto.setBt_cm_id(AT_id);
		btDto.setBt_at_name(bt_at_name);
		btDto.setBt_price(bt_price);
		btDto.setBt_count(btCount);
		btDto.setBt_pd_code(btPdCode);
		
		cm_Dao.insertbasket(btDto);
		
		insertChk = "insertChkSuccess";
		return insertChk;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
