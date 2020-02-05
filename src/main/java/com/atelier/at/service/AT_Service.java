package com.atelier.at.service;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.AT_dao;
import com.atelier.dto.CM_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.dto.PI_productImgDto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AT_Service {
	

	ModelAndView mav;
	
	@Setter(onMethod_ = @Autowired)
	AT_dao atDao;
	

	@Setter(onMethod_ = @Autowired) 
	private HttpSession session;
	
	
	
	 /* ---------------------------------------------------------------------------------
	  * 기능: 제품 관리의 상품 등록하기
	  * 작성자: JWJ
	  * 작성일 : 2019.02.05
	  -----------------------------------------------------------------------------------*/
	@Transactional
	public String ATProdInsert(MultipartHttpServletRequest multi,RedirectAttributes rttr) {
		String view = null;
		PD_productDto prodDto = new PD_productDto();
		PI_productImgDto prodImgDto = new PI_productImgDto();
		
		String pd_name =  multi.getParameter("pd_name");
		String pd_at_name =  multi.getParameter("pd_at_name");
		int pd_numofstock =  Integer.parseInt(multi.getParameter("pd_numofstock"));
		int pd_price =  Integer.parseInt(multi.getParameter("pd_price"));
		String pd_option =  multi.getParameter("pd_option");
		String pd_sex =  multi.getParameter("pd_sex");
		String pd_type =  multi.getParameter("pd_type");
		String pd_cate =  multi.getParameter("pd_cate");
		String pd_datail =  multi.getParameter("pd_datail");
		String pi_oriname =  multi.getParameter("pi_oriname");
			
		prodDto.setPd_at_name(pd_at_name);
		prodDto.setPd_cate(pd_cate);
		prodDto.setPd_datail(pd_datail);
		prodDto.setPd_name(pd_name);
		prodDto.setPd_numofstock(pd_numofstock);
		prodDto.setPd_option(pd_option);
		prodDto.setPd_price(pd_price);
		prodDto.setPd_sex(pd_sex);
		prodDto.setPd_type(pd_type);
		prodImgDto.setPi_oriname(pi_oriname);
		
		//1. 상품을 DB에 Insert
		boolean b = atDao.ATProdInsert(prodDto);
		
		//2. Insert한 상품의 상품코드를 가져와 이미지 업로드
		int currentPd_code = atDao.getPd_code();
		prodImgDto = prodImgup(multi,currentPd_code);
		if(b) {
			//상품 insert 성공하면 해당 상품의 image도 DB에 insert
				atDao.ATProdImgInsert(prodImgDto);
				view = "redirect:ATProdManage";
				rttr.addFlashAttribute("check", "판매 등록 완료");
			
		}else {
			//상품 insert 실패
			view = "redirect:ATProdRegist";
			rttr.addFlashAttribute("check", "판매 등록 실패");
			
		}
		return view;
	}

	 /* ---------------------------------------------------------------------------------
	  * 기능: 제품 관리의 상품 등록 시 이미지를 등록하기 위한 기능
	  * 작성자: JWJ
	  * 작성일 : 2019.02.05
	  -----------------------------------------------------------------------------------*/
	public PI_productImgDto prodImgup(MultipartHttpServletRequest multi, int currentPd_code) {

		//먼저 경로를 구하고 폴더를 만듦
		String path = multi.getSession().getServletContext().getRealPath("/");
		path += "resources/prodImg/";
		log.info(path);
		File dir = new File(path);
		if(dir.isDirectory() == false) {
			dir.mkdir();
			log.warn("이미지를 저장할 폴더 생성!!");
			
		}
		log.warn(dir.getAbsolutePath());
        // 이미지 고유번호, 상품코드	 이미지 이름 (sys name) 오리지날 이름
		PI_productImgDto prodImgDto = new PI_productImgDto();
		MultipartFile imgFile = multi.getFile("pi_oriname");
		String oriName = imgFile.getOriginalFilename();				
		String sysName = System.currentTimeMillis()	+ "."+ oriName.substring(oriName.lastIndexOf(".")+1);
		// "."+ oriName.substring(oriName.lastIndexOf(".")+1)는 확장자를 나타내기 위함
		try {
			//지정한 폴더에 해당 이미지 파일 생성
			imgFile.transferTo(new File(path+sysName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		prodImgDto.setPi_oriname(oriName);
		prodImgDto.setPi_sysname(sysName);
		prodImgDto.setPi_pd_code(currentPd_code);
		
		return prodImgDto;
	
	}
	
}
