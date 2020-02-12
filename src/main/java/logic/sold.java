package logic;

public class sold {
   private String data;
   private int cnt;
   private int quantity;
   private int price;
   
   
   public int getPrice() {
      return price;
   }
   public void setPrice(int price) {
      this.price = price;
   }
   public int getQuantity() {
      return quantity;
   }
   public void setQuantity(int quantity) {
      this.quantity = quantity;
   }
   public String getData() {
      return data;
   }
   public void setData(String data) {
      this.data = data;
   }
   public int getCnt() {
      return cnt;
   }
   public void setCnt(int cnt) {
      this.cnt = cnt;
   }
   
   
   @Override
   public String toString() {
      return "sold [data=" + data + ", cnt=" + cnt + ", quantity=" + quantity + ", price=" + price + "]";
   }
   
   
   
   
   
   
}