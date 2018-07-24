package com.icss.rankings.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icss.rankings.dao.BooksMapper;
import com.icss.rankings.pojo.Books;
import com.icss.rankings.pojo.User;

@Service
@Transactional(rollbackFor=Exception.class)
public class BooksService {
	
	@Autowired
    BooksMapper booksMapper;
	
	public void insertBooks(Books books){
		booksMapper.insert(books);
	}
	
	@Transactional(readOnly=true)
	public List<Books> queryAllBooks(){
		return booksMapper.queryAllBooks();
	}
	
	public void deleteBooksById(Integer bId){
		booksMapper.deleteBooksById(bId);
	}
	
	public void updateBooksById(Books books){
		booksMapper.updateBooksById(books);
	}
	
	/*@Transactional(readOnly=true)*/
	public Books queryBooksById(Integer bId){
		return booksMapper.queryBooksById(bId);
	}
	
}
