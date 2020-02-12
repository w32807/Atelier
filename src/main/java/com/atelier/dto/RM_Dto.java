package com.atelier.dto;

import lombok.Data;

@Data
public class RM_Dto {
	/*
	RM_NUM NUMBER(10,0) PRIMARY KEY,               -- 원재료 코드(시퀀스)
	RM_TYPE NVARCHAR2(30) NOT NULL,                -- 원재료명
	RM_COMPANY NVARCHAR2(30)NOT NULL,	           -- 제조업체명	
	RM_COLOR NVARCHAR2(15),                        -- 색상		
	RM_PRICE NUMBER(15,0)                          -- 단가
	*/
	private int rm_num;
	private String rm_type;
	private String rm_company;
	private String rm_color;
	private int rm_price;
	private String keyword;
}
