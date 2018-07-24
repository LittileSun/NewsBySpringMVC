package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.Books;

public interface BooksMapper {

	//�����鼮                              record?
    int insert(Books books);
    
    //��ѯȫ���鼮
    List<Books> queryAllBooks();
    
    //��idɾ���鼮
    void deleteBooksById(Integer bId);
    
    //����id�޸�
    void updateBooksById(Books books);
    
    //����id��ѯ����
    Books queryBooksById(Integer bId);
    
    
   
}