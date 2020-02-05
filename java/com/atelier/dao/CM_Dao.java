package com.atelier.dao;

import com.atelier.dto.CM_Dto;



public interface CM_Dao {
	
	public boolean memberInsert(CM_Dto member);
	
	public String getSecurityPwd(String cm_id);

	public CM_Dto getMemberInfo(String cm_id);
	
	//public CM_Dto getMemberInfo2(String getSessionId);
	
	public boolean memberUpdate(CM_Dto member);

	public int checkOverId(String CM_ID);
}
