package com.icss.rankings.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icss.rankings.pojo.Reporter;
import com.icss.rankings.service.ReporterService;

@Controller
public class ReporterController {
	
	@Autowired
	ReporterService reporterService;
	
	@RequestMapping("insertReporter")
	public String insertReporter(Reporter reporter){
		reporterService.insertReporter(reporter);
		return "queryAllReporter";
	}
	
	@ResponseBody
	@RequestMapping("queryAllReporter")
	public List<Reporter> queryAllReporter(){
		return reporterService.queryAllReporter();
	}
	
	@ResponseBody
	@RequestMapping("queryReporterById")
	public Reporter queryReporterById(Integer rId){
		return reporterService.queryReporterById(rId);
	}
	
	@ResponseBody
	@RequestMapping("deleteReporterById")
	public String deleteReporterById(Integer rId){
		reporterService.deleteReporterById(rId);
		return "yes";
	}
	
	
	@RequestMapping("updateReporterById")
	public String updateReporterById(Reporter reporter){
		reporterService.updateReporterById(reporter);
		return "queryAllReporter";
	}

}
