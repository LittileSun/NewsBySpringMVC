package com.icss.rankings.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icss.rankings.dao.ReporterMapper;
import com.icss.rankings.pojo.Reporter;


@Service
@Transactional(rollbackFor=Exception.class)
public class ReporterService {
	@Autowired
	ReporterMapper ReporterMapper;
	
	public void insertReporter(Reporter reporter){
		ReporterMapper.insert(reporter);
	}
	
	@Transactional(readOnly=true)
	public List<Reporter> queryAllReporter(){
		return ReporterMapper.queryAllReporter();
	}
	
	public Reporter queryReporterById(Integer rId){
		return ReporterMapper.queryReporterById(rId);
	}

	public void deleteReporterById(Integer rId) {
		ReporterMapper.deleteReporterById(rId);
		
	}
	
	public void updateReporterById(Reporter reporter){
		ReporterMapper.updateReporterById(reporter);
	}
}
