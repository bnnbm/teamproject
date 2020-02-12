package logic;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

public class Itemmanagement {

	private int saleid;
	private String userid;
	private String buyerid;
	private int itemid;
	private int code;
	private String subject;
	private String itemname;
	private String tema;
	
	@Min(value = 1, message = "1개 이상부터 가능합니다.")
	@Max(value = 10, message = "10개 이하만 가능합니다.")	
	private int quantity;
	
	private String price;
	private String delivery;
	private String deliverycost;
	private String deliverymessage;
	private String payment;
	private String reason;
	private String refuse;
	private Date date;
	public int getSaleid() {
		return saleid;
	}
	public void setSaleid(int saleid) {
		this.saleid = saleid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getBuyerid() {
		return buyerid;
	}
	public void setBuyerid(String buyerid) {
		this.buyerid = buyerid;
	}
	public int getItemid() {
		return itemid;
	}
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getTema() {
		return tema;
	}
	public void setTema(String tema) {
		this.tema = tema;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getDeliverycost() {
		return deliverycost;
	}
	public void setDeliverycost(String deliverycost) {
		this.deliverycost = deliverycost;
	}
	public String getDeliverymessage() {
		return deliverymessage;
	}
	public void setDeliverymessage(String deliverymessage) {
		this.deliverymessage = deliverymessage;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getRefuse() {
		return refuse;
	}
	public void setRefuse(String refuse) {
		this.refuse = refuse;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Itemmanagement [saleid=" + saleid + ", userid=" + userid + ", buyerid=" + buyerid + ", itemid=" + itemid
				+ ", code=" + code + ", subject=" + subject + ", itemname=" + itemname + ", tema=" + tema
				+ ", quantity=" + quantity + ", price=" + price + ", delivery=" + delivery + ", deliverycost="
				+ deliverycost + ", deliverymessage=" + deliverymessage + ", payment=" + payment + ", reason=" + reason
				+ ", refuse=" + refuse + ", date=" + date + "]";
	}
	
	

}
