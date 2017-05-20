package com.skilldistillery.data;

import java.util.List;

public interface ChampionDAO {
	List<Champion> getAllChampions();
	String getChampionName();
	String getChampionRole();
	void deleteChampionFromList();
	String addChampionToList();
	void addOverpoweredChampion();
	void deleteOverpoweredChampion();
}
