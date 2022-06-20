package fr.solutec.dao;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class FirstProgram {

public static void FirstProgram(String to, String msg)
{
final String username = "biouclem@gmail.com";
final String password = "tmbulgrapbykbsoi";



Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.port", "587");
props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
props.put("mail.smtp.ssl.protocols", "TLSv1.2");



Session session = Session.getInstance(props,
new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(username, password);
}
});



try {



Message message = new MimeMessage(session);
message.setFrom(new InternetAddress("biouclem@gmail.com"));
message.setRecipients(Message.RecipientType.TO,
InternetAddress.parse(to));
message.setSubject("Convocation Evaluation");
message.setText(msg);
Transport.send(message);


}



catch (MessagingException e)
{
// throw new RuntimeException(e);
System.out.println(e.getMessage());
}
}
}