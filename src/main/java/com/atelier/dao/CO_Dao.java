package com.atelier.dao;

import java.util.List;

import com.atelier.dto.CO_NoticeDto;

public interface CO_Dao {

	public List<CO_NoticeDto> getNoticeList(Integer num);

	public CO_NoticeDto getNoticeContents(Integer nt_num);

	public int getBoardCount();

}
