package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.Reporter;

public interface ReporterMapper {
    

    void insert(Reporter reporter);
    
    List<Reporter> queryAllReporter();

	Reporter queryReporterById(Integer rId);
	
	void deleteReporterById(Integer rId);
	
	void updateReporterById(Reporter reporter);

}