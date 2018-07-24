package com.icss.rankings.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icss.rankings.pojo.Books;
import com.icss.rankings.pojo.Tup;
import com.icss.rankings.service.TupService;

@Controller
public class TupController {

	@Autowired
	TupService tupService;
	
	@RequestMapping("insertTup")
	public String insertTup(Tup tup){
		tupService.insertTup(tup);
		return "queryAllTup";	
	}
	
	
	
	@ResponseBody        //返回数据集
	@RequestMapping("queryAllTup")
	public List<Tup> queryAllTup(){
		return tupService.queryAllTup();
	}
	
	
	@ResponseBody
	@RequestMapping("deleteTupById")
	public String deleteTupById(Integer tId){
		tupService.deleteTupById(tId);
		return "yes";
	}
	
	@RequestMapping("updateTupById")
	public String updateTupById(Tup tup){
		System.out.println(tup+"aaaaaaaa");
		tupService.updateTupById(tup);
		return "queryAllTup";
	}
	
	
	@ResponseBody
	@RequestMapping("queryTupById")
	public Tup queryTupById(Integer tId){
		return tupService.queryTupById(tId);
	
	}
}
