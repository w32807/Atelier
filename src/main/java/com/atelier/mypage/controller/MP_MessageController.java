package com.atelier.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.dto.MG_Dto;
import com.atelier.mypage.service.MP_MessageService;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MP_MessageController {

	ModelAndView mav;
	
	@Setter(onMethod_=@Autowired)
	MP_MessageService mServ;
	
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 받은 쪽지 출력 메소드
	 * 작성자: KBH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("messager")
	public ModelAndView Messager(String pageNum) {
		log.warn("와옹아ㅏ앙");
		mav = mServ.Messager(pageNum);
		
		return mav;
		
	}
	
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 쪽지 답장기능 메소드
	 * 작성자: KBH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("myMessageWrite")
	public ModelAndView myMessageWrite(Integer mg_num) {
		log.warn("와옹아ㅏ앙");
		mav = mServ.myMessageWrite(mg_num);
		
		return mav;
		
	}
	
	
	
	
	// 메세지 보내기 버튼 
	@GetMapping("messageSendBtn")
	public ModelAndView MessageSendBtn(MG_Dto mDto) {
		
		
		mav = mServ.MessageSendBtn(mDto);
		
		
		return mav;
	}
	
	/*
	 * @PostMapping(value = "messageSendBtn", produces =
	 * "application/json; charset=utf-8")
	 * 
	 * @ResponseBody public Map<String , List<PO_Dto>> MessageSendBtn(MG_Dto mDto){
	 * log.warn("aa"); Map <String , List<PO_Dto>> poMap = mServ.getOrder(mDto);
	 * 
	 * 
	 * return poMap;
	 * 
	 * }
	 */

	
	
	
}
