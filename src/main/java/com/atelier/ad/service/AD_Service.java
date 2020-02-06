package com.atelier.ad.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.DocFlavor.STRING;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.AD_Dao;
import com.atelier.dto.FT_FAQDto;
import com.atelier.util.FAQPaging;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class AD_Service {

	ModelAndView mav;
	@Setter(onMethod_ = @Autowired)
	AD_Dao aDao;
	
	
	@Setter(onMethod_ = @Autowired) 
	private HttpSession session;
	
	
	
	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ 전체 출력
	  * 작성자: JWJ
	  * 작성일 : 2019.02.02
	  -----------------------------------------------------------------------------------*/
	public ModelAndView getFAQList(Integer pageNum,Integer maxNum) {
		mav = new ModelAndView();
		int num = (pageNum == null)? 1 : pageNum;
		maxNum = aDao.getFAQCount();
		Map<String, Integer> pageInt = new HashMap<String, Integer>();
		pageInt.put("pageNum", num);
		pageInt.put("maxNum", maxNum);
		List<FT_FAQDto> faqList = aDao.getFAQList(pageInt);
		
		//날짜를 yyyy-MM-dd 형태로 변환
		SimpleDateFormat dataFm = new SimpleDateFormat("yyyy-MM-dd");
		for(int i=0;i<faqList.size();i++) {
			String convertDate = dataFm.format(faqList.get(i).getFt_regdate());
			faqList.get(i).setFt_date(convertDate);
		}
		
		mav.addObject("faqList",faqList);
		mav.addObject("paging",getPaging(num));
		session.setAttribute("pageNum", num);
		mav.setViewName("ADFAQ");
		return mav;
	}

	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ paging 처리
	  * 작성자: JWJ
	  * 작성일 : 2019.02.02
	  -----------------------------------------------------------------------------------*/
	private Object getPaging(int num) {
		int maxNum = aDao.getFAQCount();
		int listCount = 10;
		int pageCount = 5;
		String listName = "ADFAQ";
		FAQPaging paging = new FAQPaging(maxNum, num, listCount, pageCount, listName);
		String PagingHtml = paging.makeHtmlPaging();
		
		return PagingHtml;
		
	}
	
	   
 	 /* ---------------------------------------------------------------------------------
 	  * 기능: FAQ입력 및 출력(ajax)
 	  * 작성자: JWJ
 	  * 작성일 : 2019.02.02
 	  -----------------------------------------------------------------------------------*/
 	
	public Map<String, List<FT_FAQDto>> FAQInsert(FT_FAQDto faq,Integer pageNum,Integer maxNum) {
		Map<String, List<FT_FAQDto>> faqmap = null;
		
		try {
			aDao.FAQInsert(faq);
			maxNum = aDao.getFAQCount();
			Map<String, Integer> pageInt = new HashMap<String, Integer>();
			pageInt.put("pageNum", pageNum);
			pageInt.put("maxNum", maxNum);
			List<FT_FAQDto> faqList = aDao.getFAQList(pageInt);
			//DB에서 가져온 날짜 값을 yyyy-MM-dd 로 변환
			SimpleDateFormat dataFm = new SimpleDateFormat("yyyy-MM-dd"); 
			String convertDate = dataFm.format(faqList.get(1).getFt_regdate());
			Date parsedate = dataFm.parse(convertDate); 
			Timestamp convertedDate = new Timestamp(parsedate.getTime()); 
			faqList.get(1).setFt_regdate(convertedDate);
			
			
			faqmap = new HashMap<String, List<FT_FAQDto>>();
			faqmap.put("faqList", faqList);
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			faqmap = null;
		}
		return faqmap;
	}

	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ 상세내용 출력
	  * 작성자: JWJ
	  * 작성일 : 2019.02.02
	  -----------------------------------------------------------------------------------*/
	public ModelAndView getFAQDetail(FT_FAQDto faq) {
		mav = new ModelAndView();
		faq = aDao.getFAQDetail(faq.getFt_num());
		mav.addObject("faq",faq);
		mav.setViewName("ADFAQContents");
		
		return mav;
	}

	 /* ---------------------------------------------------------------------------------
	  * 기능: FAQ 수정
	  * 작성자: JWJ
	  * 작성일 : 2019.02.02
	  -----------------------------------------------------------------------------------*/
	public String FAQupdate(FT_FAQDto faq, RedirectAttributes rttr) {
		String view = null;
		if(aDao.FAQupdate(faq)) {
			view = "redirect:ADFAQ";
			rttr.addFlashAttribute("check", "수정 성공");
		}
		
		
		return view;
	}

	/* ---------------------------------------------------------------------------------
	  * 기능: FAQ 삭제
	  * 작성자: JWJ
	  * 작성일 : 2019.02.03
	  -----------------------------------------------------------------------------------*/
	@Transactional
	public ModelAndView delFAQ(String[] chkedBoxArr, RedirectAttributes rttr) {
		Integer maxNum = null;
		Integer pageNum = null;
		for(String ft_num : chkedBoxArr) {
			aDao.delFAQ(ft_num);
		}
		rttr.addFlashAttribute("check","삭제 완료!");
		
		mav = getFAQList(pageNum,maxNum);
		
		return mav;
	}
	

	
	
}
