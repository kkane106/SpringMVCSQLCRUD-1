package data;

public class Champion {
	private String championName;
	private String championRole;
	
	
	public Champion(){
		
	}
	public Champion(String championName, String championRole) {
		this.championName = championName;
		this.championRole = championRole;
	}
	
	public String getChampionName() {
		return championName;
	}
	public void setChampionName(String championName) {
		this.championName = championName;
	}
	public String getChampionRole() {
		return championRole;
	}
	public void setChampionRole(String championRole) {
		this.championRole = championRole;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(championName).append(",").append(championRole);
			
		return builder.toString();
	}
	
	
}
