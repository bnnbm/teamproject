package logic;

import org.hibernate.validator.constraints.NotEmpty;

public class Replyvod {
	private int num;
	private int no;
	private String userid;
	@NotEmpty(message="내용을 입력하세요.")
	private String content;
	private int grp;
	private int grolevel;
	private int grpstep;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGrp() {
		return grp;
	}
	public void setGrp(int grp) {
		this.grp = grp;
	}
	public int getGrolevel() {
		return grolevel;
	}
	public void setGrolevel(int grolevel) {
		this.grolevel = grolevel;
	}
	public int getGrpstep() {
		return grpstep;
	}
	public void setGrpstep(int grpstep) {
		this.grpstep = grpstep;
	}
	@Override
	public String toString() {
		return "Replyvod [num=" + num + ", no=" + no + ", userid=" + userid + ", content=" + content + ", grp=" + grp
				+ ", grolevel=" + grolevel + ", grpstep=" + grpstep + "]";
	}
	
	
}
