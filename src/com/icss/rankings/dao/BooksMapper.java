package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.Books;

public interface BooksMapper {

	//生成书籍                              record?
    int insert(Books books);
    
    //查询全部书籍
    List<Books> queryAllBooks();
    
    //按id删除书籍
    void deleteBooksById(Integer bId);
    
    //根据id修改
    void updateBooksById(Books books);
    
    //根据id查询数据
    Books queryBooksById(Integer bId);
    
    
   
}