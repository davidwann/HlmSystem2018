
// java program

// send email to paul austin

import javax.mail.Session;
import java.util.Properties;
import javax.mail.internet.MimeMessage;

import javax.mail.internet.InternetAddress;
import javax.mail.Message;

import javax.mail.internet.AddressException;
import javax.mail.MessagingException;

import javax.mail.Transport;

public class Email {

	public static void main(String[] args) {

		doWork002(args);

		System.out.println("");
		System.out.println("Program is finished.");
		System.out.println("");
	}

	/* =============================================================== */

	private static void doWork002(String[] args) {

		// --------------------------------------
		// Create Authenticator Object
		// --------------------------------------

		MyAuthenticator myAuthenticator = new MyAuthenticator();

		myAuthenticator.setUsername("paul@hornylikeme.com");
		myAuthenticator.setPassword("cobol4me");

		// --------------------------------------
		// Create Properties object to define 
		//  * email recipient
		// --------------------------------------

		Properties properties = new Properties();

		// properties.setProperty("mail.transport.protocol", "smtp");

		properties.setProperty("mail.smtp.host", "gator3099.hostgator.com");
		properties.setProperty("mail.smtp.port", "587");

		// properties.setProperty("mail.smtp.user", "paul@hornylikeme.com");
		// properties.setProperty("mail.from", "paul@hornylikeme.com");

		System.out.println("");
		System.out.println(properties.toString());

		System.out.println("");
		System.out.println("Properties have been set");
		System.out.println("");

		/* ---------------- */
		/*                  */
		/* ---------------- */


		// --------------------------------------
		// Create the Session
		// --------------------------------------

		Session session = Session.getDefaultInstance(properties, myAuthenticator);
		// Session session;

		System.out.println(session.toString());
		System.out.println("");


		// --------------------------------------
		// x
		// --------------------------------------

		String from = "Paul <paul@hornylikeme.com>";
		String to = "david.wann@gmail.com";

		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Rocks");
			message.setText("Rocks are heavy.");

			Transport.send(message);

			System.out.println("Your email has been sent!");

		} catch (AddressException e) {
			// do something?
			System.out.println(e.toString());

		} catch (MessagingException e) {
			// do something?
			System.out.println(e.toString());
		}

		/* ---------------- */
		/*                  */
		/* ---------------- */

		System.out.println("doWork002 is finished");
		System.out.println("");

		/* ---------------- */
		/*                  */
		/* ---------------- */

	}

}

