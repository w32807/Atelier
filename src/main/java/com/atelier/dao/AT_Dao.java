package com.atelier.dao;

import java.util.List;

import com.atelier.dto.AG_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.dto.PI_productImgDto;
import com.atelier.dto.SM_Dto;

public interface AT_Dao {

	public boolean ATProdInsert(PD_productDto prodDto);

	public void ATProdImgInsert(PI_productImgDto prodImgDto);

	public int getPd_code();
	
	public boolean setATRegistUserData(AG_Dto ag_Dto);

	public PD_productDto getModifyProd(int pd_code);

	public PI_productImgDto getProdImg(int pd_code);

	public boolean ATProdUpdate(PD_productDto prodDto);

	public void changeProdRegist(Integer pd_code);

	public void replyInsert(SM_Dto reply);

	public List<SM_Dto> getReplyList1(String sm_receiver);

	public List<SM_Dto> getReplyList2(SM_Dto reply);


}
