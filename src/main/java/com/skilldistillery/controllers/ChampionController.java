package com.skilldistillery.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.data.Champion;
import com.skilldistillery.data.ChampionDAO;

@Controller
@SessionAttributes("champions")
public class ChampionController {
	@Autowired
	private ChampionDAO championDAO;
	
	
	
	
	@ModelAttribute("champions")
	public ArrayList<Champion> pristineChampionsListDisplayedToUser() {
		return new ArrayList<Champion>();
	}
	
	
	@RequestMapping(path="championList.do", method=RequestMethod.GET)
	public ModelAndView listAllChampions() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		mv.addObject("championsList", championDAO.getAllChampions());
		return mv;
		
	}
	
}
