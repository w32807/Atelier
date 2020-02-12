package com.atelier.mypage.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.dao.MG_Dao;
import com.atelier.dto.MG_Dto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MP_MessageService {

	ModelAndView mav;

	@Setter(onMethod_ = @Autowired)
	MG_Dao mDao;

	@Setter(onMethod_ = @Autowired)
	private HttpSession session;

	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 받은 쪽지 출력 메소드
	 * 작성자: KBH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView Messager(String mg_receiver) {
		mav = new ModelAndView();

		String view = null;

		List<MG_Dto> bList = mDao.getList(mg_receiver);
		mav.addObject("bList", bList);

		mav.setViewName("messager");
		
		return mav;
	}

	/*
	 * -----------------------------------------------------------------------------
	 * ---------- 기능: 받은 쪽지 출력 메소드 / 페이징 메소드 작성자: KBH 작성일: 2020.02.04
	 * -----------------------------------------------------------------------------
	 * ------------ private Object getPaging(int num) { //전체 글 개수 구하기(from DB) int
	 * maxNum = mDao.getBoardCount(); int listCount = 10;//페이지 당 글 개수 int pageCount
	 * = 2; //그룹 당 페이지 개수 String listName = "messager"; com.atelier.util.Paging
	 * paging = new com.atelier.util.Paging(maxNum, num, listCount, pageCount,
	 * listName); String pagingHtml = paging.makeHtmlPaging(); return pagingHtml; }
	 * 
	 */

	/*
	 * -----------------------------------------------------------------------------
	 * ---------- 기능: 쪽지 답장기능 메소드 작성자: KBH 작성일: 2020.02.04
	 * -----------------------------------------------------------------------------
	 * ------------
	 */
	public ModelAndView myMessageWrite(Integer mg_num) {

		mav = new ModelAndView();

		MG_Dto mDto = mDao.getMessage(mg_num);

		mav.addObject("mDto", mDto);

		mav.setViewName("myMessageWrite");

		return mav;
	}

	// 메세지 보내기 버튼 
	
		  public ModelAndView MessageSendBtn(MG_Dto mDto) {
		  
		  mav = new ModelAndView();
		 
		  String view = null;
				  
		  String mg_receiver = mDto.getMg_sender();
		  
		  log.warn(mDto.getMg_receiver()+","+mDto.getMg_sender());
		  
		  try {
			  
			  mDao.SendMessage(mDto);
			  view =  "forward:messager";
			  
		  }catch(Exception e) {
			  
			  e.printStackTrace();
		  
		  }
		  
		  
		  mav.setViewName(view);
		  
		  return mav; 
		  }
		 


		/*
		 * public Map<String, List<PO_Dto>> getOrder(MG_Dto mDto) { log.warn("bb");
		 * Map<String, List<PO_Dto>> poMap = null;
		 * 
		 * try { List<PO_Dto> poList = mDao.getOrderList(mDto);
		 * 
		 * poMap = new HashMap<String, List<PO_Dto>>();
		 * 
		 * poMap.put("poList", poList);
		 * 
		 * }catch(Exception e) { e.printStackTrace(); poMap = null; }
		 * 
		 * return poMap; 
		 */

}
