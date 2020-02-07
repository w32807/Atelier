package com.atelier.dao;

import java.util.List;
import java.util.Map;

import com.atelier.dto.CO_NoticeDto;

public interface NT_Dao {
	public List<CO_NoticeDto> getADNoticeList(Map<String, Integer> pageInt);
	
	public int getADNoticeCount();

	public CO_NoticeDto getADNoticeDetail(Integer nt_num);

	public void ADNoticeInsert(CO_NoticeDto ntdto);

	public boolean ADNoticeUpdate(CO_NoticeDto ntdto);
	
	public boolean ADNoticeDelete(String nt_num);

	public void viewCountUpdate(Integer nt_num);	
}
