package com.icss.rankings.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icss.rankings.pojo.Books;
import com.icss.rankings.pojo.User;
import com.icss.rankings.service.BooksService;

@Controller
public class BooksController {
    
	@Autowired
	BooksService booksService;
	
	@RequestMapping("insertBooks")
	public String insertBooks(Books books){
		booksService.insertBooks(books);
		return "queryAllBooks";	
	}
	
	@ResponseBody        //返回数据集
	@RequestMapping("queryAllBooks")
	public List<Books> queryAllBooks(){
		return booksService.queryAllBooks();
	}
	
	
	@ResponseBody
	@RequestMapping("deleteBooksById")
	public String deleteBooksById(Integer bId){
		booksService.deleteBooksById(bId);
		return "yes";
	}
	
	@RequestMapping("updateBooksById")
	public String updateBooksById(Books books){
		booksService.updateBooksById(books);
		return "queryAllBooks";
	}
	
	
	@ResponseBody
	@RequestMapping("queryBooksById")
	public Books queryBooksById(Integer bId){
		return booksService.queryBooksById(bId);
	
	}
	
/*	@RequestMapping("queryBooksById")
	public ModelAndView queryBooksById(Integer uId){
		Books books = booksService.queryBooksById(uId);
		ModelAndView mv = new ModelAndView();
		//传递数据
		mv.addObject("books",books);
		//转发的界面
		mv.setViewName("updateBooks");
		return mv;
	}*/
}
