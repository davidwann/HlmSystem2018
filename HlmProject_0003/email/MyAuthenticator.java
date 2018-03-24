
// new class

// MyAuthenticator

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthenticator extends Authenticator {

	private String username;
	private String password;

	// ------------------------------------------

	public void setUsername(String username) {
		this.username = username;
	}

	// public String getUsername() {
	// 	return this.username;
	// }

	// ------------------------------------------

	public void setPassword(String password) {
		this.password = password;
	}

	// ------------------------------------------

	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(this.username, this.password);
	}
}

