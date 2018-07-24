package com.icss.rankings.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icss.rankings.pojo.User;
import com.icss.rankings.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("insertUser")
	public String insertUser(User user){
		userService.insertUser(user);
	/*	if(user.getuRole()==1){*/
		    return "queryAllUser";
	/*	}else{
			return "rankingFrame";
		}*/
		
	}
	
	//传统java写法数据与页面一起跳转非ajax请求
	@ResponseBody
	@RequestMapping("userLogin")
	public ModelAndView userLogin(User user){
		User u = userService.userLogin(user);
		ModelAndView  mv = new ModelAndView();
		if(u!=null){
			mv.addObject("u",u);
			System.out.println("********"+u.getuId());
			if(u.getuRole()==0){
			  mv.setViewName("rankingFrame");
			}else{
				//跳轉到用戶介面中
				mv.setViewName("Main");
			}
		}else{
			mv.setViewName("userLogin");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("queryAllUser")
	public List<User> queryAllUser(){
		List<User> list=userService.queryAllUser();
		return list;
	}
	
	@ResponseBody
	@RequestMapping("deleteUserById")
	public String deleteUserById(Integer uId){
		userService.deleteUserById(uId);
		return "yes";//数据值yes
	}
	
	//传统页面开发数据与页面一起传
	@RequestMapping("queryUserById")
	public ModelAndView queryUserById(Integer uId){
		User user = userService.queryUserById(uId);
		ModelAndView mv = new ModelAndView();
		//传递数据
		mv.addObject("user",user);
		//转发的界面
		mv.setViewName("updateUser");
		return mv;
	}
	
	@RequestMapping("updateUserById")
	public String updateUserById(User user){
		userService.updateUserById(user);
		return "queryAllUser";//跳转界面到queryAllUser.jsp
	}
	
	@ResponseBody
	@RequestMapping("queryUserById2")
	public User queryUserById2(Integer uId){
		User user = userService.queryUserById(uId);
		return user;
	}
	
	@RequestMapping("updateUserWpd")
	public String updateUserWpd(User user){
		userService.updateUserWpd(user);
		return "queryAllUser";
	}
	
	
}
