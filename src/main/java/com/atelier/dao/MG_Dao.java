package com.atelier.dao;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.atelier.dto.MG_Dto;

public interface MG_Dao {

	public List<MG_Dto> getList(Integer pageNum);

	public int getBoardCount();

	public MG_Dto getMessage(Integer mg_num);

	public void SendMessage(MG_Dto mDto);

}
