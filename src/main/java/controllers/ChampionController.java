package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.Champion;
import data.ChampionDAO;

@Controller
@SessionAttributes({"champions"}) // If you want multiple SessionAttributes -- @SessionAttributes({state, flower})
public class ChampionController {
	@Autowired
	private ChampionDAO championDAO;
	
	@ModelAttribute("newChampion")
	Champion newChampion(){
		return new Champion();
	}
	
//	@RequestMapping(path="championsList.do", method=RequestMethod.GET)
//	public ModelAndView listAllChampions() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("userChampionView.jsp");
//		List<Champion> champions = championDAO.getAllChampions(); 
//		mv.addObject("champions", champions);
//		return mv;
//		
//	}
	@RequestMapping(path="championsList.do", method=RequestMethod.GET)
	public ModelAndView listAllChampions() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		List<Champion> champions = championDAO.getAllChampions(); 
		mv.addObject("champions", champions);
		return mv;
		
	}
	@RequestMapping(path="addChampion.do", method=RequestMethod.POST)
		public ModelAndView addOverpoweredChampionFromList(@ModelAttribute("newChampion") Champion champion, String id, String championName, String championRole, String championDescription, String championImage) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		
		championDAO.addOverpoweredChampionToDB(champion);
		List<Champion> champions = championDAO.getAllChampions(); 
		mv.addObject("champions", champions);
		return mv;
		
	}
	@RequestMapping(path="removeChampion.do", method=RequestMethod.POST)
	public ModelAndView deleteOverpoweredChampionFromList(String championName) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userChampionView.jsp");
		championDAO.deleteOverpoweredChampionFromDB(championName);
		List<Champion> champions = championDAO.getAllChampions(); 
		
		mv.addObject("champions", champions);
		return mv;
		
	}
	
	@RequestMapping(path="updateChampion.do", method=RequestMethod.POST)
	public ModelAndView updateChampionInDB(@ModelAttribute("newChampion") Champion champion, String id, String championName, String championRole, String championDescription, String championImage) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateChampion.jsp");
		championDAO.updateChampionInDB(champion);
		List<Champion> champions = championDAO.getAllChampions(); 
		mv.addObject("champions", champions);
		return mv;
		
	}
	
	@RequestMapping(value="updateChampion.do", method=RequestMethod.GET)   
	public ModelAndView goToUpdateChampionView(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("champion", championDAO.getChampionName(id));
		mv.setViewName("updateChampion.jsp");
		return mv;
	}
	
	@RequestMapping(value="userChampionView.do")   
	public String showUserChampionView() {
		return "userChampionView.jsp";
	}
	
	@RequestMapping(value="index.do")   
	public String showIndexPage() {
		return "index.jsp";
	}
	
}
