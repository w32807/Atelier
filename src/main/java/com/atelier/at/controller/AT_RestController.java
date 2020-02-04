package com.atelier.at.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class AT_RestController {

	//거래처 및 발주조회에서 검색을 ajax로 처리하기 위한 메소드
	@GetMapping(value = "prodSearch", produces = "application/json; charset=utf-8")
	public Map<String, String> prodSearch(HttpServletRequest request) {
		String keyword = request.getParameter("keyword");//jsp에서 받아온 검색어
		
		//여기서부터는 keyword로 상품 객체를 가져와 searchmap에 담아 반환. <String, String>은 알아서 수정.
		Map<String, String> searchmap = null;
		
		
		return searchmap;
		
	}
	

}
