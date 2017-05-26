package controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


import data.Champion;
import data.ChampionDAO;

@Controller
@SessionAttributes({"champions"}) // If you want multiple SessionAttributes -- @SessionAttributes({state, flower})
public class ChampionController {
	@Autowired
	private ChampionDAO championDAO;
	
	@ModelAttribute      // do I use this at all? check later
	public List<Champion> currentListOfChampions() {
		return championDAO.getAllChampions();
	}
	
	@ModelAttribute("newChampion")
	Champion newChampion(){
		return new Champion();
	}
	
	
	
	@RequestMapping(path="championsList.do", method=RequestMethod.GET)
	public ModelAndView listAllChampions() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		List<Champion> champions = championDAO.getAllChampions(); 
		mv.addObject("champions", champions);
		return mv;
		
	}
	@RequestMapping(path="addChampion.do", method=RequestMethod.POST)
		public ModelAndView addOverpoweredChampionFromList(@ModelAttribute("newChampion") Champion champion, String id, String championName, String championRole) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		List<Champion> champions = championDAO.getAllChampions(); 
	
		championDAO.addOverpoweredChampionToList(id, championName, championRole);
		mv.addObject("newChampion", champions);
		return mv;
		
	}
	@RequestMapping(path="removeChampion.do", method=RequestMethod.POST)
	public ModelAndView deleteOverpoweredChampionFromList(String championName) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		List<Champion> champions = championDAO.getAllChampions(); 
		
		championDAO.deleteOverpoweredChampionFromList(championName);
		mv.addObject("champions", champions);
		return mv;
		
	}
	
	
	@RequestMapping(value="index.do")   // put a submit button with path index.do on champion page to go back if the user wants to
	public String showIndexPage() {
		return "index.jsp";
	}
	
}
