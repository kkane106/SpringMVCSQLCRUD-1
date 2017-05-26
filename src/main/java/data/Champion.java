package data;

public class Champion {
	private String id;
	private String championName;
	private String championRole;
	
	
	public Champion(){
		
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Champion(String id, String championName, String championRole) {
		super();
		this.id = id;
		this.championName = championName;
		this.championRole = championRole;
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
	
//	@Override
//	public String toString() {
//		StringBuilder builder = new StringBuilder();
//		builder.append(championName).append(",").append(championRole);
//			
//		return builder.toString();
//	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(id).append(",").append(championName)
				.append(",").append(championRole);
		return builder.toString();
	}
	
	
}
