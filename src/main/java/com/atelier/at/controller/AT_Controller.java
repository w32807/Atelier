package com.atelier.at.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.at.service.AT_Service;
import com.atelier.dto.AG_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.dto.PI_productImgDto;
import com.atelier.dto.SM_Dto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class AT_Controller {
	
	ModelAndView mav;

	@Setter(onMethod_ = @Autowired)
	private HttpSession session;

	@Setter(onMethod_ = @Autowired)
	AT_Service mServ;
	
	@Setter(onMethod_ = @Autowired)
	AT_Service atServ;
	
	
	/*-------------------------------------------------------------------
	 * 기   능 : 공방 신청 요청 처리
	 * 작성일 : 20.02.05
	 * 수정일 :
	 * 작업자 : 정성규
	 -------------------------------------------------------------------*/
	@PostMapping("ATRegistProc")
	public String ATRegistProc(AG_Dto agDto, RedirectAttributes rttr) {
		//String goMain;
		mServ.ATRegistProc(agDto, rttr);
		
		return "main";
	}
	
	
	
	
	//--------------------------------------------------------------------------------------------
	// 책임자 : 김예희
	//--------------------------------------------------------------------------------------------


	@GetMapping("ATDetail")//공방 상세 페이지로 이동하는 메소드
	public String goATDetail() {
		return "ATDetail";
	}
	
	@GetMapping("ATMain")//공방 메인 페이지로 이동하는 메소드
	public String goATMain() {
		return "ATMain";
	}
	
	@GetMapping("ATNotice")//공방 공지사항으로 이동하는 메소드
	public String goATNotice() {
		return "ATNotice";
	}
	
	@GetMapping("ATNoticeDetail")//공방 공지사항 상세페이지로 이동하는 메소드
	public String goATNoticeDetail() {
		return "ATNoticeDetail";
	}
	
	/*
	 * @GetMapping("ATSupportMg")//응원의 메세지로 이동하는 메소드 public String goATSupportMg() {
	 * return "ATSupportMg"; }
	 */
	
	@GetMapping("ATProduct")//판매물품으로 이동하는 메소드
	public String goATProduct() {
		return "ATProduct";
	}
	
	
	@GetMapping("ATManager")//공방 관리로 이동하는 메소드
	public String goATManager() {
		return "ATManager";
	}
	
	@GetMapping("ATInfoModify")//공방 수정으로 이동하는 메소드
	public String goATInfoModify() {
		return "ATInfoModify";
	}
	
	
	//--------------------------------------------------------------------------------------------
	// 책임자 : 장원준
	//--------------------------------------------------------------------------------------------
	
	@GetMapping("ATOrderRequest")//공방 거래처 조회 및 발주 페이지로 이동
	public String goATCheckOrder(){
		return "ATOrderRequest";
	}
	@GetMapping("ATOrder")//거래처 조회 및 발주신청 페이지에서 발주(주문)를 하기 위한 메소드
	public String gorawOrder(HttpServletRequest request) {
		//여기의 작업은 service에서  처리해도 됩니다. 일단 써놨습니다.
		
		
		//발주를 위한 데이터들이 넘어옴
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴
		if (chkedBoxArr == null) {
			//발주신청한 품목이 없음..
		} else {
			//발주를 신청한 품목이 있다면
			for(String chkedBoxValue : chkedBoxArr) {
				String numOfprod = request.getParameter("chkedBoxValue");//해당 상품의 수량을 가져옴
				int numOfProd = Integer.parseInt(numOfprod);//넘어온 수량은 String이지만 계산을 위해 int로 변환
			}
		}
		return null;
	}
	
	
	@GetMapping("ATOrderSearch")//발주 조회에서 넘어오는 취소목록을 취소하는 메소드
	public String rawCancleList(HttpServletRequest request) {
		//여기의 작업은 service에서  처리해도 됩니다. 일단 써놨습니다.
		
		
		//취소를 위한 데이터들이 넘어옴
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴
		if (chkedBoxArr == null) {
			//취소신청한 품목이 없음..
			//사실 jsp의 자바스크립트에서 체크를 안 했을시의 처리를 했음.
		} else {
			//취소를 신청한 품목이 있다면
			for(String chkedBoxValue : chkedBoxArr) {
				String numOfOrder = request.getParameter("chkedBoxValue");//해당 상품의 주문번호를 가져옴
				//주문번호를 이용한 취소처리...
				//취소를 하고 다시 ATCheckOrder로 가면 될 것 같습니다.
			}
		}
		return "ATOrderSearch";
	}
	

	/* ---------------------------------------------------------------------------------
	  * 기능: 제작한 상품 리스트 전체 출력
	  * 작성자: KYH
	  * 작성일 : 2019.02.05
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ATProdManage")
	public ModelAndView getATProdList(Integer pageNum, Integer maxNum) {
		log.warn("제작한 상품 리스트 전체 출력 컨트롤러");
		mav = atServ.getATProdList(pageNum, maxNum);
		
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 판매 등록한 상품 리스트 출력
	  * 작성자: KYH
	  * 작성일 : 2019.02.06
	  -----------------------------------------------------------------------------------*/
	@PostMapping("ATProdRegistTrueList")
	public ModelAndView getATProdRegistTrueList(Integer pageNum, Integer maxNum) {
		log.warn("판매 등록한 상품 리스트 출력 컨트롤러");
		mav = atServ.getATProdRegistTrueList(pageNum, maxNum);
		
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 제품 목록 관리에서 판매 등록 해제 처리
	  * 작성자: KYH
	  * 작성일 : 2019.02.06
	  -----------------------------------------------------------------------------------*/
	@PostMapping("prodRegistCancle")
	public ModelAndView prodRegistCancleProc(PD_productDto pdDto, HttpServletRequest request, RedirectAttributes rttr) {
		log.warn("판매 등록해제 컨트롤러");
		String[] checkedBoxArr = request.getParameterValues("prodChk");
		
		mav = atServ.prodRegistCancleProc(pdDto, checkedBoxArr, rttr);
		
		return mav;
	}
	
	@GetMapping("ATProdRegist")//제품 목록 관리에서(ATProdManage)에서 제품 메뉴 제작 페이지로 넘어가는 메소드
	public String prodMake() {
		
		return "ATProdRegist";
	}
	
	 /* ---------------------------------------------------------------------------------
	  * 기능: 제품 관리의 상품 등록하기
	  * 작성자: JWJ
	  * 작성일 : 2019.02.05
	  -----------------------------------------------------------------------------------*/
	@PostMapping("ATProdInsert")
	public String ATProdInsert(MultipartHttpServletRequest multi, RedirectAttributes rttr) {
		String view = null;
		view = atServ.ATProdInsert(multi,rttr);
		return view;
	}
	
	 /* ---------------------------------------------------------------------------------
	  * 기능: 선택한 상품의 판매여부를 판매 (T)로 전환
	  * 작성자: JWJ
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@PostMapping("prodRegist")
	public String prodSellRegist(HttpServletRequest request, RedirectAttributes rttr) {
		
		String[] chkedBoxArr = request.getParameterValues("prodChk");//체크박스의 값들이 넘어옴(상품의 상품코드를 가져옴)
		String view = atServ.changeProdRegist(chkedBoxArr,rttr);
		return "ATProdManage";//상품의 판매등록을 하고 난 뒤 다시 제품관리 페이지로 넘어감
	}
	
	 /* ---------------------------------------------------------------------------------
	  * 기능: 상품 정보 수정하기 위해 선택한 상품을 불러오는 기능
	  * 작성자: JWJ
	  * 작성일 : 2019.02.06
	  -----------------------------------------------------------------------------------*/
	@PostMapping("Prodmodify")
	public ModelAndView modifyProd(MultipartHttpServletRequest multi) {
		mav = atServ.goModifyProd(multi);
		
		return mav;
	}
	
	 /* ---------------------------------------------------------------------------------
	  * 기능: 상품 정보 수정
	  * 작성자: JWJ
	  * 작성일 : 2019.02.06
	  -----------------------------------------------------------------------------------*/
	@PostMapping("ProdModifyUpdate")
	public String prodModifyUpdate(MultipartHttpServletRequest multi,RedirectAttributes rttr) {
		String view = null;
		view = atServ.updateProd(multi,rttr);
		
		return view;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 선택한 상품을 삭제
	  * 작성자: JWJ
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@PostMapping("prodDelete")//제품 목록 관리에서 여러 상품을 선택하여 삭제를 하기 위한 메소드
	public String prodDelete(HttpServletRequest request,RedirectAttributes rttr) {
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴
		String view = atServ.deleteProd(chkedBoxArr,rttr);
		
		return view;
	}
//	@GetMapping("prodDetail")//제품 목록 관리에서 1개의 상품 상세보기를 위한 메소드
//	public String goprodDetail(HttpServletRequest request) {
//		String pd_code = request.getParameter("PD_CODE");//form태그로 넘어온 상품 코드의 정보.
//		//제품관리 페이지에서 하나의 상품의 상세보기를 선택하면, 상품 세부정보 페이지로 이동
//		return "prodDetail";
//	}
	 /* ---------------------------------------------------------------------------------
	  * 기능: 주문 상태 조회 페이지로 이동
	  * 작성자: JWJ
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@GetMapping("ATOrderState")
	public ModelAndView goATOrderState(HttpServletRequest request) {
		String orderState = request.getParameter("orderState");
		mav = atServ.getATOrdetList(orderState);
		
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 선택한 주문 내역의 배송상태를 변경
	  * 작성자: JWJ
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	@GetMapping("chgDeliveryState")
	public String chgDeliveryState(HttpServletRequest request,RedirectAttributes rttr) {
		String[] chkedBoxArr = request.getParameterValues("po_num");//체크박스의 값들이 넘어옴(상품의 상품코드를 가져옴)
		String view = atServ.chgDeliveryState(chkedBoxArr,rttr);
		return view;
	}
	
	@GetMapping("ATMessageWrite")
	public String ATMessageWrite() {
		return "ATMessageWrite";
	}
	
	@GetMapping("ATMessageRQ")
	public String ATMessageRQ() {
		return "ATMessageRQ";
	}
	
	/*-------------------------------------------------------------------
	 * 기능 : 응원의 한마디
	 * 책임자 : 김병현, 김종현
	 * 작성일 : 2020.02.06		최종수정일 : 2020.02.06
	 ------------------------------------------------------------------- */

	   @GetMapping("ATSupportMg")//응원의 메세지로 이동하는 메소드 public String goATSupportMg() {
	   public ModelAndView getSupportMg(SM_Dto reply) {
		   log.warn("ATSupportMg()");
		   mav = mServ.getSupportMg(reply);
		   
		   return mav;
	   }
	
	   //응원의 한마디 ajax
		@PostMapping(value = "/supportMGInsert", produces = "application/json; charset=utf-8")
		//	//text/html은 텍스트이고 html이다.
		//	//시스템에서 만든 것이고 json이다 라는 뜻.
		//	//dispather를 안 거치고 바로 html로 보냄
		//	//model을 써야만 디스패처서블릿을 간다.
		@ResponseBody
		public Map<String, List<SM_Dto>> supportMGInsert(SM_Dto reply){
		Map<String, List<SM_Dto>> rmap = mServ.replyInsert(reply);
	
			return rmap;
		}
	
		@GetMapping("chgOrderList")
		public ModelAndView chgOrderList(HttpServletRequest request) {
			String orderState = request.getParameter("orderState");
		    log.warn(orderState);
		    mav = atServ.getATOrdetList(orderState);
			return mav;
		}
		
}
