
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

		/*

		props - Properties object. Used only if a new Session object is created.

		It is expected that the client supplies values for the properties listed in Appendix A 
		of the JavaMail spec (particularly mail.store.protocol, 
 		mail.transport.protocol, mail.host, mail.user, and mail.from) as the defaults are unlikely to work in all cases.

		JavaMail spec Appendix A 

		properties.setProperty("mail.smtp.host", "gator3099.hostgator.com");
		properties.setProperty("mail.smtp.auth", "true");
		properties.setProperty("mail.smtp.port", "465");
		properties.setProperty("mail.smtp.starttls.enable", "true");

		properties.setProperty("mail.host", "gator3099.hostgator.com");
		properties.setProperty("mail.smtp.auth", "true");
		properties.setProperty("mail.smtp.port", "465");
		properties.setProperty("mail.smtp.starttls.enable", "true");



		properties.setProperty("mail.transport.protocol", "smtp");
		properties.setProperty("mail.smtp.starttls.enable", true);
		properties.setProperty("mail.smtp.auth", true);
		properties.setProperty("mail.smtp.host", "gator3099.hostgator.com");
		properties.setProperty("mail.smtp.port", 465);



 		
		*/

		/* ---------------- */
		/*  set properties  */
		/* ---------------- */


/*


mail.debug	                boolean	The initial debug mode. Default is false.

mail.from	                String	The return email address of the current user, used by the InternetAddress method getLocalAddress.

mail.mime.address.strict	boolean	The MimeMessage class uses the InternetAddress method parseHeader to parse headers in messages. 
                            This property controls the strict flag passed to the parseHeader method. The default is true.

mail.host	                String	The default host name of the mail server for both Stores and Transports. Used if the mail.protocol.host property isn't set.

mail.store.protocol	        String	Specifies the default message access protocol. The Session method getStore() returns a Store object that 
                            implements this protocol. By default the first Store provider in the configuration files is returned.

mail.transport.protocol	    String	Specifies the default message transport protocol. The Session method getTransport() returns a Transport 
                            object that implements this protocol. By default the first Transport provider in the configuration files is returned.

mail.user	                String	The default user name to use when connecting to the mail server. Used if the mail.protocol.user property isn't set.

mail.protocol.class	        String	Specifies the fully qualified class name of the provider for the specified protocol. Used in cases where more than 
                            one provider for a given protocol exists; this property can be used to specify which provider to use by default. 
                            The provider must still be listed in a configuration file.

mail.protocol.host	        String	The host name of the mail server for the specified protocol. Overrides the mail.host property.

mail.protocol.port	        int	The port number of the mail server for the specified protocol. If not specified the protocol's default port number is used.

mail.protocol.user	        String	The user name to use when connecting to mail servers using the specified protocol. Overrides the mail.user property.


*/

		// properties.setProperty("mail.from", "");
		// properties.setProperty("mail.host", "");
		// properties.setProperty("", "");

		properties.setProperty("mail.smtp.host", "gator3099.hostgator.com");
		properties.setProperty("mail.smtp.port", "465");

		// properties.setProperty("mail.smtp.user", "");


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

		// --------------------------------------
		// x
		// --------------------------------------

		String from = "paul@hornylikeme.com";
		String to = "david.wann@gmail.com";

		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Test Message");
			message.setText("Did you get this?");

			Transport.send(message);

			// System.out.println("Email class has finished doing its thing!");
			System.out.println("Your email has been sent!");

		} catch (AddressException e) {
			// do something?

			System.out.println("");
			System.out.println("AN ERROR HAS OCCURED!");
			System.out.println("");
			System.out.println(e.toString());

		} catch (MessagingException e) {
			// do something?

			System.out.println("");
			System.out.println("AN ERROR HAS OCCURED!");
			System.out.println("");
			System.out.println(e.toString());
		}



		// end of copy








		System.out.println(session.toString());


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

