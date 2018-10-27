package com.hlm.test;

import java.util.List;
import java.util.ArrayList;

public class AccountsHelper {
	
	public List<UserAccount> getAccounts() {
		
		List<UserAccount> userAccounts = new ArrayList<UserAccount>();
		
		userAccounts.add(new UserAccount("Bob", "38117", "SM"));
		userAccounts.add(new UserAccount("Fred", "38119", "SM"));
		userAccounts.add(new UserAccount("Alice", "38125", "SF"));
		userAccounts.add(new UserAccount("John and Connie", "38103", "CP"));
		userAccounts.add(new UserAccount("Linda and Martha", "38105", "CF"));
		userAccounts.add(new UserAccount("Tina", "38117", "SF"));
		userAccounts.add(new UserAccount("Larry and Sandy", "38119", "CP"));
		userAccounts.add(new UserAccount("Chuck", "38122", "SM"));
		
		return userAccounts;
	}
	
	/* - - - - - - - - - - - - - - - - - - */
	
	public String[] getStringAccounts() {
		
		String[] retval = {"Alice Smith", "Bob Jackson", 
				           "Cathy Emerson", "Donna Washington", 
				           "Earl Scruggs", "Fred Flintstone"};
		
		return retval;
	}

}
