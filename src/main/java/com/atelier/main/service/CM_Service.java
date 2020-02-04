package com.atelier.main.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.CM_Dao;
import com.atelier.dto.CM_Dto;

import lombok.Setter;

@Service
public class CM_Service {

	ModelAndView mav;
	
	@Setter(onMethod_ = @Autowired)
	CM_Dao mDao;

	
	@Setter(onMethod_ = {@Autowired}) 
	private HttpSession session;
	
	
	
	public ModelAndView loginProc(CM_Dto mem, RedirectAttributes rttr) {
		mav = new ModelAndView();
		String view = null;
		String pwd = mDao.getMemberPwd(mem.getCm_id());
		if(pwd == null) {
			view = "redirect:login";
			rttr.addFlashAttribute("check","해당 아이디가 없습니다.");
		}else {
			if (pwd.equals(mem.getCm_pwd())) {
				mem = mDao.getMemberInfo(mem.getCm_id());
				session.setAttribute("mb", mem);
				rttr.addFlashAttribute("check","로그인 성공!");
				view = "redirect:/";
			}else {
				view = "redirect:login";
				rttr.addFlashAttribute("check","패스워드가 틀립니다.");
			}
			
		}
		mav.setViewName(view);		
		return mav;
	}

}
