package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.web.context.WebApplicationContext;

public class ChampionDAOImpl implements ChampionDAO{
	private static final String INITIAL_CHAMPION_FILE = "/WEB-INF/initialChampions.csv";
	private List<Champion> champions = new ArrayList<>();
	private static final String d = ",";
	
	
	private static String url = "jdbc:mysql://localhost:3306/sdvid";  // change to new db when finished
	private String user = "player";
	private String pass = "player";

	/*
	 * Use Autowired to have Spring inject an instance of a
	 * WebApplicationContext into this object after creation. We will use the
	 * WebApplicationContext to retrieve an ServletContext so we can read from a
	 * file.
	 */
	@Autowired
	private WebApplicationContext wac;

	@Autowired
	ServletContext context; 

	/*
	 * The @PostConstruct method is called by Spring after object creation and
	 * dependency injection
	 */
	
	
	
	public ChampionDAOImpl() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("Error loading MySQL Driver!!!");
		}
	}
	
	
	
	@PostConstruct
	public List<Champion> initInitialChampions() {
		// Retrieve an input stream from the servlet context
		// rather than directly from the file system
		try (InputStream is = wac.getServletContext().getResourceAsStream(INITIAL_CHAMPION_FILE);
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
//			String line = buf.readLine();
			String line;
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split(",");
				String id           = tokens[0];
				String championName = tokens[1];
				String championRole = tokens[2];
				champions.add(new Champion(id, championName, championRole));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
		return champions;
	}
	
	@Override
	public void addOverpoweredChampionToList(String id, String championName, String championRole){
		Champion c = new Champion(id, championName, championRole);
		champions.add(c);
		
	}
	@Override
	public void deleteOverpoweredChampionFromList(String championName){
		Champion c = null;
		for (Champion champion : champions) {
//			if(champion.getChampionName() == c.getChampionName()) {
			if(champion.getChampionName().equalsIgnoreCase(championName)) {
				c = champion;
			}
		}
		champions.remove(c);
	}
	@Override
	public String getChampionName(String championName) {
		String c = null;
		for (Champion champion : champions) {
			if (champion.getChampionName().equalsIgnoreCase(championName)){
				c = champion.getChampionName();
				break;
			}
		}
		return c;
	}

	@Override
	public String getChampionRole(String championRole) {
		String c = null;
		for (Champion champion : champions) {
			if (champion.getChampionRole().equalsIgnoreCase(championRole)){
				c = champion.getChampionRole();
				break;
			}
		}
		return c;
	}
	
	
	@Override
	public List<Champion> getAllChampions() {
		if (champions.isEmpty()){
		champions = initInitialChampions();
		}
		return champions;
	}


}
	            

//	   public void persistChampionList(Champion champion) {
//	        String filePath = context.getRealPath(PERSISTENT_CHAMPION_FILE);
//	        System.out.println("DAO: " + filePath);
//	        try {
//	            PrintWriter out = new PrintWriter(new FileWriter(filePath));
//	            for (Champion champion2 : champions) {
//	            out.println(champion2.getChampionName()+d+champion2.getChampionRole());
//            
//				}
//	            out.close();
//	        } catch (IOException ioe) {
//	            ioe.printStackTrace();
//	        }
//	    }            


//@PostConstruct
//public List<Champion> initInitialChampions() {
//	// Retrieve an input stream from the servlet context
//	// rather than directly from the file system
//	try (InputStream is = wac.getServletContext().getResourceAsStream(INITIAL_CHAMPION_FILE);
//			BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
////		String line = buf.readLine();
//		String line;
//		while ((line = buf.readLine()) != null) {
//			String[] tokens = line.split(",");
//			String id           = tokens[0];
//			String championName = tokens[1];
//			String championRole = tokens[2];
//			champions.add(new Champion(id, championName, championRole));
//		}
//	} catch (Exception e) {
//		System.err.println(e);
//	}
//	return champions;
//}
//
//@Override
//public void addOverpoweredChampionToList(String id, String championName, String championRole){
//	Champion c = new Champion(id, championName, championRole);
//	champions.add(c);
//	
//}
//@Override
//public void deleteOverpoweredChampionFromList(String championName){
//	Champion c = null;
//	for (Champion champion : champions) {
////		if(champion.getChampionName() == c.getChampionName()) {
//		if(champion.getChampionName().equalsIgnoreCase(championName)) {
//			c = champion;
//		}
//	}
//	champions.remove(c);
//}
//@Override
//public String getChampionName(String championName) {
//	String c = null;
//	for (Champion champion : champions) {
//		if (champion.getChampionName().equalsIgnoreCase(championName)){
//			c = champion.getChampionName();
//			break;
//		}
//	}
//	return c;
//}
//
//@Override
//public String getChampionRole(String championRole) {
//	String c = null;
//	for (Champion champion : champions) {
//		if (champion.getChampionRole().equalsIgnoreCase(championRole)){
//			c = champion.getChampionRole();
//			break;
//		}
//	}
//	return c;
//}
//
//
//@Override
//public List<Champion> getAllChampions() {
//	if (champions.isEmpty()){
//	champions = initInitialChampions();
//	}
//	return champions;
//}
