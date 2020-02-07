package com.atelier.dao;

import java.util.List;
import java.util.Map;

import com.atelier.dto.PD_productDto;

public interface PD_Dao {
	public List<PD_productDto> getATProdList(Map<String, Integer> pageInt);
	
	public int getATProdListCount();

	public List<PD_productDto> getATProdRegistTrueList(Map<String, Integer> pageInt);

	public boolean prodRegistCancle(String pd_code);
}