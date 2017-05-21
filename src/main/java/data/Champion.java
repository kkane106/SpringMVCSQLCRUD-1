package data;

public class Champion {
	private String championName;
	private String championRole;
	
	
	
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
	
	public Champion(String championName, String championRole) {
		super();
		this.championName = championName;
		this.championRole = championRole;
	}
	public Champion(){
		
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(championName).append(",").append(championRole);
			
		return builder.toString();
	}
	
	
}
