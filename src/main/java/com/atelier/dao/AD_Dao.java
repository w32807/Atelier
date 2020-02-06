package com.atelier.dao;

import java.util.List;
import java.util.Map;

import com.atelier.dto.FT_FAQDto;

public interface AD_Dao {

	public boolean FAQInsert(FT_FAQDto faq);

	public List<FT_FAQDto> getFAQList(Map<String, Integer> pageInt);

	public FT_FAQDto getFAQDetail(Integer ft_num);

	public boolean FAQupdate(FT_FAQDto faq);

	public int getFAQCount();

	public boolean delFAQ(String ft_num);


}
