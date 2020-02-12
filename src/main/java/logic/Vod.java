package logic;

public class Vod {
	private int no;
	private String tema;
	private String subject;
	private int view;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	@Override
	public String toString() {
		return "Vod [no=" + no + ", tema=" + tema + ", subject=" + subject + ", view=" + view + "]";
	}
	
	
}
