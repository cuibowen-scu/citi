package edu.scdx.entity;

public class User {
    
	private String tel;
	
    private String password;
    
    private String name;

    private int rank;

	public User(String tel, String password, String name, int rank) {
		this.tel = tel;
		this.password = password;
		this.name = name;
		this.rank = rank;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public User() {

	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
    
    
    
}
