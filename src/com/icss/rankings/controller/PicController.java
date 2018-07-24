package com.icss.rankings.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icss.rankings.pojo.Pic;
import com.icss.rankings.service.PicService;



public class PicController {

	@Autowired
	PicService picService;
	
	@RequestMapping("insertPic")
	public String insertPic(Pic pic){
		picService.insertPic(pic);
		return "queryAllPic";	
	}
	
}
