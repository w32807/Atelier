package com.atelier.main.controller;


import java.util.Locale;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dto.CM_Dto;
import com.atelier.main.service.CM_Service;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class MainController {

	ModelAndView mav;

	@Setter(onMethod_ = @Autowired)
	private HttpSession session;

	@Setter(onMethod_ = @Autowired)
	CM_Service mServ;
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		log.info("1번");
		return "main";
	}
	/* ---------------------------------------------------------------------------------------
	 * 기능: 로그인창 출력 메소드
	 * 작성자: JSG
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("login")
	public String login() {
		return "login";
	}

	/* ---------------------------------------------------------------------------------------
	 * 기능: 아이디 입력 후 로그인 프로세스 처리
	 * 작성자: JSG
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	@PostMapping("loginProc")
	public ModelAndView login(CM_Dto cmDto, RedirectAttributes rttr) {
		mav = mServ.loginProc(cmDto, rttr);
		return mav;
	}

	/* ---------------------------------------------------------------------------------------
	 * 기능: 로그아웃 프로세스
	 * 작성자: JSG
	 * 작성일: 2020.02.04
	-----------------------------------------------------------------------------------------*/
	@GetMapping("logout")
	public ModelAndView logout() {
		mServ.logoutProc(session);
		//mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("msg","logoutSuccess");
		return mav;
	}

	//회원가입창 출력
	@RequestMapping(value = "/memJoinFrm", method = RequestMethod.GET)
	public String memJoinFrm(Locale locale, Model model) {

		return "memJoinFrm";
	}

	/* ---------------------------------------------------------------------------------------
	 * 기능: 회원 가입 컨트롤러
	 * 작성자: JSH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	@PostMapping("memberInsert")
	public ModelAndView memberInsert(CM_Dto member, RedirectAttributes rttr) {
		mav = mServ.memberInsert(member, rttr);
		log.warn("memberInsert()");
		return mav;
	}

	/* ---------------------------------------------------------------------------------------
	 * 기능: 회원 가입 / 아이디 유효성 검사 컨트롤러
	 * 작성자: JSH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	@RequestMapping(value = "/memJoinFrm/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("CM_ID") String CM_ID) {
		log.warn(CM_ID);
		return mServ.userIdCheck(CM_ID);
	}
	/* ---------------------------------------------------------------------------------------
	 * 기능: 장바구니 담기
	 * 작성자: JWJ
	 * 작성일: 2020.02.12
	 -----------------------------------------------------------------------------------------*/
	 @GetMapping(value = "insertbasket", produces="application/text; charset=utf-8")
	 @ResponseBody
	  public String basket(String bt_count, String bt_pd_code){

		 String insertChk = mServ.insertbasket(bt_count,bt_pd_code);
		 String jsonInsert = "{\"result\":\"" + insertChk + "\"}";
		 return jsonInsert;
	  }
	 
	//HOME
	//Shop Home
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {

		return "main";
	}
	//Atelier Home


	/* ---------------------------------------------------------------------------------------
	 * 기능: 상품 목록 전체 보기
	 * 작성자: JWJ
	 * 작성일: 2020.02.10
	 -----------------------------------------------------------------------------------------*/
	@RequestMapping(value = "prodList_All", method = RequestMethod.GET)
	public ModelAndView product_All(Locale locale, Model model) {
		mav = mServ.getproduct_AllList();
		
		return mav;
	}
	

	/* ---------------------------------------------------------------------------------------
	 * 기능: 상품별 목록 보기
	 * 작성자: JWJ
	 * 작성일: 2020.02.10
	 -----------------------------------------------------------------------------------------*/
	@RequestMapping(value = {"prodList_Clo","prodList_Bag","prodList_shoes","prodList_Wallet","prodList_Belt"
			,"prodList_Gloves","prodList_House","prodList_Etc"}, method = RequestMethod.GET)
	public ModelAndView product_Clo(String pd_cate) {
		mav = mServ.getProdList(pd_cate);
		
		return mav;
	}

	/*
	 * //가방보기
	 * 
	 * @RequestMapping(value = "prodList_Bag", method = RequestMethod.GET) public
	 * String prodList_Bag(Locale locale, Model model) {
	 * 
	 * return "prodList_Bag"; } //신발보기
	 * 
	 * @RequestMapping(value = "prodList_shoes", method = RequestMethod.GET) public
	 * String product_shoes(Locale locale, Model model) {
	 * 
	 * return "prodList_shoes"; } //지갑보기
	 * 
	 * @RequestMapping(value = "prodList_Wallet", method = RequestMethod.GET) public
	 * String product_Wallet(Locale locale, Model model) {
	 * 
	 * return "prodList_Wallet"; } //벨트보기
	 * 
	 * @RequestMapping(value = "prodList_Belt", method = RequestMethod.GET) public
	 * String product_Belt(Locale locale, Model model) {
	 * 
	 * return "prodList_Belt"; } //장갑보기
	 * 
	 * @RequestMapping(value = "prodList_Gloves", method = RequestMethod.GET) public
	 * String product_Gloves(Locale locale, Model model) {
	 * 
	 * return "prodList_Gloves"; } //가구보기
	 * 
	 * @RequestMapping(value = "prodList_House", method = RequestMethod.GET) public
	 * String product_House(Locale locale, Model model) {
	 * 
	 * return "prodList_House"; } //기타보기
	 * 
	 * @RequestMapping(value = "prodList_Etc", method = RequestMethod.GET) public
	 * String product_Etc(Locale locale, Model model) {
	 * 
	 * return "prodList_Etc"; }
	 */
	
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 상품 상세정보 보기
	 * 작성자: JWJ
	 * 작성일: 2020.02.11
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("prodDetail")
	public ModelAndView prodDetail(int pd_code) {
		mav = mServ.getprodDetail(pd_code);
		return mav;
	}
	//상품구매
	@RequestMapping(value = "prodBuy", method = RequestMethod.GET)
	public String prodBuy(Locale locale, Model model) {

		return "prodBuy";
	}

	//myPage
	@GetMapping("myPage")
	public String myPage() {
		return "myPage";
	}

	//비밀번호변경
	@GetMapping("myChangePwd")
	public String myChangePwd() {
		return "myChangePwd";
	}
	//내정보수정
	@GetMapping("myInfoUpdate")
	public String myInfoUpdate() {
		return "myInfoUpdate";
	}

	/* ---------------------------------------------------------------------------------------
	 * 기능: 공방회원 신청 페이지로 이동
	 * 작성자: JSG
	 * 작성일: 2020.02.07
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("ATRegist")
	public ModelAndView ATRegist(String id, RedirectAttributes rttr) {
		mav = new ModelAndView();
		mav = mServ.registCheck(id, rttr);
		return mav;
	}

	/*
	 * //마이페이지의 주문내역에서 취소신청을 눌렀을 때.
	 * 
	 * @GetMapping("orderCancle") public String orderCancle() { return "myOrder"; }
	 */
	//구독 리스트 출력
	@RequestMapping(value = "mySubscript", method = RequestMethod.GET)
	public String mySubscript(Locale locale, Model model) {

		return "mySubscript";
	}
	//	관리자에게 문의하기
	@GetMapping("myAdminRQ")
	public String myAdminRQ() {
		return "myAdminRQ";
	}
	
}
