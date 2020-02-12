package com.atelier.dao;

import java.util.List;

import com.atelier.dto.RO_Dto;

public interface RO_Dao {

	public List<RO_Dto> getATOrderInfoList();

	public void rmOrderListCancle(String ro_num);

	public void rmPaymentProd(RO_Dto roDto);

}
