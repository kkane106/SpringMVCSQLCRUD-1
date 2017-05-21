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
	
	
	
	
	@ModelAttribute("champions")
	public ArrayList<Champion> pristineChampionsListDisplayedToUser() {
		return new ArrayList<Champion>();
	}
	
	
	@RequestMapping(path="championsList.do", method=RequestMethod.GET)
	public ModelAndView listAllChampions() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		List<Champion> champions = championDAO.getAllChampions(); 
		mv.addObject("champion", champions);
		return mv;
		
	}
	
	@RequestMapping(value="index.do")
	public String showIndexPage() {
		return "index.jsp";
	}
	
}
