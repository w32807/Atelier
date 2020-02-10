package com.atelier.ad.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.ad.service.AD_Service;
import com.atelier.dto.AD_MaterialDto;
import com.atelier.dto.AG_Dto;
import com.atelier.dto.CM_Dto;
import com.atelier.dto.CO_NoticeDto;
import com.atelier.dto.FT_FAQDto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class AD_controller {
	
	ModelAndView mav;
	
	@Setter(onMethod_ = @Autowired)
	AD_Service aServ;
	
//	@GetMapping("CONotice")
//	public String goCONotice() {
//		return "CONotice";
//	}
	
	@GetMapping("ADNotice")
	public String goADNotice() {
		return "ADNotice";
	}
	
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 공지사항 전체 출력
	  * 작성자: KYH
	  * 작성일 : 2019.02.01
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ADNoticeList")
	public ModelAndView getADNoticeList(Integer pageNum, Integer maxNum) {
		log.warn("공지사항 컨트롤러");
		mav = aServ.getADNoticeList(pageNum, maxNum);
		
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 공지사항 상세내용 보기 및 조회수 증가
	  * 작성자: KYH
	  * 작성일 : 2019.02.04
	  -----------------------------------------------------------------------------------*/
	 @GetMapping("ADNoticeContents")
	 public ModelAndView goADNoticeContents(Integer nt_num) {
		 //log.warn("공지사항 상세내용 컨트롤러");
		 mav = aServ.getADNoticeDetail(nt_num);
		 
		 return mav;
	 }
	 
	 /* ---------------------------------------------------------------------------------
	  * 기능: 공지사항 수정
	  * 작성자: KYH
	  * 작성일 : 2019.02.05
	  -----------------------------------------------------------------------------------*/
	 @PostMapping("ADNoticeUpdate")
	 public String goADNoticeUpdate(CO_NoticeDto ntdto) {
		//log.warn("공지사항 수정 컨트롤러");
		 String view = null;
		 view = aServ.goADNoticeUpdate(ntdto);
		 
		 log.warn(ntdto.getNt_title()+ntdto.getNt_contents());
		 
		 return view;
	 }
	 
	 /* ---------------------------------------------------------------------------------
	  * 기능: 공지사항 삭제
	  * 작성자: KYH
	  * 작성일 : 2019.02.05
	  -----------------------------------------------------------------------------------*/
	 @PostMapping("ADNoticeDelete")
	 public ModelAndView ADNoticeDelete(CO_NoticeDto ntdto, HttpServletRequest request, RedirectAttributes rttr) {
		 log.warn("공지사항 삭제 컨트롤러");
		 String[] checkedBoxArr = request.getParameterValues("NoticeChk");
		 mav = aServ.ADNoticeDelete(ntdto, checkedBoxArr, rttr);
		 return mav;
	 }
	 
	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ 출력 
	  * 작성자: JWJ
	  * 작성일 : 2019.02.02
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ADFAQ")
	public ModelAndView goADFAQ(Integer pageNum , Integer maxNum) {
		mav = aServ.getFAQList(pageNum,maxNum);
		return mav;
	}
	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ 상세보기
	  * 작성자: JWJ
	  * 작성일 : 2019.02.02
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ADFAQContents")
	public ModelAndView goADFAQContents(FT_FAQDto faq) {
		mav = aServ.getFAQDetail(faq);
		return mav;
	}
	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ 수정
	  * 작성자: JWJ
	  * 작성일 : 2019.02.02
	  -----------------------------------------------------------------------------------*/
	@PostMapping("FAQupdate")
	public String FAQupdate(FT_FAQDto faq, RedirectAttributes rttr) {
		String view = null;
		view = aServ.FAQupdate(faq, rttr);
		
		return view;
	}
	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ 삭제
	  * 작성자: JWJ
	  * 작성일 : 2019.02.03
	  -----------------------------------------------------------------------------------*/
	@PostMapping("delFAQ")
	public ModelAndView delFAQ(HttpServletRequest request, RedirectAttributes rttr) {
		String[] chkedBoxArr = request.getParameterValues("FAQchk");
		mav = aServ.delFAQ(chkedBoxArr,rttr);
		
		return mav;
	}

	/* ---------------------------------------------------------------------------------
	  * 기능: 공방회원신청서 화면으로 이동
	  * 작성자: JSG
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ADATMemberUp")
	public ModelAndView goADATMemberUp(AG_Dto agDto) {
		mav = aServ.getApplicant(agDto);
		return mav;
	}
	
	 /* ---------------------------------------------------------------------------------
	  * 기능: 공방회원신청서 결과 처리
	  * 작성자: JSG
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ATMemberUpCheck")
	public ModelAndView ATMemberUpCheck(String check, String id) {

		String ADATMemberUp = aServ.ATMemberCheckProc(check, id);
		mav.setViewName(ADATMemberUp);
		return mav;
	}
	
	@GetMapping("ADATList")
	public String goADATList() {
		return "ADATList";
	}
	
	@GetMapping("ADProdManage")
	public String goADProdManage() {
		return "ADProdManage";
	}	
	
	@GetMapping("ADMessageContents")
	public String goADMessageContents() {
		return "ADMessageContents";
	}
	
	@GetMapping("ADCompanyInsert")
	public String goADCompanyInsert() {
		return "ADCompanyInsert";
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 원자재 등록 컨트롤러
	  * 작성자: JSH
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@PostMapping("MaterialInsert")
	public ModelAndView MaterialInsert(AD_MaterialDto material, RedirectAttributes rttr) {
		mav = aServ.MaterialInsert(material, rttr);
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 원자재 리스트 출력
	  * 작성자: JSH
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ADCompany")
	public ModelAndView ADCompany(Integer adcPageNum) {
		log.warn("원자재 리스트 출력 컨트롤러 시작");
		mav = aServ.getADCompanyList(adcPageNum);
		return mav;
	}
	
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 메세지 리스트 출력
	  * 작성자: KBH
	  * 작성일 : 2010.02.10
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ADMessage")
		public ModelAndView goADMessage(String mg_receiver) {
			
			mav = aServ.goADMessage(mg_receiver);
			
			return mav;
		}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 원자재 수정 / 기존 데이터 입력
	  * 작성자: JSH
	  * 작성일 : 2019.02.10
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ADCompanyFix")
	public ModelAndView ADCompanyFix(Integer RM_NUM) {//form에서 넘겨주는 name과 controller의 매개변수 명과 같아야 한다.
		log.info("원자재 수정 컨트롤러 시작");
		mav = aServ.getADCompanyFix(RM_NUM);
		
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 원자재 수정 / 업데이트
	  * 작성자: JSH
	  * 작성일 : 2019.02.10
	  -----------------------------------------------------------------------------------*/
		@PostMapping("MaterialFix")
		public ModelAndView MaterialFix(AD_MaterialDto material, RedirectAttributes rttr) {//form에서 넘겨주는 name과 controller의 매개변수 명과 같아야 한다.
			log.info("원자재 수정 컨트롤러 시작");
			mav = aServ.MaterialFix(material, rttr);
			
			return mav;
		}
}