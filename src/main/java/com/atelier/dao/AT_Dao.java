package com.atelier.dao;

import java.util.List;

import com.atelier.dto.AG_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.dto.PI_productImgDto;
import com.atelier.dto.PO_Dto;
import com.atelier.dto.SM_Dto;
import com.atelier.vo.PO_Vo;

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

	public void deleteImg(int currentPd_code);

	public void deleteProd(int pdCode);
	
	public void chgDeliveryState(int pdCode);

	public String getAM_Name(String aT_id);

	public List<PO_Vo> getATOrderList(PO_Vo po_Vo);


	
}
