
package com.atelier.co.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.dao.AD_Dao;
import com.atelier.dao.CO_Dao;
import com.atelier.dto.CO_NoticeDto;
import com.atelier.util.CO_NoticePaging;

import lombok.Setter;



@Service
public class CO_Service {

	ModelAndView mav;
	@Setter(onMethod_ = @Autowired)
	CO_Dao coDao;
	@Setter(onMethod_ = @Autowired)
	private HttpSession session;
	
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 고객센터 공지사항 리스트를 DB에서 불러옴
	 * 작성자: JSG
	 * 작성일: 2020.02.05
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView getNoticeList(Integer pageNum) {
		mav = new ModelAndView();
		int num = (pageNum == null)? 1 : pageNum;
		List<CO_NoticeDto> noticeList = coDao.getNoticeList(num);
		mav.addObject("noticeList", noticeList);
		mav.addObject("paging",getPaging(num));
		session.setAttribute("pageNum", num);
		mav.setViewName("CONotice");
		return mav;
	}
	private Object getPaging(int num) {
		//전체 글 개수 구하기(from DB)
		int maxNum = coDao.getBoardCount();
		int listCount = 10;//페이지 당 글 갯수
		int pageCount = 2; //한 그룹당 페이지 갯수
		String listName = "CONotice";//BoardController의 RequestMapping 과 똑같아야 함.
		CO_NoticePaging paging = new CO_NoticePaging(maxNum, num, listCount, pageCount, listName);
		String pagingHtml = paging.makeHtmlPaging();
		return pagingHtml;
	}
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 고객센터 공지사항 상세정보를 DB에서 불러와 출력
	 * 작성자: JSG
	 * 작성일: 2020.02.05
	 -----------------------------------------------------------------------------------------*/
	public ModelAndView getNoticeContents(Integer Noticenum) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		CO_NoticeDto noticeContents = coDao.getNoticeContents(Noticenum);
		mav.addObject("noticeContents", noticeContents);
		mav.setViewName("CONoticeContents");
		return mav;
	}
	
}
