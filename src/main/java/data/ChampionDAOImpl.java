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
			String sql = "SELECT id, champion_name, champion_role FROM champion";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString(1);
				String champion_name = rs.getString(2);
				String champion_role = rs.getString(3);
				champions.add(new Champion(id, champion_name, champion_role));

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
			String sql = "INSERT INTO champion (champion_name, champion_role, champion_description, champion_image) VALUES (?, ?, ?, ?)"; 
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS); 
																								
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
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS); 																				
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
			String sql = "UPDATE film SET title = ?, description = ?, release_year = ?, length = ?, rating = ?, rental_duration = ?, rental_rate = ?, replacement_cost = ?, language_id = ? WHERE id = ?"; 
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS); 																				
			stmt.setString(1, champion.getChampionName());
			stmt.setString(2, champion.getChampionRole());
			stmt.setString(3, champion.getChampionDescription());
			stmt.setString(4, champion.getChampionImage());
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
	public String getChampionRole(String championRole) {
		List<Champion> champions = new ArrayList<>(); //fix link to db
		String c = null;
		for (Champion champion : champions) {
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