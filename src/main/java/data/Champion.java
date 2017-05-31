package data;

public class Champion {  // implement ability to see champion description, and jpg/image/gif
	private String id;
	private String championName;
	private String championRole;
	private String championDescription;
	private String championImage;
	
	/*
		This is more a style note:

		I would recommend keeping your constructors grouped after your field
		variables in classes and before your getters/setters.

		This keeps your POJOs well organized and saves you from digging through 
		your own classes in search of a constructor you may or may not have 
		written.
	*/
	public Champion(){}

	public Champion(String championName, String championRole) {
		this.championName = championName;
		this.championRole = championRole;
	}
	public Champion(String id, String championName, String championRole) {
		this.id = id;
		this.championName = championName;
		this.championRole = championRole;
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
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
