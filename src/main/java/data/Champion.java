package data;

public class Champion {  // implement ability to see champion description, and jpg/image/gif
	private String id;
	private String championName;
	private String championRole;
	private String championDescription;
	private String championImage;
	
	
	public String getChampionDescription() {
		return championDescription;
	}

	public void setChampionDescription(String championDescription) {
		this.championDescription = championDescription;
	}

	public String getChampionImage() {
		return championImage;
	}

	public void setChampionImage(String championImage) {
		this.championImage = championImage;
	}

	public Champion(String id, String championName, String championRole, String championDescription,
			String championImage) {
		super();
		this.id = id;
		this.championName = championName;
		this.championRole = championRole;
		this.championDescription = championDescription;
		this.championImage = championImage;
	}

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
