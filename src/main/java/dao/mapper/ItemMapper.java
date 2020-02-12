package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Item;
import logic.Itemmanagement;
import logic.Review;
import logic.Shopbasket;
import logic.User;
import logic.sold;

public interface ItemMapper {

	@Select({ "<script>", "select itemid, userid, itemname, price, description, "
			+ "picture1 pictureUrl1, picture2 pictureUrl2, picture3 pictureUrl3, picture4 pictureUrl4, picture5 pictureUrl5, "
			+ "vod, subject, tema, date, delivery, deliverycost from item ",
			" <if test='itemid != null'> where itemid = #{itemid}</if>",
			" <if test='sessionid != null'> where userid = #{sessionid}</if>",
			" <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
			" <if test='itemid == null'> order by date desc limit #{startrow},#{limit}</if>", "</script>" })
	List<Item> sellingselect(Map<String, Object> param);

	@Select({ "<script>", "select count(*) from item ",
			"<if test = 'sessionid!=null'> where userid = #{sessionid} </if>",
			"<if test = 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if>", "</script>" })
	int sellingcount(Map<String, Object> param);

	@Select("select ifnull(max(itemid),0) from item")
	int maxid();

	@Insert("insert into item (itemid, userid, itemname, price, description, "
			+ "picture1, picture2, picture3, picture4, picture5, "
			+ "vod, subject, tema, date, delivery, deliverycost) values "
			+ "(#{itemid}, #{userid},#{itemname}, #{price}, #{description}, "
			+ "#{pictureUrl1}, #{pictureUrl2}, #{pictureUrl3}, #{pictureUrl4}, #{pictureUrl5}, "
			+ "#{vod}, #{subject}, #{tema}, now(), #{delivery},#{deliverycost})")
	void insert(Item item);

	@Update("update item set itemname = #{itemname}, price = #{price}, description = #{description},"
			+ " vod = #{vod}, picture1 = #{pictureUrl1}, picture2 = #{pictureUrl2}, picture3 = #{pictureUrl3},"
			+ " picture4 = #{pictureUrl4}, picture5 = #{pictureUrl5}, subject = #{subject}, tema = #{tema} "
			+ "where itemid = #{itemid}")
	void update(Item item);

	@Delete("delete from item where itemid = #{itemid}")
	void delete(Map<String, Object> param);

	@Select({ "<script>", "select itemid, userid, itemname, price, description, "
			+ "picture1 pictureUrl1, picture2 pictureUrl2, picture3 pictureUrl3, picture4 pictureUrl4, picture5 pictureUrl5, "
			+ "vod, subject, tema, date, delivery, deliverycost from item ",
			" <if test='tema != null and visitid != null'> where tema like '${tema}' and userid = #{visitid} </if>",
			" <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%' </if>",
			" order by date desc limit #{startrow},#{limit}", "</script>" })
	List<Item> temaselect(Map<String, Object> param);

	@Select({ "<script>", "select count(*) from item ",
			"<if test = 'tema!=null and visitid != null'> where tema like '${tema}' and userid = #{visitid} </if>",
			"<if test = 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if>", "</script>" })
	int temacount(Map<String, Object> param);

	@Insert("insert into shopbasket (userid,itemid, date) " + "values (#{userid},#{itemid},now())")
	void jjiminsert(Shopbasket sb);

	@Select("select count(*) from shopbasket where userid = #{userid} and itemid = ${itemid}")
	int jjimcount(Map<String, Object> param);

	@Delete("delete from shopbasket where userid = #{userid} and itemid = ${itemid}")
	void jjimdelete(Shopbasket sb);

	@Select("select max(year(date)) from itemmanagement where userid=#{userid}")
	String maxyear(Map<String, Object> param);

	@Select("select min(year(date)) from itemmanagement where userid=#{userid}")
	String minyear(Map<String, Object> param);

	@Select("SELECT b.date,COUNT(a.date) AS cnt,ifnull(SUM(quantity),0) AS quantity"
			+ " FROM (SELECT *  from itemmanagement WHERE YEAR(date)=#{year} and userid=#{userid} and code=1) a RIGHT OUTER join mon b ON MONTH(a.date) = b.date"
			+ " GROUP BY b.date" + " ORDER BY b.date")
	List<sold> soldlist(Map<String, Object> param);

	@Select("SELECT b.date,COUNT(a.date) AS cnt, ifnull(SUM(quantity*price),0) AS price"
			+ " FROM (SELECT *  from itemmanagement WHERE YEAR(date) =#{year} AND userid=#{userid} AND CODE = 1) a RIGHT OUTER join mon b ON MONTH(a.date) = b.date"
			+ " GROUP BY b.date" + " ORDER BY b.date")
	List<sold> takeList(Map<String, Object> param);

	@Select("select max(month(date)) from itemmanagement where userid=#{userid} and year(date)=#{year}")
	Integer maxmonth(Map<String, Object> param);

/////////////////////////////////////////리뷰///////////////////////////////////////
	@Insert("INSERT INTO review (rev_content, itemid, userid, rating, rev_id) VALUES (#{review.rev_content}, #{review.itemid}, #{review.userid}, #{review.rating}, #{rev_id})")
	void create(Map<String, Object> param);

	@Select("select * from review where num=#{num}")
	Review selectOne(Map<String, Object> param);

	@Select({ "<script>", "select * from review ", " <if test='itemid != null'> where itemid = #{itemid}</if>",
			" <if test='itemid == null'> order by date desc limit #{startrow},#{limit}</if>", "</script>" })
	List<Review> reviewlist(Map<String, Object> param);

	@Select({ "<script>", "select count(*) from review ", "<if test = 'itemid!=null'> where itemid = #{itemid} </if>",
			"</script>" })
	int reviewcount(Map<String, Object> param);

	@Select("select ifnull(max(rev_id),0) from review")
	int maxnum();

	// 주문내역 갯수
	@Select({ "<script>", "select count(*) from itemmanagement ",
			" <if test= 'buyerid!=null'> where buyerid = #{buyerid} and code=1 </if> ",
			" <if test= 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if> ", "</script>" })
	int orderitem(Map<String, Object> param);

	// 주문내역 리스트
	@Select({ "<script>", "select * from itemmanagement ",
			" <if test='buyerid != null'> where buyerid = #{buyerid} and code = 1 </if>",
			" <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
			" order by date desc limit #{startrow},#{limit} ", "</script>" })
	List<Itemmanagement> orderlist(Map<String, Object> param);

	@Select("select * from user where userid=#{saleid}")
	List<User> saleUser(Map<String, Object> param);

	@Select("select * from itemmanagement where itemid=#{itemid} and saleid=#{saleid}")
	Itemmanagement itemmanagement(Map<String, Object> param);

	@Delete("delete from itemmanagement where saleid=#{saleid}")
	int returndel(Map<String, Object> param);

	@Update("Update itemmanagement set code=3,reason=#{text} where saleid=#{saleid}")
	int retrunUpdate(Map<String, Object> param);
	//////////////////////////////////////////////////////////////////////////////////

	//////////////// 반품갯수
	//////////////// ////////////////////////////////////////////////////////////
	@Select({ "<script>", "select count(*) from itemmanagement ",
			" <if test= 'userid != null'> where userid = #{userid} and code=3 </if> ",
			" <if test= 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if> ", "</script>" })
	int takecount(Map<String, Object> param);

	@Select({ "<script>", "select * from itemmanagement ",
			" <if test='userid != null'> where userid = #{userid} and code = 3 </if>",
			" <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
			" order by date desc limit #{startrow},#{limit} ", "</script>" })
	List<Itemmanagement> takelist(Map<String, Object> param);

	// 주문내역 취소
	/////////////////////////////////////////////////////////////////////////////////////////
	@Delete("delete from itemmanagement where buyerid=#{buyerid} and saleid=#{saleid}")
	int ordercancle(Map<String, Object> param);

	// 결제 내역 갯수
	@Select({ "<script>", "select count(*) from itemmanagement ",
			" <if test= 'userid != null'> where buyerid = #{userid} and code=2 </if> ",
			" <if test= 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if> ", "</script>" })
	int paymentcnt(Map<String, Object> param);

	@Select({ "<script>", "select * from itemmanagement ",
			" <if test='userid != null'> where buyerid = #{userid} and code = 2 </if>",
			" <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
			" order by date desc limit #{startrow},#{limit} ", "</script>" })
	List<Itemmanagement> paymentlist(Map<String, Object> param);

	// 찜 개수
	@Select({ "<script>", "select count(*) from shopbasket ",
			" <if test= 'userid != null'> where userid = #{userid} </if> ",
			" <if test= 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if>", "</script>" })
	int itemcnt(Map<String, Object> param);

	@Select({ "<script>", "select * from shopbasket ", " <if test='userid != null'> where userid = #{userid}</if>",
			" <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
			" order by date desc limit #{startrow},#{limit} ", "</script>" })
	List<Shopbasket> dipslist(Map<String, Object> param);

	@Select("select * from itemmanagement where saleid = #{saleid}")
	Itemmanagement getreturninformation(String saleid);

	@Update("Update itemmanagement set code=2 where saleid=#{saleid}")
	void approvetakeback(String saleid);

	@Update("Update itemmanagement set code=4, refuse = #{refuse} where saleid=#{saleid}")
	void denytakeback(Map<String, Object> param);

	@Select("select itemid, userid, itemname, price, description, "+
			"picture1 pictureUrl1, picture2 pictureUrl2, picture3 pictureUrl3, picture4 pictureUrl4, picture5 pictureUrl5, "+
			"vod, subject, tema, date, delivery, deliverycost from item where userid = #{userid} order by rand()")
	List<Item> itemlist(String userid);

}
