package com.giasuanhem.service.Email;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.Multipart;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeBodyPart;
import jakarta.mail.internet.MimeMessage;
import jakarta.mail.internet.MimeMultipart;

public class EmailService {
	static public String formOTP(String codeOTP) {
		return "<div class=\"\"><div class=\"aHl\"></div><div id=\":3lt\" tabindex=\"-1\"></div><div id=\":3sl\" class=\"ii gt\" jslog=\"20277; u014N:xr6bB; 4:W251bGwsbnVsbCxbXV0.\"><div id=\":3u3\" class=\"a3s aiL \"><div class=\"adM\">\r\n"
				+ "</div><div style=\"width:100%;background-color:#f3f9ff;padding:5rem 0\"><div class=\"adM\">\r\n"
				+ "</div><div style=\"max-width:700px;background-color:white;margin:0 auto\"><div class=\"adM\">\r\n"
				+ "    </div><div style=\"width:100%;background-color:#009fef;padding:20px 0;text-align:center\"><div class=\"adM\">\r\n"
				+ "        </div><h3 style=\"font-size:1.5rem; color:#001c44\">Trung tâm gia sư</h3>\r\n"
				+ "    </div>\r\n" + "    <div style=\"width:100%;padding:30px 0;display:grid\">\r\n" + "  \r\n"
				+ "        <div style=\"font-size:1.2rem;margin:0 30px;text-align:center\">\r\n"
				+ "            <p>Mã OTP của bạn là: <span style=\"font-weight:700\">" + codeOTP
				+ "</span></p><div class=\"yj6qo\"></div><div class=\"adL\">\r\n"
				+ "        </div></div><div class=\"adL\">\r\n" + "    </div></div><div class=\"adL\">\r\n"
				+ "</div></div><div class=\"adL\">\r\n" + "    \r\n"
				+ "</div></div></div></div><div id=\":3tu\" class=\"ii gt\" style=\"display:none\"><div id=\":3tv\" class=\"a3s aiL \"></div></div><div class=\"hi\"></div></div>";
	}

	static public String formInvoice(double total, String idInvoice, String date, String username, String subject,
			String idCource) {
		return "\r\n"
				+ "<div bgcolor=\"#f6f6f6\" style=\"color: #333; height: 100%; width: 100%;\" height=\"100%\" width=\"100%\">\r\n"
				+ "    <table bgcolor=\"#f6f6f6\" cellspacing=\"0\" style=\"border-collapse: collapse; padding: 40px; width: 100%;\" width=\"100%\">\r\n"
				+ "        <tbody>\r\n" + "            <tr>\r\n"
				+ "                <td width=\"5px\" style=\"padding: 0;\"></td>\r\n"
				+ "                <td style=\"clear: both; display: block; margin: 0 auto; max-width: 600px; padding: 10px 0;\">\r\n"
				+ "                    <table width=\"100%\" cellspacing=\"0\" style=\"border-collapse: collapse;\">\r\n"
				+ "                        <tbody>\r\n" + "                            <tr>\r\n"
				+ "                                <td style=\"color: #999; font-size: 12px; padding: 0; text-align: right;\" align=\"right\">\r\n"
				+ "                                    Trung tâm gia sư Anh Em<br />\r\n"
				+ "                                    Hóa đơn #" + idInvoice + "<br />\r\n"
				+ "                                    " + date + "\r\n" + "                                </td>\r\n"
				+ "                            </tr>\r\n" + "                        </tbody>\r\n"
				+ "                    </table>\r\n" + "                </td>\r\n"
				+ "                <td width=\"5px\" style=\"padding: 0;\"></td>\r\n" + "            </tr>\r\n" + "\r\n"
				+ "            <tr>\r\n" + "                <td width=\"5px\" style=\"padding: 0;\"></td>\r\n"
				+ "                <td bgcolor=\"#FFFFFF\" style=\"border: 1px solid #000; clear: both; display: block; margin: 0 auto; max-width: 600px; padding: 0;\">\r\n"
				+ "                    <table width=\"100%\" style=\"background: #f9f9f9; border-bottom: 1px solid #eee; border-collapse: collapse; color: #999;\">\r\n"
				+ "                        <tbody>\r\n" + "                            <tr>\r\n"
				+ "                                <td width=\"50%\" style=\"padding: 20px;\"><strong style=\"color: #333; font-size: 24px;\">"
				+ total + " VNĐ </strong>Đã thanh toán </td>\r\n"
				+ "                                <td align=\"right\" width=\"50%\" style=\"padding: 20px;\">Cảm ơn bạn đã tin tưởng Trung tâm gia sư Anh Em</td>\r\n"
				+ "                            </tr>\r\n" + "                        </tbody>\r\n"
				+ "                    </table>\r\n" + "                </td>\r\n"
				+ "                <td style=\"padding: 0;\"></td>\r\n"
				+ "                <td width=\"5px\" style=\"padding: 0;\"></td>\r\n" + "            </tr>\r\n"
				+ "            <tr>\r\n" + "                <td width=\"5px\" style=\"padding: 0;\"></td>\r\n"
				+ "                <td style=\"border: 1px solid #000; border-top: 0; clear: both; display: block; margin: 0 auto; max-width: 600px; padding: 0;\">\r\n"
				+ "                    <table cellspacing=\"0\" style=\"border-collapse: collapse; border-left: 1px solid #000; margin: 0 auto; max-width: 100%; width:100%\">\r\n"
				+ "                        <tbody>\r\n" + "                            <tr>\r\n"
				+ "                                <td valign=\"top\"  style=\"padding: 20px;\">\r\n"
				+ "                                    <h3\r\n" + "                                        style=\"\r\n"
				+ "                                            border-bottom: 1px solid #000;\r\n"
				+ "                                            color: #000;\r\n"
				+ "                                            font-family: 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;\r\n"
				+ "                                            font-size: 18px;\r\n"
				+ "                                            font-weight: bold;\r\n"
				+ "                                            line-height: 1.2;\r\n"
				+ "                                            margin: 0;\r\n"
				+ "                                            margin-bottom: 15px;\r\n"
				+ "                                            padding-bottom: 5px;\r\n"
				+ "                                        \"\r\n" + "                                    >\r\n"
				+ "                                        Chi tiết hóa đơn\r\n"
				+ "                                    </h3>\r\n"
				+ "                                    <table cellspacing=\"0\" style=\"border-collapse: collapse; margin-bottom: 40px; width:100%\">\r\n"
				+ "                                        <tbody>\r\n"
				+ "                                            <tr>\r\n"
				+ "                                                <td style=\"padding: 5px 0;\">Tên tài khoản</td>\r\n"
				+ "                                                <td align=\"right\" style=\"padding: 5px 0;\">"
				+ username + "</td>\r\n" + "                                            </tr>\r\n"
				+ "                                            <tr>\r\n"
				+ "                                                <td style=\"padding: 5px 0;\">" + subject
				+ "</td>\r\n"
				+ "                                                <td align=\"right\" style=\"padding: 5px 0;\">Mã lớp: "
				+ idCource + "</td>\r\n" + "                                            </tr>\r\n"
				+ "                                            <tr>\r\n"
				+ "                                                <td style=\"padding: 5px 0;\">Số tiền phải trả: </td>\r\n"
				+ "                                                <td align=\"right\" style=\"padding: 5px 0;\">"
				+ total + " VNĐ</td>\r\n" + "                                            </tr>\r\n"
				+ "                                            <tr>\r\n"
				+ "                                                <td style=\"border-bottom: 2px solid #000; border-top: 2px solid #000; font-weight: bold; padding: 5px 0;\">Tổng tiền:</td>\r\n"
				+ "                                                <td align=\"right\" style=\"border-bottom: 2px solid #000; border-top: 2px solid #000; font-weight: bold; padding: 5px 0;\">"
				+ total + " VNĐ</td>\r\n" + "                                            </tr>\r\n"
				+ "                                        </tbody>\r\n"
				+ "                                    </table>\r\n" + "                                </td>\r\n"
				+ "                            </tr>\r\n" + "                        </tbody>\r\n"
				+ "                    </table>\r\n" + "                </td>\r\n"
				+ "                <td width=\"5px\" style=\"padding: 0;\"></td>\r\n" + "            </tr>\r\n"
				+ "        </tbody>\r\n" + "    </table>\r\n" + "</div>";
	}

	static public Boolean sendEmail(String email, String subject, String content) {
		try {
			final String username = "thcstrandainghiaphat8a2@gmail.com";
			final String password = "vrhvmndpzrfvrdwy";

			Properties prop = new Properties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.port", "587");
			prop.put("mail.smtp.auth", "true");
			prop.put("mail.smtp.starttls.enable", "true"); // TLS

			Session session = Session.getInstance(prop, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});

			try {

				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("thcstrandainghiaphat8a2@gmail.com"));
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
				message.setSubject(subject);
				message.setText(content);

				Multipart multipart = new MimeMultipart("related");

				MimeBodyPart htmlPart = new MimeBodyPart();
				// add reference to your image to the HTML body <img src="cid:some-image-cid"
				// alt="img" />
				htmlPart.setText(content, "utf-8", "html");
				multipart.addBodyPart(htmlPart);
				message.setContent(multipart);

				Transport.send(message);
				System.out.println("Done");

			} catch (MessagingException e) {
				e.printStackTrace();
			}
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
