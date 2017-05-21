package com.skilldistillery.data;

import java.util.List;

public interface ChampionDAO {
	public List<Champion> getAllChampions();
	public Champion getChampionName(String name);
//	public Champion getChampionRole();      //add if I have time
	public void addOverpoweredChampionToList(String championName, String championRole);
	public void deleteOverpoweredChampionFromList();
}
