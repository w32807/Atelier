package com.atelier.at.service;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.AT_Dao;
import com.atelier.dao.NT_Dao;
import com.atelier.dao.PD_Dao;
import com.atelier.dao.RM_Dao;
import com.atelier.dao.RO_Dao;
import com.atelier.dto.AG_Dto;
import com.atelier.dto.CM_Dto;
import com.atelier.dto.NT_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.dto.PI_productImgDto;
import com.atelier.dto.PO_Dto;
import com.atelier.dto.RM_Dto;
import com.atelier.dto.RO_Dto;
import com.atelier.dto.SM_Dto;
import com.atelier.util.PD_Paging;
import com.atelier.util.Paging;
import com.atelier.vo.PO_Vo;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AT_Service {

	ModelAndView mav;

	@Setter(onMethod_ = @Autowired)
	AT_Dao atDao;

	@Setter(onMethod_ = @Autowired)
	PD_Dao pdDao;
	
	@Setter(onMethod_ = @Autowired)
	RO_Dao roDao;
	
	@Setter(onMethod_ = @Autowired)
	RM_Dao rmDao;
	
	@Setter(onMethod_ = @Autowired)
	private HttpSession session;
	
	@Setter(onMethod_ = @Autowired)
	NT_Dao ntDao;

	/*
	 * -----------------------------------------------------------------------------
	 * 		 기능: 제작한 상품 리스트 전체 출력 
	 * 		작성자: KYH 
	 * 		작성일 : 2019.02.05
	 * ----------------------------------------------------------------------------- */
	
	public ModelAndView getATProdList(Integer pageNum, Integer maxNum) {
		//세션에 있는 아이디로, AT의 AT_STATE를 가져와서, 활성이면 진행, 아니면 못들어감.
		CM_Dto cmDto = (CM_Dto) session.getAttribute("mb");
		String pd_at_id = cmDto.getCm_id();
		String at_state = atDao.getAt_state(pd_at_id);
		
		if(at_state.equals("활성")) {
		
			mav = new ModelAndView();
	
			int num = (pageNum == null) ? 1 : pageNum;
			maxNum = pdDao.getATProdListCount();
			Map<String, Object> pageInt = new HashMap<String, Object>();
			pageInt.put("pageNum", num);
			pageInt.put("maxNum", maxNum);
			pageInt.put("pd_at_id",pd_at_id);
			
			List<PD_productDto> pd = pdDao.getATProdList(pageInt);
	
			mav.addObject("pd", pd);
			mav.addObject("paging", getATProdPaging(num));
			session.setAttribute("pageNum", num);
	
			mav.setViewName("ATProdManage");
		}else {
			mav.setViewName("예외페이지로 넘어갑니다!");
		}
		
		return mav;
	}

	/*
	 * -----------------------------------------------------------------------------
	 * 		기능: 판매 등록한 상품 리스트 출력 
	 * 		작성자: KYH 
	 * 		작성일 : 2019.02.06
	 * ----------------------------------------------------------------------------- */
	
	public ModelAndView getATProdRegistTrueList(Integer pageNum, Integer maxNum) {
		mav = new ModelAndView();

		int num = (pageNum == null) ? 1 : pageNum;
		maxNum = pdDao.getATProdListCount();
		Map<String, Integer> pageInt = new HashMap<String, Integer>();
		pageInt.put("pageNum", num);
		pageInt.put("maxNum", maxNum);
		List<PD_productDto> pd = pdDao.getATProdRegistTrueList(pageInt);

		mav.addObject("pd", pd);
		mav.addObject("paging", getATProdPaging(num));
		session.setAttribute("pageNum", num);

		mav.setViewName("ATProdManage");
		return mav;
	}

	/*
	 * -----------------------------------------------------------------------------
	 *  	기능: 판매등록 Paging 처리 
	 *  	작성자: KYH 
	 *  	작성일 : 2019.02.05
	 * ----------------------------------------------------------------------------- */
	
	private Object getATProdPaging(int num) {
		// 전체 글 개수 구하기(from DB)
		int maxNum = pdDao.getATProdListCount();
		int listCount = 9; // 페이지 당 글 개수
		int pageCount = 5; // 그룹 당 페이지 개수
		String listName = "ATProdManage";
		PD_Paging paging = new PD_Paging(maxNum, num, listCount, pageCount, listName);
		String pagingHtml = paging.makeHtmlPaging();

		return pagingHtml;
	}

	/*
	 * -----------------------------------------------------------------------------
	 *  	기능: 제품 목록 관리에서 판매 등록 해제 처리
	 *  	작성자: KYH 
	 *  	작성일 : 2019.02.06
	 * ----------------------------------------------------------------------------- */
	
	public ModelAndView prodRegistCancleProc(PD_productDto pdDto, String[] checkedBoxArr, RedirectAttributes rttr) {

		for (String pd_code : checkedBoxArr) {
			pdDao.prodRegistCancle(pd_code);
		}

		mav = new ModelAndView();
		mav.setViewName("redirect:ATProdManage");
		rttr.addFlashAttribute("check", "판매등록 해제 완료!");

		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	 * 기능: 발주 조회 리스트 출력 메소드(발주조회 페이지 만드시는 분 수정하세욤!!!)
	 * 작성자: KYH
	 * 작성일 : 2019.02.08
	 * -----------------------------------------------------------------------------------*/
	public ModelAndView getATOrderInfoList() {
		mav = new ModelAndView();
		   
		List<RO_Dto> orderInfoList = roDao.getATOrderInfoList();
		   
		mav.addObject("orderInfoList",orderInfoList);
		mav.setViewName("ATOrderSearch");
		   
		return mav;
	}
	  
	/* ---------------------------------------------------------------------------------
	 * 기능: 발주 조회에서 넘어오는 목록을 취소하는 메소드
	 * 작성자: KYH
	 * 작성일 : 2019.02.08
	 * -----------------------------------------------------------------------------------*/
	public ModelAndView rmOrderListCancleProc(RO_Dto roDto, String[] roCheckedBoxArr, RedirectAttributes rttr) {
		for(String roCheckedBoxValue : roCheckedBoxArr) {
			roDao.rmOrderListCancle(roCheckedBoxValue);
		}
			
		mav = new ModelAndView();
		mav.setViewName("redirect:ATOrderSearch");
		
		rttr.addFlashAttribute("check", "발주 목록 삭제 완료!");
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	 * 기능: 거래처 조회 리스트 출력 메소드
	 * 작성자: KYH
	 * 작성일 : 2019.02.09
	 * -----------------------------------------------------------------------------------*/
	public ModelAndView getATrmList() {
		mav = new ModelAndView();
		
		List<RM_Dto> rmList = rmDao.getRMList();
	
	
		mav.addObject("rmList",rmList);
		mav.setViewName("ATOrderRequest");
		   
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------
	 * 기능: 거래처 조회에서 원재료 주문 기능
	 * 작성자: KYH
	 * 작성일 : 2019.02.10
	 * -----------------------------------------------------------------------------------*/
	public String rmOrderProc(RedirectAttributes rttr, MultipartHttpServletRequest multi) {
		String view = null;
		
		RM_Dto rmDto = new RM_Dto();
		RO_Dto roDto = new RO_Dto();
		String[] rmCheckedBoxArr = multi.getParameterValues("rmProdOrderChk");
		for(String rm_num : rmCheckedBoxArr) {
			int numOfProd = Integer.parseInt(multi.getParameter(rm_num));//넘어온 수량은 String이지만 계산을 위해 int로 변환

			log.warn("수량 : " + numOfProd);
		
			rmDto = rmDao.getRMPaymentList(rm_num);	//원재료 코드(rm_num), 원재료명(rm_type), 단가(rm_price)
			roDto.setRo_type(rmDto.getRm_type());
			roDto.setRo_rm_price(rmDto.getRm_price());
			roDto.setRo_rm_num(rmDto.getRm_num());
			roDto.setRo_count(numOfProd);
			
			//임시 아이디 지정
			roDto.setRo_buyer("atelier");
			//로그인하면 아래 주석 해제 후 실행
			//CM_Dto cmDto = (CM_Dto) session.getAttribute("mb");		
			//roDto.setRo_buyer(cmDto.getCm_id());
			
			//dao 에서 roDto를 넣는 메소드 작성
			roDao.rmPaymentProd(roDto);	
		}				
		
		view = "redirect:ATOrderRequest";
		rttr.addFlashAttribute("check","결제가 완료되었습니다.");
		
		return view;
	}
	
	/*-------------------------------------------------------------------
	 * 기   능 : 공방 신청 요청 서비스. AtRegist.jsp 입력폼에서 받은 데이터를 DB에 저장
	 * 작성일 : 20.02.05
	 * 수정일 :
	 * 작업자 : 정성규
	 -------------------------------------------------------------------*/
	public void ATRegistProc(AG_Dto ag_Dto, RedirectAttributes rttr) {

		// boolean b;
		atDao.setATRegistUserData(ag_Dto);

		// return "main";
	}

	/*
	 * -----------------------------------------------------------------------------
	 * 		 기능: 제품 관리의 상품 등록하기 
	 *		 작성자: JWJ 
	 * 		 작성일 : 2019.02.05
	 * -----------------------------------------------------------------------------*/
	
	@Transactional
	public String ATProdInsert(MultipartHttpServletRequest multi, RedirectAttributes rttr) {
		String view = null;
		PD_productDto prodDto = new PD_productDto();
		PI_productImgDto prodImgDto = new PI_productImgDto();
		CM_Dto cmDto = (CM_Dto) session.getAttribute("mb");
		
		String pd_at_id = cmDto.getCm_id();
		String pd_name = multi.getParameter("pd_name");
		String pd_at_name = multi.getParameter("pd_at_name");
		int pd_numofstock = Integer.parseInt(multi.getParameter("pd_numofstock"));
		int pd_price = Integer.parseInt(multi.getParameter("pd_price"));
		String pd_option = multi.getParameter("pd_option");
		String pd_sex = multi.getParameter("pd_sex");
		String pd_type = multi.getParameter("pd_type");
		String pd_cate = multi.getParameter("pd_cate");
		String pd_datail = multi.getParameter("pd_detail");
		String pi_oriname = multi.getParameter("pi_oriname");

		prodDto.setPd_at_id(pd_at_id);
		prodDto.setPd_at_name(pd_at_name);
		prodDto.setPd_cate(pd_cate);
		prodDto.setPd_detail(pd_datail);
		prodDto.setPd_name(pd_name);
		prodDto.setPd_numofstock(pd_numofstock);
		prodDto.setPd_option(pd_option);
		prodDto.setPd_price(pd_price);
		prodDto.setPd_sex(pd_sex);
		prodDto.setPd_type(pd_type);
		prodImgDto.setPi_oriname(pi_oriname);

		// 1. 상품을 DB에 Insert
		boolean b = atDao.ATProdInsert(prodDto);

		// 2. Insert한 상품의 상품코드를 가져와 이미지 업로드
		int currentPd_code = atDao.getPd_code();
		prodImgDto = prodImgup(multi, currentPd_code);
		if (b) {
			// 상품 insert 성공하면 해당 상품의 image도 DB에 insert
			atDao.ATProdImgInsert(prodImgDto);
			view = "redirect:ATProdManage";
			rttr.addFlashAttribute("check", "판매 등록 완료");

		} else {
			// 상품 insert 실패
			view = "redirect:ATProdRegist";
			rttr.addFlashAttribute("check", "판매 등록 실패");

		}
		return view;
	}

	/*
	 * -----------------------------------------------------------------------------
	 *  	기능: 제품 관리의 상품 등록 시 이미지를 등록하기 위한 기능 
	 * 		작성자: JWJ 
	 * 		작성일 : 2019.02.05
	 * -----------------------------------------------------------------------------
	 */
	public PI_productImgDto prodImgup(MultipartHttpServletRequest multi, int currentPd_code) {

		// 먼저 경로를 구하고 폴더를 만듦
		String path = getRealPath(multi);

		// 이미지 고유번호, 상품코드 이미지 이름 (sys name) 오리지날 이름
		PI_productImgDto prodImgDto = new PI_productImgDto();
		MultipartFile imgFile = multi.getFile("pi_oriname");
		String oriName = imgFile.getOriginalFilename();

		String sysName = System.currentTimeMillis() + "." + oriName.substring(oriName.lastIndexOf(".") + 1);
		// "."+ oriName.substring(oriName.lastIndexOf(".")+1)는 확장자를 나타내기 위함
		try {
			// 지정한 폴더에 해당 이미지 파일 생성
			imgFile.transferTo(new File(path + sysName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		prodImgDto.setPi_oriname(oriName);
		prodImgDto.setPi_sysname(sysName);
		prodImgDto.setPi_pd_code(currentPd_code);

		return prodImgDto;

	}
	 /* ---------------------------------------------------------------------------------
	  * 기능: 이미지를 저장할 폴더 및 경로 생성
	  * 작성자: JWJ
	  * 작성일 : 2019.02.06
	  -----------------------------------------------------------------------------------*/
	public String getRealPath(MultipartHttpServletRequest multi) {
		String path = multi.getSession().getServletContext().getRealPath("/");
		path += "resources/prodImg/";
		log.info(path);
		File dir = new File(path);
		if (dir.isDirectory() == false) {
			dir.mkdir();
			log.warn("이미지를 저장할 폴더 생성!!");
			log.warn(dir.getAbsolutePath());
		}
		return path;
	}


	 /* ---------------------------------------------------------------------------------
	  * 기능: 상품 정보 수정하기위해 해당 상품의 정보를 가져옴
	  * 작성자: JWJ
	  * 작성일 : 2019.02.06
	  -----------------------------------------------------------------------------------*/
	public ModelAndView goModifyProd(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String modifyProd = multi.getParameter("prod");// 1개의 선택된 체크박스를 가져옴- 상품코드가 1개 넘어옴
		int pd_code = Integer.parseInt(modifyProd);
		PD_productDto modifyProdDto = atDao.getModifyProd(pd_code);// 상품을 가져옴
		String path = getRealPath(multi);
		log.warn("제품의 이미지를 불러올 경로 : " + path);
		// modifyProdDto의 상품코드를 가지고, 이미지를 불러온다
		// 필요한 것 - 이미지가 저장된 절대 경로 및 sysName.
		PI_productImgDto prodImg = atDao.getProdImg(modifyProdDto.getPd_code());
		// String sysName = prodImg.getPi_sysname();
		String oriName = prodImg.getPi_oriname();
		// mav.addObject("sysName",sysName);
		mav.addObject("oriName", oriName);
		mav.addObject("modifyProdDto", modifyProdDto);
		mav.addObject("check", "수정하기");
		mav.setViewName("ATProdRegist");

		return mav;
	}
	/* ---------------------------------------------------------------------------------
	  * 기능: 상품 정보 수정
	  * 작성자: JWJ
	  * 작성일 : 2019.02.06
	  -----------------------------------------------------------------------------------*/

	public String updateProd(MultipartHttpServletRequest multi, RedirectAttributes rttr) {
		//String view = atDao.ATProdUpdate(multi,rttr);
		String view = null;
		PD_productDto prodDto = new PD_productDto();
		PI_productImgDto prodImgDto = new PI_productImgDto();
		
		int pd_code = 	Integer.parseInt(multi.getParameter("pd_code"));
		String pd_name =  multi.getParameter("pd_name");
		String pd_at_name =  multi.getParameter("pd_at_name");
		int pd_numofstock =  Integer.parseInt(multi.getParameter("pd_numofstock"));
		int pd_price =  Integer.parseInt(multi.getParameter("pd_price"));
		String pd_option =  multi.getParameter("pd_option");
		String pd_sex =  multi.getParameter("pd_sex");
		String pd_type =  multi.getParameter("pd_type");
		String pd_cate =  multi.getParameter("pd_cate");
		String pd_datail =  multi.getParameter("pd_detail");
		String pi_oriname =  multi.getParameter("pi_oriname");
			
		prodDto.setPd_code(pd_code);
		prodDto.setPd_at_name(pd_at_name);
		prodDto.setPd_cate(pd_cate);
		prodDto.setPd_detail(pd_datail);
		prodDto.setPd_name(pd_name);
		prodDto.setPd_numofstock(pd_numofstock);
		prodDto.setPd_option(pd_option);
		prodDto.setPd_price(pd_price);
		prodDto.setPd_sex(pd_sex);
		prodDto.setPd_type(pd_type);
		prodImgDto.setPi_oriname(pi_oriname);
		
		boolean b = atDao.ATProdUpdate(prodDto);
		
		 
		//2. Insert한 상품의 상품코드를 가져와 이미지 업로드
		int currentPd_code = prodDto.getPd_code();
			//상품 이미지를 먼저 지움
			atDao.deleteImg(currentPd_code);
		prodImgDto = prodImgup(multi,currentPd_code);
		if(b) {
			//상품 insert 성공하면 해당 상품의 image도 DB에 insert
				atDao.ATProdImgInsert(prodImgDto);
				view = "redirect:ATProdManage";
				rttr.addFlashAttribute("check", "등록 완료");
			
		}else {
			//상품 insert 실패
			view = "redirect:ATProdRegist";
			rttr.addFlashAttribute("check", "등록 실패");
			
		}
		return view;
		
	}
	 /* ---------------------------------------------------------------------------------
     * 기능: 선택한 상품의 판매여부를 판매 (T)로 전환
     * 작성자: JWJ
     * 작성일 : 2019.02.07
     -----------------------------------------------------------------------------------*/
	public String changeProdRegist(String[] chkedBoxArr, RedirectAttributes rttr) {
		String view = null;

		for (String pd_code : chkedBoxArr) {
			int pdCode = Integer.parseInt(pd_code);
			atDao.changeProdRegist(pdCode);
		}
		view = "redirect:ATProdManage";
		rttr.addFlashAttribute("check", "등록 완료");
		return view;
	}

	/*-------------------------------------------------------------------
	 * 기능 : 응원의 한마디
	 * 책임자 : 김병현, 김종현
	 * 작성일 : 2020.02.06		최종수정일 : 2020.02.06
	 ------------------------------------------------------------------- */

	public Map<String, List<SM_Dto>> replyInsert(SM_Dto reply) {

		Map<String, List<SM_Dto>> rmap = null;

		try {
			atDao.replyInsert(reply);
			// 댓글 하나를 DB에 넣으면 댓글리스트를 다시 불러오자
			List<SM_Dto> rList = atDao.getReplyList1(reply.getSm_receiver());
			rmap = new HashMap<String, List<SM_Dto>>();
			rmap.put("rList", rList);
		} catch (Exception e) {
			rmap = null;
			// 먼저 try문이 실행 되므로 map은 생성 되어있고 에러를 발생시켜
			// ajax의 error 부의 함수를 실행시키기 위함
		}
		return rmap;
	}

	public ModelAndView getSupportMg(SM_Dto reply) {

		mav = new ModelAndView();

		List<SM_Dto> rList = atDao.getReplyList2(reply);

		mav.addObject("rList", rList);
		mav.setViewName("ATSupportMg");

		return mav;
	}
	

	

	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 선택한 상품을 삭제
	 * 작성자: JWJ
	 * 작성일: 2019.02.07
	 -----------------------------------------------------------------------------------------*/
	public String deleteProd(String[] chkedBoxArr, RedirectAttributes rttr) {
		String view = null;

		for (String pd_code : chkedBoxArr) {
			int pdCode = Integer.parseInt(pd_code);
			atDao.deleteProd(pdCode);
		}
		view = "redirect:ATProdManage";
		rttr.addFlashAttribute("check", "삭제 완료");
		return view;
	}

	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 선택한 주문 내역의 배송상태를 변경
	 * 작성자: JWJ
	 * 작성일: 2019.02.07
	 -----------------------------------------------------------------------------------------*/
	public String chgDeliveryState(String[] chkedBoxArr, RedirectAttributes rttr) {
		String view = null;

		for (String po_num : chkedBoxArr) {
			int poNum = Integer.parseInt(po_num);
			atDao.chgDeliveryState(poNum);
		}
		view = "redirect:ATOrderState";
		rttr.addFlashAttribute("check", "상태변경 완료!");
		return view;
	}

		
	/* ---------------------------------------------------------------------------------------
	 * 기능: 주문 조회 페이지에서 주문 상태별로 출력하기 위한 기능
	 * 작성자: JWJ
	 * 작성일: 2020.02.09
	 * 수정일: 2020.02.11
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView getATOrderList(String orderState) {
		// 1. 세션에서 id를 가져와 주문테이블에서 그 아이디에 해당하는 주문을 모두 가져옴.
		mav = new ModelAndView();
		CM_Dto cmDto = (CM_Dto) session.getAttribute("mb");
		String AT_id = cmDto.getCm_id();
		// 로그인 한 공방 회원의 id를 가지고 그 회원의 공방이름을 가져옴
		String AM_Name = atDao.getAM_Name(AT_id);
		// 2. JSP에서 처음에는 before를 넘기고, select박스의 내용에 따라 being을 넘기거나 after를 넘긴다
		PO_Vo po_Vo = new PO_Vo();
		po_Vo.setPo_cm_id(AT_id);

		if (orderState == null) {
			po_Vo.setPo_state("before");
		}else {
			switch (orderState) {
			case "before":
				po_Vo.setPo_state("before");
				break;
			case "being":
				po_Vo.setPo_state("being");
				break;
			case "after":
				po_Vo.setPo_state("after");
				break;
			}
		}
		
		
		

		List<PO_Vo> poDtoList = atDao.getATOrderList(po_Vo);

		// 날짜를 yyyy-MM-dd 형태로 변환
		SimpleDateFormat dataFm = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < poDtoList.size(); i++) {
			String convertDate = dataFm.format(poDtoList.get(i).getPo_date());
			poDtoList.get(i).setConveredPo_date(convertDate);
		}
		// 원하는건 PO_VOList

		mav.addObject("poDtoList", poDtoList);
		mav.addObject("check",po_Vo.getPo_state());
		mav.setViewName("ATOrderState");
		

		return mav;
	}

	/*--------------------------------------------------------------------------------------- 
	 * 기능: 주문 조회 페이지에서 주문 상태별로 출력하기 위한 기능 
	 * 작성자: JWJ 
	 * 작성일: 2020.02.09
	 ----------------------------------------------------------------------------------------- */
	/*
	 * public Map<String, List<PO_Vo>> chgOrderList(String orderState){
	 * 
	 * CM_Dto cmDto = (CM_Dto) session.getAttribute("mb"); String AT_id =
	 * cmDto.getCm_id(); String AM_Name = atDao.getAM_Name(AT_id);
	 * 
	 * PO_Vo po_Vo = new PO_Vo(); po_Vo.setPo_state(orderState);
	 * po_Vo.setPo_at_name(AM_Name);
	 * 
	 * Map<String, List<PO_Vo>> poDtomap = new HashMap<String, List<PO_Vo>>();
	 * List<PO_Vo> poDtoList = atDao.getATOrderList(po_Vo);
	 * poDtomap.put("poDtoList", poDtoList);
	 * 
	 * return poDtomap; }
	 */
	/* ---------------------------------------------------------------------------------
	  * 기능: 공지사항 작성
	  * 작성자: KJH
	  * 작성일 : 2020.02.10		최종수정일 : 2020.02.11
	  -----------------------------------------------------------------------------------*/
	public ModelAndView noticeWrite(MultipartHttpServletRequest multi, RedirectAttributes rttr) {
		log.warn("noticeserv");
		
		mav = new ModelAndView();
		
		String title = multi.getParameter("nt_title");
		String contents = multi.getParameter("nt_contents");
		String id = multi.getParameter("nt_id");
		log.info(title+","+contents+","+id);
		
		NT_Dto notice = new NT_Dto();
		notice.setNt_title(title);
		notice.setNt_contents(contents);
		notice.setNt_id(id);
		
		String view = null;
		
		try {
			ntDao.noticeWrite(notice);
			view = "redirect:ATNotice";
			rttr.addFlashAttribute("check",2);
		} catch (Exception e) {
			view = "redirect:ATNoticeWrite";//redirect로, writeFrm에 가라
			rttr.addFlashAttribute("check",1);
		}
		mav.setViewName(view);
		//mav에 데이터를 담지 않아도 되나..?? - Insert를 하니까 상관 없음
		return mav;
	}

	public ModelAndView getATNoticeList(Integer pageNum) {
		log.info("getATNoticeList() - pageNum : " + pageNum);
		mav = new ModelAndView();
		
		int num = (pageNum == null)? 1 : pageNum;//맨 처음에는 넘어오는 페이지 넘버가 없기 때문에 1페이지부터 시작함

		List<NT_Dto> nList = ntDao.getList(num);//페이지 번호를 가져오고, 그 번호에 해당하는 List를 가져온다.
		mav.addObject("bList", nList);//bList라는 이름으로 bList 데이터를 넣겠다.
		//------추가분-----------------------------------------------------------------------------------------
		mav.addObject("paging",getPaging(num));//여기서 num은 페이지 번호
		//-----------------------------------------------------------------------------------------------------
		mav.setViewName("ATNotice");//mav를 보낼 jsp파일의 이름
		session.setAttribute("pageNum", num);
		return mav;//
		
	}
	
	private Object getPaging(int num) {
		//전체 글 개수 구하기(from DB)
		int maxNum = ntDao.getBoardCount();
		int listCount = 10;//페이지 당 글 갯수
		int pageCount = 2; //한 그룹당 페이지 갯수
		String listName = "ATNotice";//BoardController의 RequestMapping 과 똑같아야 함.
		Paging paging = new Paging(maxNum, num, listCount, pageCount, listName);
		String pagingHtml = paging.makeHtmlPaging();		

		return pagingHtml;
	}

	public ModelAndView getNoticeContents(Integer nt_num) {
		mav = new ModelAndView();
		ntDao.upView(nt_num);
		NT_Dto nDto = ntDao.getContents(nt_num);
		
		NT_Dto getNoticeContents = ntDao.getContents(nt_num);
		CM_Dto sessionMember = (CM_Dto)session.getAttribute("mb");
		String getSessionId = sessionMember.getCm_id();
		String getId = getNoticeContents.getNt_id();
		
		if(getId.equals(getSessionId)) {
			
			mav.addObject("deleteCheck",1);
		}
		else {
			mav.addObject("deleteCheck",0);
		}
		mav.addObject("board", nDto);//board는 공지사항 내용출력 ${board.nt_contents}
		
		mav.setViewName("ATNoticeDetail");
	
		
		return mav;
	}

	/*-------------------------------------------------------------------
	 * 기능 : 발주 리스트 조회 서비스
	 * 작성자: JSH
	 * 작성일 : 2020.02.11
	 ------------------------------------------------------------------- */
	public ModelAndView getATOrderSearchList(HttpServletRequest request) {
		mav = new ModelAndView();
		
		log.warn("발주 리스트 조회 서비스 시작");
		
		CM_Dto cmDto = (CM_Dto)session.getAttribute("mb");
		String id = cmDto.getCm_id();
		log.warn(id);
		
		
		
		
		
		//취소를 위한 처리
		String[] chkedBoxArr = request.getParameterValues("prod");//체크박스의 값들이 넘어옴
		if (chkedBoxArr == null) {
			//취소신청한 품목이 없음..
			//사실 jsp의 자바스크립트에서 체크를 안 했을시의 처리를 했음.
		} else {
			//취소를 신청한 품목이 있다면
			for(String chkedBoxValue : chkedBoxArr) {
				log.warn(chkedBoxValue + "발주 삭제");
				orderCancel(chkedBoxValue);
				//주문번호를 이용한 취소처리...
				//취소를 하고 다시 ATCheckOrder로 가면 될 것 같습니다.
			}
		}
		
		List<RO_Dto> atoList = atDao.getATOrderSearchList(id);;
		
		//날짜를 yyyy-MM-dd 형태로 변환
		SimpleDateFormat dataFm = new SimpleDateFormat("yyyy-MM-dd");
		for(int i=0;i<atoList.size();i++) {
			String convertDate = dataFm.format(atoList.get(i).getRo_date());
			atoList.get(i).setRo_dateSimple(convertDate);
		}
		
		mav.addObject("atoList", atoList);
		mav.setViewName("ATOrderSearch");
		
		return mav;
	}
	
	/*-------------------------------------------------------------------
	 * 기능 : 공방 관리 홈 리스트 출력 서비스
	 * 작성자: JSH
	 * 작성일 : 2020.02.11
	 ------------------------------------------------------------------- */
	public ModelAndView getATManagerList() {
		
		mav = new ModelAndView();
		
		log.warn("발주 리스트 조회 서비스 시작");
		
		CM_Dto cmDto = (CM_Dto)session.getAttribute("mb");
		String id = cmDto.getCm_id();
		log.warn(id);
		
		List<RO_Dto> atmList = atDao.getATOrderSearchList(id);
		
		//날짜를 yyyy-MM-dd 형태로 변환
		SimpleDateFormat dataFm = new SimpleDateFormat("yyyy-MM-dd");
		for(int i=0;i<atmList.size();i++) {
			String convertDate = dataFm.format(atmList.get(i).getRo_date());
			atmList.get(i).setRo_dateSimple(convertDate);
		}
		
		//	구독자 수 출력
		int subNum = SubscribeNum(id);
		
		//	제품 오더 수 출력
		int orderNum = prodOrderNum(id);
		
		//	등록된 상품 수 출력
		int prodNum = prodNum(id);
		
		mav.addObject("prodNum", prodNum);
		mav.addObject("orderNum", orderNum);
		mav.addObject("subNum", subNum);
		mav.addObject("atmList", atmList);
		mav.setViewName("ATManager");
		
		return mav;
	}

	/*-------------------------------------------------------------------
	 * 기능 : 발주 조회 / 다중 삭제 서비스
	 * 작성자: JSH
	 * 작성일 : 2020.02.11
	 ------------------------------------------------------------------- */
	public void orderCancel(String chkedBoxValue) {
		int parCancel = Integer.parseInt(chkedBoxValue);
		atDao.delATOrder(parCancel);
	}
	
	/*-------------------------------------------------------------------
	 * 기능 : 공방 관리 홈 리스트 출력 서비스 / 구독자 수 출력
	 * 작성자: JSH
	 * 작성일 : 2020.02.12
	 ------------------------------------------------------------------- */
	
	public int SubscribeNum(String id) {
		int Subscribe = atDao.getSubscribeNum(id);
		
		return Subscribe;
	}
	
	/*-------------------------------------------------------------------
	 * 기능 : 공방 관리 홈 리스트 출력 서비스 / 제품 오더 수
	 * 작성자: JSH
	 * 작성일 : 2020.02.12
	 ------------------------------------------------------------------- */
	public int prodOrderNum(String id) {
		int prodOrder = atDao.getProdOrderNum(id);
		
		return prodOrder;
	}

	/*-------------------------------------------------------------------
	 * 기능 : 공방 관리 홈 리스트 출력 서비스 / 등록된 제품 수
	 * 작성자: JSH
	 * 작성일 : 2020.02.12
	 ------------------------------------------------------------------- */
	public int prodNum(String id) {
		int prodNum = atDao.getprodNum(id);
		
		return prodNum;
	}

}//AT_Service 클래스의 끝