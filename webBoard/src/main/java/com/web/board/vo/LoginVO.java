package com.web.board.vo;

public class LoginVO {

	private String id;
	private String password;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassward() {
		return password;
	}
	public void setPassward(String passward) {
		this.password = passward;
	}
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", password=" + password + "]";
	}
	
}
