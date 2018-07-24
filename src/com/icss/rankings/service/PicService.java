package com.icss.rankings.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.icss.rankings.dao.PicMapper;
import com.icss.rankings.pojo.Pic;


public class PicService {

	@Autowired
    PicMapper picMapper;
	
	public void insertPic(Pic pic){
		picMapper.insert(pic);
	}
}
