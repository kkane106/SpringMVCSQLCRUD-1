package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import com.mysql.jdbc.Statement;

public class ChampionDAOImpl implements ChampionDAO {

	private static String url = "jdbc:mysql://localhost:3306/championsdb"; 
	private String user = "player";
	private String pass = "player";

	public ChampionDAOImpl() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("Error loading MySQL Driver!!!");
		}
	}

	public List<Champion> getAllChampionsFromDB() {
		List<Champion> champions = new ArrayList<>();
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			String sql = "SELECT id, champion_name, champion_role," +
				"champion_description, champion_image FROM champion";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString(1);
				String champion_name = rs.getString(2);
				String champion_role = rs.getString(3);
				String champion_description = rs.getString(4);
				String champion_image = rs.getString(5);
				champions.add(new Champion(id, champion_name, champion_role, 
					champion_description, champion_image));

			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return champions;
		
	
	}

	
	@Override
	public void addOverpoweredChampionToDB(Champion champion) {
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			/*
				For long queries, like the one below, try to use string concatenation
				as much as possible to keep your line length below 100 lines

				This gets into a more meta topic of code quality and is the kind of 
				thing that you could potentially be dinged for in a code review at a
				company.

				Additionally, you can use SQL like line breaks to make it more 
				readable...for example look at the below:
			*/
			String sql = "INSERT INTO champion (" +
												"champion_name," +
												"champion_role," +
												"champion_description," +
												"champion_image" +
											")" +
											"VALUES (?, ?, ?, ?)"; 
			PreparedStatement stmt = conn.prepareStatement(sql, 
				Statement.RETURN_GENERATED_KEYS); 
																								
			stmt.setString(1, champion.getChampionName());
			stmt.setString(2, champion.getChampionRole());
			stmt.setString(3, champion.getChampionDescription());
			stmt.setString(4, champion.getChampionImage());
			
			stmt.executeUpdate();
			String newId = "0";
			ResultSet keys = stmt.getGeneratedKeys();
			if (keys.next()) {
				newId = keys.getString(1);
			}
			System.out.println(newId);
			champion.setId(newId);
			// rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}


	@Override
	public void deleteOverpoweredChampionFromDB(String champion_name) {
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			String sql = "DELETE FROM champion WHERE champion_name = ?"; 
			PreparedStatement stmt = conn.prepareStatement(sql, 
				Statement.RETURN_GENERATED_KEYS); //check if i can delete generated keys parameter	 																				
			stmt.setString(1, champion_name);
			// ResultSet rs = stmt.executeQuery();
			stmt.executeUpdate();
			// rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	@Override
	public void updateChampionInDB(Champion champion) {
		System.out.println("test" + champion);
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			System.out.println(champion.getId()); //remove when working again
			String sql = "UPDATE champion SET champion_name = ?, champion_role = ?," + 
			 "champion_description = ?, champion_image = ? WHERE id = ?"; 
			PreparedStatement stmt = conn.prepareStatement(sql, 
				Statement.RETURN_GENERATED_KEYS);  //check if i can delete generated keys parameter																		
			stmt.setString(1, champion.getChampionName());
			stmt.setString(2, champion.getChampionRole());
			stmt.setString(3, champion.getChampionDescription());
			stmt.setString(4, champion.getChampionImage());
			stmt.setString(5, champion.getId());
			// ResultSet rs = stmt.executeQuery();
			stmt.executeUpdate();
			// rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public String getChampionName(String championName) {
		List<Champion> champions = new ArrayList<>();  // fix link to DB
		String c = null;
		for (Champion champion : champions) {
			if (champion.getChampionName().equalsIgnoreCase(championName)) {
				c = champion.getChampionName();
				break;
			}
		}
		return c;
	}
	
	@Override
	public Champion getChampionId(String id) {
		List<Champion> champions = new ArrayList<>();  // fix link to DB
		Champion c = null;
		for (Champion champion : getAllChampionsFromDB()) {
			if (champion.getId().equals(id)) {
				c = champion;
				break;
			}
		}
		return c;
	}

	@Override
	public String getChampionRole(String championRole) {
		List<Champion> champions = new ArrayList<>(); //fix link to db
		String c = null;
		for (Champion champion : getAllChampionsFromDB()) {
			if (champion.getChampionRole().equalsIgnoreCase(championRole)) {
				c = champion.getChampionRole();
				break;
			}
		}
		return c;
	}

	@Override
	public List<Champion> getAllChampions() {
		List<Champion> champions = new ArrayList<>(); // fix link to db
		if (champions.isEmpty()) {
			champions = getAllChampionsFromDB();
		}
		return champions;
	}

}