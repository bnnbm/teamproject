package logic;

import java.util.Date;

import javax.validation.constraints.NotNull;

public class Review {
   private int rev_id;
   private String userid;
   private int itemid;
   private String rev_subject;
   private String rev_content;
   private int rev_score;
   private Date rev_date;
   private int num;
   @NotNull
   Integer rating; // 평점을 위한 필드추가
   public int getRev_id() {
      return rev_id;
   }
   public void setRev_id(int rev_id) {
      this.rev_id = rev_id;
   }
   public String getUserid() {
      return userid;
   }
   public void setUserid(String userid) {
      this.userid = userid;
   }
   public int getItemid() {
      return itemid;
   }
   public void setItemid(int itemid) {
      this.itemid = itemid;
   }
   public String getRev_subject() {
      return rev_subject;
   }
   public void setRev_subject(String rev_subject) {
      this.rev_subject = rev_subject;
   }
   public String getRev_content() {
      return rev_content;
   }
   public void setRev_content(String rev_content) {
      this.rev_content = rev_content;
   }
   public int getRev_score() {
      return rev_score;
   }
   public void setRev_score(int rev_score) {
      this.rev_score = rev_score;
   }
   public Date getRev_date() {
      return rev_date;
   }
   public void setRev_date(Date rev_date) {
      this.rev_date = rev_date;
   }
   public int getNum() {
      return num;
   }
   public void setNum(int num) {
      this.num = num;
   }
   public Integer getRating() {
      return rating;
   }
   public void setRating(Integer rating) {
      this.rating = rating;
   }
   @Override
   public String toString() {
      return "Review [rev_id=" + rev_id + ", userid=" + userid + ", itemid=" + itemid + ", rev_subject=" + rev_subject
            + ", rev_content=" + rev_content + ", rev_score=" + rev_score + ", rev_date=" + rev_date + ", num="
            + num + ", rating=" + rating + "]";
   }
}