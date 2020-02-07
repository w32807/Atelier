package com.atelier.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class SM_Dto {
	private int sm_num;				//응원의 한마디 번호
	private String sm_contents;		//내용
	private String sm_sender;			//작성자(일반회원ID)
	private String sm_receiver;			//수신자(공방회원ID)

	
	
	// 자바의 Map Object를 json Object로 바꾸어 화면에 출력한다.
	// 날짜가 json 형식으로 들어가게 하기 위해서!
	// 숫자나 문자열은 그냥 써도 알아서 변환해줌
	@JsonFormat(pattern = "yyyy-mm-dd hh:mm:ss")
	private Timestamp sm_date;
}
