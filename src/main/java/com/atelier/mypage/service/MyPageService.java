package com.atelier.mypage.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atelier.dao.CM_Dao;
import com.atelier.dto.CM_Dto;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MyPageService {
	ModelAndView mav;

	@Setter(onMethod_ = @Autowired)
	private HttpSession session;

	@Setter(onMethod_ = @Autowired)
	MyPageService mpServ;
	
	@Setter(onMethod_ = @Autowired)
	private CM_Dao cm_Dao;
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 마이페이지 수정 서비스
	 * 작성자: JSH
	 * 작성일: 2020.02.05
	 -----------------------------------------------------------------------------------------*/
	@Transactional
	public ModelAndView myPageFixServ(MultipartHttpServletRequest multi, RedirectAttributes rttr) {
		mav = new ModelAndView();
		
		CM_Dto cm_Dto = new CM_Dto();
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		
		cm_Dto.setCm_id(multi.getParameter("CM_ID"));
		cm_Dto.setCm_name(multi.getParameter("CM_NAME"));
		cm_Dto.setCm_nick(multi.getParameter("CM_NICK"));
		cm_Dto.setCm_phone(multi.getParameter("CM_PHONE"));
		cm_Dto.setCm_addr(multi.getParameter("CM_ADDR"));
		cm_Dto.setCm_addr2(multi.getParameter("CM_ADDR2"));
		
		log.warn(cm_Dto.getCm_id());
		
		String view = null;
		try {
			cm_Dao.memberUpdate(cm_Dto);
			view = "redirect:main";
			rttr.addFlashAttribute("check",2);
		} catch (Exception e) {
			view = "redirect:myInfoUpdate";
			rttr.addFlashAttribute("check",1);
		}
		
		if(check == 1) {//파일이 들어왔을 때...
			//파일 처리 메소드 호출
			fileup(multi,cm_Dto.getCm_id());
		}

		mav.setViewName(view);
		
		return mav;
		
	}
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 마이페이지 수정 서비스 / 프로필 이미지 업로드
	 * 작성자: JSH
	 * 작성일: 2020.02.05
	 -----------------------------------------------------------------------------------------*/
	public boolean fileup(MultipartHttpServletRequest multi, String CM_ID) {
		
		log.warn("이미지 업로드 시작");
		
		MultipartFile mf = multi.getFile("input_img");
		String path = multi.getSession().getServletContext().getRealPath("/");
		path += "resources/upload/profile/";
		log.warn(path);

		
		File dir = new File(path);//path 경로에 있는 파일에 관한 객체
		if(dir.isDirectory() == false) {//경로(저장할 upload폴더가 없으면 만들어주자.
			dir.mkdir();//directory를 만들자(upload폴더 생성), 위의 path에 경로를 저장했기때문에 없으면 upload를 만든다
							 //servlet-context에서 resources경로를 가지고 있는 애들은 다 resources로 보내주는 태그가 있다.
		}
		
		boolean fResult = false;

		String profileName = CM_ID;
		String fileName = profileName.replace("com", "jpg");
		String nameFile = fileName.replace(".jpg", "");
		
		try {
			log.warn("파일업로드 try 문 시작");
			mf.transferTo(new File(path+fileName));
			fResult = cm_Dao.pfPhoto(profileName);
		} catch (IOException e) {
			fResult = false;
		}

		return fResult;
	}
	
	/* ---------------------------------------------------------------------------------------
	 * 기능: 회원 정보 / 프로필 사진 출력
	 * 작성자: JSH
	 * 작성일: 2020.02.06
	 -----------------------------------------------------------------------------------------*/
	public void profileIMG(String name, HttpServletRequest req, HttpServletResponse resp) {
		//서버의 파일 위치를 얻자.
		log.warn("이미지 출력 시작");
		String path = req.getSession().getServletContext().getRealPath("/") + "resources/upload/profile/";
		log.warn(path);
		
		String profileName = name;
		String fileName = profileName.replace("com", "jpg");
		
		log.warn(path);
		log.warn(fileName);

		InputStream is = null;// 서버 컴퓨터 안에 저장된 파일을 읽어오는 것
		OutputStream os = null;// 파일을 사용자 컴퓨터로 전송하기 위한 것
		
		String realPath = path+fileName;
		log.warn(realPath);
		
		try {
			// 파일 객체 생성
			File file = new File(realPath);
			is = new FileInputStream(file);
			
			//응답 객체 (resp)의 헤더 설정
			//파일 전송용 contentType 설정
			resp.setContentType("application/octet-stream");
			//resp.setHeader("content-Disposition", "attachment; filename=\"" + fileName +"\"");
			resp.setHeader("content-Disposition", "attachment; filename=" + fileName);
			//attachment; filename=\파일명.txt"\가 됨
			
			//응답 객체(resp)를 통해서 파일 전송
			os = resp.getOutputStream();
			
			//전송하기
			byte[] buffer = new byte[1024];//파일의 데이터를 buffer에 넣음
			int length;
			while((length = is.read(buffer)) != -1) {
				os.write(buffer,0,length);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				os.flush();
				os.close();
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
