
package com.atelier.co.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.co.service.CO_Service;
import com.atelier.main.controller.MainController;
import com.atelier.main.service.CM_Service;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CO_Controller {

	@Setter(onMethod_ = @Autowired)
	private HttpSession session;

	@Setter(onMethod_ = @Autowired)
	CO_Service mServ;
	
	ModelAndView mav;//service에서 넘어오는 ModelandView를 받기 위한 변수
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 고객센터 공지사항 리스트 처리
	 * 작성자: JSG
	 * 작성일: 2020.02.05
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("CONotice")
	public ModelAndView noticeList(Integer pageNum) {
		//log.info("boardList()");
		mav = mServ.getNoticeList(pageNum);

		return mav;
	}
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 고객센터 공지사항 상세정보 처리
	 * 작성자: JSG
	 * 작성일: 2020.02.05
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("CONoticeContents")//get방식으로 전송되는 method. 
	public ModelAndView noticeContents(Integer Noticenum) {
		//log.info("boardList()");
		mav = mServ.getNoticeContents(Noticenum);

		return mav;
	}
	
	
}//class end