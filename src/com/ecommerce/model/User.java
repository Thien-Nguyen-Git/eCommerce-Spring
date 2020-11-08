package com.ecommerce.model;

public class User {
	private int uid;
	private String name;
	private String email;
	private String phone;
	private String username;
	private String password;
	private String role;
	private String street_name;
	private String apt;
	private String city;
	private String state;
	private int zip;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public User(int uid, String name, String email, String phone, String username, String password, String role,
			String street_name, String apt, String city, String state, int zip) {
		super();
		this.uid = uid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
		this.role = role;
		this.street_name = street_name;
		this.apt = apt;
		this.city = city;
		this.state = state;
		this.zip = zip;
	}



	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getStreet_name() {
		return street_name;
	}

	public void setStreet_name(String street_name) {
		this.street_name = street_name;
	}

	public String getApt() {
		return apt;
	}

	public void setApt(String apt) {
		this.apt = apt;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}
	

	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	@Override
	public String toString() {
		return "User [uid=" + uid + ", name=" + name + ", email=" + email + ", phone=" + phone + ", username="
				+ username + ", password=" + password + ", role=" + role + ", street_name=" + street_name + ", apt="
				+ apt + ", city=" + city + ", state=" + state + ", zip=" + zip + "]";
	}



	
	
	
}
