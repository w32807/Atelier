package com.atelier.dao;

import com.atelier.dto.CM_Dto;

public interface CM_Dao {

	public String getMemberPwd(String cm_id);

	public CM_Dto getMemberInfo(String cm_id);

}
