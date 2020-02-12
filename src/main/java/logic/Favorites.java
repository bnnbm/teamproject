package logic;

import org.hibernate.validator.constraints.NotEmpty;

public class Favorites {
	private String favoriteid;
	private String userid;
	private String nickname;
	private String profile;
	
	public String getFavoriteid() {
		return favoriteid;
	}
	public void setFavoriteid(String favoriteid) {
		this.favoriteid = favoriteid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	@Override
	public String toString() {
		return "Favorites [favoriteid=" + favoriteid + ", userid=" + userid + ", nickname=" + nickname + ", profile="
				+ profile + "]";
	}
	
}
