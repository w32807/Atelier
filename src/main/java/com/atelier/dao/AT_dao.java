package com.atelier.dao;

import com.atelier.dto.PD_productDto;
import com.atelier.dto.PI_productImgDto;

public interface AT_dao {

	public boolean ATProdInsert(PD_productDto prodDto);

	public void ATProdImgInsert(PI_productImgDto prodImgDto);

	public int getPd_code();

}
