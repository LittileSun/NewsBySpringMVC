package com.icss.rankings.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icss.rankings.dao.TupMapper;
import com.icss.rankings.pojo.Books;
import com.icss.rankings.pojo.Tup;

@Service
@Transactional(rollbackFor=Exception.class)
public class TupService {

	@Autowired
	TupMapper tupMapper;
	public void insertTup(Tup tup){
		tupMapper.insert(tup);
	}
	
	
	@Transactional(readOnly=true)
	public List<Tup> queryAllTup(){
		return tupMapper.queryAllTup();
	}
	
	public void deleteTupById(Integer tId){
		tupMapper.deleteTupById(tId);
	}
	
	public void updateTupById(Tup tup){
		tupMapper.updateTupById(tup);
	}
	
	public Tup queryTupById(Integer tId){
		return tupMapper.queryTupById(tId);
	}
}
