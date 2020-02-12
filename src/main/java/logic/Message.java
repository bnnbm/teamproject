package logic;

import org.hibernate.validator.constraints.NotEmpty;

public class Message {	
	private int no;
	private String userid;
	private String sendid;
	@NotEmpty(message="받는사람은 필수 입력입니다.")
	private String receive;
	@NotEmpty(message="분류는 필수 입력입니다.")
	private String tema;
	@NotEmpty(message="제목은 필수 입력입니다.")
	private String subject;
	@NotEmpty(message="내용은 필수 입력입니다.")
	private String content;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSendid() {
		return sendid;
	}
	public void setSendid(String sendid) {
		this.sendid = sendid;
	}
	public String getReceive() {
		return receive;
	}
	public void setReceive(String receive) {
		this.receive = receive;
	}
	public String getTema() {
		return tema;
	}
	public void setTema(String tema) {
		this.tema = tema;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Message [no=" + no + ", userid=" + userid + ", sendid=" + sendid + ", receive=" + receive + ", tema="
				+ tema + ", subject=" + subject + ", content=" + content + "]";
	}
	
	
}
