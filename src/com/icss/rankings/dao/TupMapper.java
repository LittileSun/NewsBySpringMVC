package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.Books;
import com.icss.rankings.pojo.Tup;

public interface TupMapper {
   

	 int insert(Tup tup);

	 List<Tup> queryAllTup();
   
	 void deleteTupById(Integer tId);
	 
	  void updateTupById(Tup tup);
	  
	  Tup queryTupById(Integer tId);
}