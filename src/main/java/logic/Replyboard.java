package logic;

import org.hibernate.validator.constraints.NotEmpty;

public class Replyboard {
	private int num;
	private int no;
	private String userid;
	@NotEmpty(message="내용을 입력하세요.")
	private String content;
	private int grp;
	private int grplevel;
	private int grpstep;
	private int boardnum;
	
	
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
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
	public int getGrplevel() {
		return grplevel;
	}
	public void setGrplevel(int grplevel) {
		this.grplevel = grplevel;
	}
	public int getGrpstep() {
		return grpstep;
	}
	public void setGrpstep(int grpstep) {
		this.grpstep = grpstep;
	}
	@Override
	public String toString() {
		return "Replyboard [num=" + num + ", no=" + no + ", userid=" + userid + ", content=" + content + ", grp=" + grp
				+ ", grplevel=" + grplevel + ", grpstep=" + grpstep + ", boardnum=" + boardnum + "]";
	}
	
	
	
}
