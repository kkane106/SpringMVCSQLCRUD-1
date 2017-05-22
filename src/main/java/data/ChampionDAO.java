package data;

import java.util.List;

public interface ChampionDAO {
	public List<Champion> getAllChampions();
	public String getChampionName(String name);
	public String getChampionRole(String role);     
	public void addOverpoweredChampionToList(String championName, String championRole);
	public void deleteOverpoweredChampionFromList();
}
