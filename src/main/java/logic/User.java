package logic;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class User {
   @Size(min = 3, max = 40, message = "아이디는 3자 이상 40자 이하로 입력하세요.")
   private String userid;
   @Size(min = 3, max = 20, message = "비밀번호는 3자 이상 20자 이하로 입력하세요.")
   private String pass;
   @NotEmpty
   private String name;
   @NotEmpty
   private String tel;
   @NotEmpty
   private String age;
   
   private MultipartFile profile;
   private String profileUrl;
   
   @NotEmpty
   private String email;
   @NotEmpty
   private String nickname;
   private String card1;
   private String card2;
   private String year;
   @NotEmpty
   private String zonecode;
   private String address1;
   private String address_etc;
   private String address;
   
   
   public String getUserid() {
      return userid;
   }
   public void setUserid(String userid) {
      this.userid = userid;
   }
   public String getPass() {
      return pass;
   }
   public void setPass(String pass) {
      this.pass = pass;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getTel() {
      return tel;
   }
   public void setTel(String tel) {
      this.tel = tel;
   }
   public String getAge() {
      return age;
   }
   public void setAge(String age) {
      this.age = age;
   }
   public MultipartFile getProfile() {
      return profile;
   }
   public void setProfile(MultipartFile profile) {
      this.profile = profile;
   }
   public String getProfileUrl() {
      return profileUrl;
   }
   public void setProfileUrl(String profileUrl) {
      this.profileUrl = profileUrl;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public String getNickname() {
      return nickname;
   }
   public void setNickname(String nickname) {
      this.nickname = nickname;
   }
   public String getCard1() {
      return card1;
   }
   public void setCard1(String card1) {
      this.card1 = card1;
   }
   public String getCard2() {
      return card2;
   }
   public void setCard2(String card2) {
      this.card2 = card2;
   }
   public String getYear() {
      return year;
   }
   public void setYear(String year) {
      this.year = year;
   }
   public String getZonecode() {
      return zonecode;
   }
   public void setZonecode(String zonecode) {
      this.zonecode = zonecode;
   }
   public String getAddress1() {
      return address1;
   }
   public void setAddress1(String address1) {
      this.address1 = address1;
   }
   public String getAddress_etc() {
      return address_etc;
   }
   public void setAddress_etc(String address_etc) {
      this.address_etc = address_etc;
   }
   public String getAddress() {
      return address;
   }
   public void setAddress(String address) {
      this.address = address;
   }
   @Override
   public String toString() {
      return "User [userid=" + userid + ", pass=" + pass + ", name=" + name + ", tel=" + tel + ", age=" + age
            + ", profile=" + profile + ", profileUrl=" + profileUrl + ", email=" + email + ", nickname=" + nickname
            + ", card1=" + card1 + ", card2=" + card2 + ", year=" + year + ", zonecode=" + zonecode + ", address1="
            + address1 + ", address_etc=" + address_etc + ", address=" + address + "]";
   }
   
   

   
   

}