package com.atelier.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class RO_Dto {
      /*
      RO_NUM NUMBER(10,0) PRIMARY KEY,                     -- 주문번호(시퀀스)
      RO_BUYER NVARCHAR2(50) NOT NULL,                      -- 주문자
      RO_DATE DATE NOT NULL,                                -- 주문날짜
      RO_TYPE NVARCHAR2(30) NOT NULL,                       -- 원재료명
      RO_RM_NUM NUMBER(10,0) NOT NULL,                     -- 원재료 코드
      RO_RM_PRICE NUMBER(15) NOT NULL,                      -- 원재료 단가
      RO_COUNT NUMBER(3) NOT NULL,                          -- 주문 수량            
      RO_STATE NVARCHAR2(10) DEFAULT('배송중') NOT NULL     -- 배송상태
      */
      private int ro_num;
      private String ro_buyer;
      private String ro_type;
      private int ro_rm_num;
      private int ro_rm_price;
      private int ro_count;
      private String ro_state;
      
      @JsonFormat(pattern = "yyyy-MM-dd")
      private Timestamp ro_date;
      private String ro_dateSimple;
}
