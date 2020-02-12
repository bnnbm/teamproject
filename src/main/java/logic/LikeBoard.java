package logic;

public class LikeBoard {

	private String userid;
	private int no;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	@Override
	public String toString() {
		return "LikeBoard [userid=" + userid + ", no=" + no + "]";
	}
}
