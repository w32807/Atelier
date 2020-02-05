package com.atelier.at.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.at.service.AT_Service;
import com.atelier.dto.AG_Dto;
import com.atelier.main.service.CM_Service;

import lombok.Setter;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AT_Controller {
	
	ModelAndView mav;

	@Setter(onMethod_ = @Autowired)
	private HttpSession session;

	@Setter(onMethod_ = @Autowired)
	AT_Service mServ;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/*-------------------------------------------------------------------
	 * 기   능 : 공방 신청 페이지로 이동
	 * 작성일 : 
	 * 수정일 :
	 * 작업자 : 정성규
	 -------------------------------------------------------------------*/
//	@GetMapping("ATRegist")
//	public String goATRegist() {
//		return "ATRegist";
//	}
	
	/*-------------------------------------------------------------------
	 * 기   능 : 공방 신청 요청 처리
	 * 작성일 : 
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
	
	@GetMapping("ATSupportMg")//응원의 메세지로 이동하는 메소드
	public String goATSupportMg() {
		return "ATSupportMg";
	}
	
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
	

	@GetMapping("ATProdManage")//제품 목록 관리에서(ATProdManage)로 넘어가는 메소드
	public String goATProdManage() {
		
		return "ATProdManage";
	}
	
	@GetMapping("ATProdRegist")//제품 목록 관리에서(ATProdManage)에서 제품 메뉴 제작 페이지로 넘어가는 메소드
	public String prodMake() {
		
		return "ATProdRegist";
	}
	
	@GetMapping("prodSellRegist")//제품 목록 관리에서 판매 등록을 위한 메소드
	public String prodSellRegist(HttpServletRequest request) {
		//여기의 작업은 service에서  처리해도 됩니다. 일단 써놨습니다.
		//페이징 처리도 해주세요.
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴(상품의 상품코드를 가져옴)
		
		return "ATProdManage";//상품의 판매등록을 하고 난 뒤 다시 제품관리 페이지로 넘어감
	}
	
	@GetMapping("prodRegistCancle")//제품 목록 관리에서 판매 등록 해제를 위한 메소드
	public String prodRegistCancle(HttpServletRequest request) {
		//여기의 작업은 service에서  처리해도 됩니다. 일단 써놨습니다.
		//페이징 처리도 해주세요.
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴(상품의 상품코드를 가져옴)
		
		return "ATProdManage";//상품의 판매등록을 하고 난 뒤 다시 제품관리 페이지로 넘어감
	}
	
	@GetMapping("Prodmodify")//제품 목록 관리에서 1개의 상품을 선택하여 수정을 하기 위한 메소드
	public String modifyProd(HttpServletRequest request) {
		String modifyProd = request.getParameter("prod");//1개의 선택된 체크박스를 가져옴
		
		return "ATProdRegist";//수정할 상품의 정보를 가지고 제품관리 페이지로 넘어가 띄워줌
	}
	
	@GetMapping("prodDelete")//제품 목록 관리에서 여러 상품을 선택하여 삭제를 하기 위한 메소드
	public String prodDelete(HttpServletRequest request) {
		//여기의 작업은 service에서  처리해도 됩니다. 일단 써놨습니다.
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴
		
		
		return "ATProdManage";
	}
//	@GetMapping("prodDetail")//제품 목록 관리에서 1개의 상품 상세보기를 위한 메소드
//	public String goprodDetail(HttpServletRequest request) {
//		String pd_code = request.getParameter("PD_CODE");//form태그로 넘어온 상품 코드의 정보.
//		//제품관리 페이지에서 하나의 상품의 상세보기를 선택하면, 상품 세부정보 페이지로 이동
//		return "prodDetail";
//	}
	
	@GetMapping("ATOrderState")//주문 상태 조회 페이지로 넘어가는 메소드
	public String goATOrderState() {
		//주문 테이블의 컬럼들을 가져와 ATOrderState.jsp로 가져가서 출력합니다.
		
		
		
		return "ATOrderState";
	}
	
	
	@GetMapping("chgDeliveryState")
	public String chgDeliveryState(HttpServletRequest request) {
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴(상품의 상품코드를 가져옴)
		//체크박스에 담겨있는 value 들을 가지고 DB의 주문테이블에서 해당 주문에 대한 배송상태를 변경한다.
		return "chgDeliveryState";
	}
	@GetMapping("ATMessageWrite")
	public String ATMessageWrite() {
		return "ATMessageWrite";
	}
	
	@GetMapping("ATMessageRQ")
	public String ATMessageRQ() {
		return "ATMessageRQ";
	}
	
}
