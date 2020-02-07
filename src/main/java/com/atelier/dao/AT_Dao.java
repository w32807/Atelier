package com.atelier.dao;

import com.atelier.dto.AG_Dto;
import com.atelier.dto.PD_productDto;
import com.atelier.dto.PI_productImgDto;

public interface AT_Dao {

	public boolean ATProdInsert(PD_productDto prodDto);

	public void ATProdImgInsert(PI_productImgDto prodImgDto);

	public int getPd_code();
	
	public boolean setATRegistUserData(AG_Dto ag_Dto);

	public PD_productDto getModifyProd(int pd_code);

	public PI_productImgDto getProdImg(int pd_code);

	public boolean ATProdUpdate(PD_productDto prodDto);


}
