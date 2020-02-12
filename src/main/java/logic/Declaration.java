package logic;

import org.hibernate.validator.constraints.NotEmpty;

public class Declaration {
	private int no;
	
	@NotEmpty(message = "글쓴이를 입력하세요.")
	private String userid;
		
	@NotEmpty(message = "받는 사람을 입력하세요.")
	private String declarant;
		
	@NotEmpty(message = "종류를 선택하세요.")
	private String tema;
	
	@NotEmpty(message = "제목을 입력하세요.")
	private String subject;

	@NotEmpty(message = "내용을 입력하세요.")
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

	public String getDeclarant() {
		return declarant;
	}

	public void setDeclarant(String declarant) {
		this.declarant = declarant;
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
		return "Declaration [no=" + no + ", userid=" + userid + ", declarant=" + declarant + ", tema=" + tema
				+ ", subject=" + subject + ", content=" + content + "]";
	}
	
}
