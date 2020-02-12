package com.atelier.dao;

import java.util.List;
import java.util.Map;

import com.atelier.dto.CO_NoticeDto;
import com.atelier.dto.NT_Dto;

public interface NT_Dao {
	public List<CO_NoticeDto> getADNoticeList(Map<String, Integer> pageInt);
	
	public int getADNoticeCount();

	public CO_NoticeDto getADNoticeDetail(Integer nt_num);

	public void ADNoticeInsert(CO_NoticeDto ntdto);

	public boolean ADNoticeUpdate(CO_NoticeDto ntdto);
	
	public boolean ADNoticeDelete(String nt_num);

	public void viewCountUpdate(Integer nt_num);
	
	public boolean noticeWrite(NT_Dto ntDto);

	public List<NT_Dto> getList(int pageNum);

	public int getBoardCount();

	public boolean upView(Integer nt_num);

	public NT_Dto getContents(Integer nt_num);
}
