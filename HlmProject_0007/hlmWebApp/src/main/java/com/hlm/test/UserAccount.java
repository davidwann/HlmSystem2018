package com.hlm.test;

import java.io.Serializable;

public class UserAccount implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String userName;
	private String zipCode;
	private String accountType;
	
	/* - - - - - - - - - - - - - */
	
	public UserAccount() {
		
		this.userName = "Paul";
		this.zipCode = "72450";
		this.accountType = "SM";
	}
	
	/* - - - - - - - - - - - - - */
	
	public UserAccount(String userName, 
			           String zipCode, 
			           String accountType) {
		
		this.userName = userName;
		this.zipCode = zipCode;
		this.accountType = accountType;
	}
	
	/* - - - - - - - - - - - - - */
	
	public String getUserName() {
		return this.userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	/* - - - - - - - - - - - - - */
	
	public String getZipCode() {
		return this.zipCode;
	}
	
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	
	/* - - - - - - - - - - - - - */
	
	public String getAccountType() {
		return this.accountType;
	}
		
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	
	/* - - - - - - - - - - - - - */

}
