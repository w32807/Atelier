
package com.atelier.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.atelier.dao.AD_dao;
import com.atelier.dao.CO_Dao;
import com.atelier.dto.CO_NoticeDto;

import lombok.Setter;



@Service
public class CO_Service {

	ModelAndView mav;
	@Setter(onMethod_ = @Autowired)
	CO_Dao coDao;
	
	public ModelAndView getNoticeList() {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		List<CO_NoticeDto> noticeList = coDao.getNoticeList();
		mav.addObject("noticeList", noticeList);
		mav.setViewName("CONotice");
		return mav;
	}
	
	public ModelAndView getNoticeContents(Integer Noticenum) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		CO_NoticeDto noticeContents = coDao.getNoticeContents(Noticenum);
		mav.addObject("noticeContents", noticeContents);
		mav.setViewName("CONoticeContents");
		return mav;
	}
	
}
