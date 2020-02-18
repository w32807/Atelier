package com.atelier.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class PR_Dto {
	/*
	PR_NUM NUMBER(10) PRIMARY KEY,                  -- 댓글번호
	PR_PD_CODE NUMBER(20),                          -- 상품코드
	PR_CM_ID NVARCHAR2(50),                         -- 작성자ID
	PR_CM_NICK NVARCHAR2(50),                       -- 작성자닉네임
	PR_STAR NUMBER(10,0),                           -- 별점
	PR_CONTENTS NVARCHAR2(200),                     -- 댓글 내용
	PR_DATE DATE DEFAULT(SYSDATE)                   -- 화면에 표시 될 작성시간
	*/
	
	private int pr_num;
	private int pr_pd_code;
	private String pr_cm_id;
	private String pr_cm_nick;
	private int pr_star;
	private String pr_contents;
 
	@JsonFormat(pattern = "yyyy-MM-dd")
    private Timestamp pr_date;
    private String pr_dateSimple;
    
    //댓글의 프로필 사진을 가져오기 위한 변수
    private String pr_cm_pfphoto;
    
}