package com.atelier.dao;

import java.util.List;
import java.util.Map;

import com.atelier.dto.AD_MaterialDto;
import com.atelier.dto.FT_FAQDto;
import com.atelier.dto.MG_Dto;

public interface AD_Dao {

	public boolean FAQInsert(FT_FAQDto faq);

	public List<FT_FAQDto> getFAQList(Map<String, Integer> pageInt);

	public FT_FAQDto getFAQDetail(Integer ft_num);

	public boolean FAQupdate(FT_FAQDto faq);

	public int getFAQCount();

	public boolean delFAQ(String ft_num);
	
	public boolean materialInsert (AD_MaterialDto material);
	
	public List<AD_MaterialDto> getADCompanyList(int adcPageNum);

	public int getADCompanyCount();

	public List<MG_Dto> getADMessageList(String mg_receiver);

	public AD_MaterialDto getADMaterial(Integer RM_NUM);

	public boolean materialFix(AD_MaterialDto material);

	public void delADMaterial(Integer RM_NUM);
}
