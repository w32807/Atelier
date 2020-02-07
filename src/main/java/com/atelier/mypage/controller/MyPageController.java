package com.atelier.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.mypage.service.MyPageService;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MyPageController {
	
	@Setter(onMethod_ = @Autowired)
	private MyPageService mpServ;
	
	ModelAndView mav;
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 회원 정보 수정 컨트롤러
	 * 작성자: JSH
	 * 작성일: 2020.02.05
	 -----------------------------------------------------------------------------------------*/
	@PostMapping("MyPageFix")//form의 action과 같아야 함.
	public ModelAndView myPageFix(MultipartHttpServletRequest multi, RedirectAttributes rttr) {
		//RedirectAttributes rttr - 한번 쓰고 말 데이터를 추가해주자.
		log.warn("마이페이지 수정 컨트롤러 진입");
		mav = mpServ.myPageFixServ(multi, rttr);
		//여기에서, jsp에서 들어온 form데이터를 service에 넣어줌(이 때는 위와 다른 브라우저의 요청이 들어오는 것)
		return mav;
	}
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 회원 정보 수정 컨트롤러 / 프로필 사진 등록
	 * 작성자: JSH
	 * 작성일: 2020.02.06
	 -----------------------------------------------------------------------------------------*/
	@GetMapping("profileIMG")
	public void fileDownload(String name, HttpServletRequest req ,HttpServletResponse resp) {
			log.warn("프로필 이미지 출력 컨트롤러");
		mpServ.profileIMG(name, req, resp);
	}
}
