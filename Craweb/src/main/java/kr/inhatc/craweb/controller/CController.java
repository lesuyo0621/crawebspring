package kr.inhatc.craweb.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.inhatc.craweb.dao.Dao;

@Controller
public class CController {
	
	@Autowired
	private SqlSession sqlSeesion;
	
	@RequestMapping("/index")
	public String index(Model model) {
		return"index";
	}
	
	@RequestMapping("/show")
	public String charts(Model model) {
		return "show";
	}
	
	@RequestMapping("/blog")
	public String singleblog(Model model){
		return "single-blog";
	}
	
	@RequestMapping("/events")
	public String events(Model model) {
		return "show";
	}
	
	@RequestMapping("/logincheck")
	public String logincheck(Model model) {
		Dao dao = sqlSeesion.getMapper(Dao.class);
		model.addAttribute("list", dao.list());
		return "logincheck";
	}
	
	@RequestMapping("/datacheck")
	public String datacheck(Model model) {
		return "datacheck";
	}
	

	
}
