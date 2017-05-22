package data;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.web.context.WebApplicationContext;

public class ChampionDAOImpl implements ChampionDAO{
	private static final String INITIAL_CHAMPION_FILE = "/WEB-INF/initialChampions.txt";
	private static String PERSISTENT_CHAMPION_FILE = "/WEB-INF/persistentChampions.txt"; // Don't need to use in order to reflect a current list of League champions during the web application lifespan
	private List<Champion> champions = new ArrayList<>();
	private static final String d = ",";

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
				String championName = tokens[0];
				String championRole = tokens[1];
				champions.add(new Champion(championName, championRole));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
		return champions;
	}
	
	@Override
	public void addOverpoweredChampionToList(String championName, String championRole){
		Champion c = new Champion(championName, championRole);
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

	   public void persistChampionList(Champion champion) {
	        String filePath = context.getRealPath(PERSISTENT_CHAMPION_FILE);
	        System.out.println("DAO: " + filePath);
	        try {
	            PrintWriter out = new PrintWriter(new FileWriter(filePath));
	            for (Champion champion2 : champions) {
	            out.println(champion2.getChampionName()+d+champion2.getChampionRole());
            
				}
	            out.close();
	        } catch (IOException ioe) {
	            ioe.printStackTrace();
	        }
	    }            
}
	            
//	            for (Pizza p : order.getPizzas()) {
//	                out.println(order.getCustomerEmail()+d+p.getCrust()+p.getSize()+d+p.getSauce()
//	                            +p.getToppings()
//	                );
//	                
//	            }
//	            out.close();
//	        } catch (IOException ioe) {
//	            ioe.printStackTrace();
//	        }
//	    }


	

// @Override
// public void persistOrder(Order order) {
// String orderFile
//
// try {
// PrintWriter out = new PrintWriter(new FileWriter(PERSISTENT_CHAMPION_FILE));
// }
// }

// @PostConstruct
// public void createChampionAndPutIntoUpdatedListOfChampions(){
// try (InputStream is =
// wac.getServletContext().getResourceAsStream(PERSISTENT_CHAMPION_FILE);
//
// }
// @PostConstruct
// public void deleteChampionAndUpdateListOfChampions(){
// try (InputStream is =
// wac.getServletContext().getResourceAsStream(PERSISTENT_CHAMPION_FILE);
//
// }

// Rob's example

// private static final String d = "|";
// private void loadOrders() {
// String line = "Cat|Dog";
// line.split("\\|");
// }
// @Autowired
// ServletContext context;
// @Override
// public void persistOrder(Order order) {
// String orderFile = "WEB-INF/orders.csv";
// String filePath = context.getRealPath(orderFile);
// System.out.println("DAO: " + filePath);
// try {
// PrintWriter out = new PrintWriter(new FileWriter(filePath));
// for (Pizza p : order.getPizzas()) {
// out.println(order.getCustomerEmail()+d+p.getCrust()+p.getSize()+d+p.getSauce()
// +p.getToppings()
// );
//
// }
// out.close();
// } catch (IOException ioe) {
// ioe.printStackTrace();
// }
// }
//
//
//
