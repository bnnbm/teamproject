package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Item;
import logic.Itemmanagement;

public interface ItemmanagementMapper {
	
	@Select("select ifnull(max(saleid),0) from itemmanagement")
	int getsalemaxid();

	@Insert("insert into itemmanagement "
			+ "(saleid,userid,buyerid,itemid,code,subject,itemname, quantity, price, "
			+ "delivery, deliverycost, deliverymessage, payment, date, tema) values "
			+ "(#{saleid},#{userid},#{buyerid},#{itemid},#{code},#{subject},#{itemname},#{quantity}, #{price}, "
			+ "#{delivery}, #{deliverycost}, #{deliverymessage}, #{payment}, now(), #{tema})")
	void buying(Itemmanagement im);

	
	@Select({"<script>",
		"select count(*) from itemmanagement ",
		"<if test = 'sessionid!=null'> where userid = #{sessionid} and code = 1 </if>",
		"<if test = 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if>",
		"</script>"})
	int getItemmanagementcount(Map<String, Object> param);

	
	@Select({"<script>",
	    "select * from itemmanagement ",
	    " <if test='sessionid!= null'> where userid = #{sessionid} and code = 1 </if>",
	    " <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
	    " order by date desc limit #{startrow},#{limit}",
	    "</script>"})
	List<Itemmanagement> getItemmangement(Map<String, Object> param);

	
	@Select({"<script>",
		"select count(*) from itemmanagement ",
		"<if test = 'sessionid!=null'> where userid = #{sessionid} and code = 3 </if>",
		"<if test = 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if>",
		"</script>"})
	int getTakebackcount(Map<String, Object> param);

	
	@Select({"<script>",
	    "select * from itemmanagement ",
	    " <if test='sessionid!= null'> where userid = #{sessionid} and code = 3 </if>",
	    " <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
	    " order by date desc limit #{startrow},#{limit}",
	    "</script>"})
	List<Itemmanagement> getTakeback(Map<String, Object> param);

	
	@Select({"<script>",
		"select count(*) from itemmanagement ",
		"<if test = 'sessionid!=null'> where userid = #{sessionid} and code = 1 </if>",
		"<if test = 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if>",
		"</script>"})
	int getsellingcompletecount(Map<String, Object> param);

	@Select({"<script>",
	    "select * from itemmanagement ",
	    " <if test='sessionid!= null'> where userid = #{sessionid} and code = 1 </if>",
	    " <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
	    " order by date desc limit #{startrow},#{limit}",
	    "</script>"})
	List<Itemmanagement> getsellingcomplete(Map<String, Object> param);

	@Select({"<script>",
		"select count(*) from itemmanagement ",
		"<if test = 'sessionid!=null'> where userid = #{sessionid} and code = 2 </if>",
		"<if test = 'searchtype!=null'> and ${searchtype} like '%${searchcontent}%' </if>",
		"</script>"})
	int gettakebackedcount(Map<String, Object> param);

	@Select({"<script>",
	    "select * from itemmanagement ",
	    " <if test='sessionid!= null'> where userid = #{sessionid} and code = 2 </if>",
	    " <if test='searchtype != null'> and ${searchtype} like '%${searchcontent}%'</if>",
	    " order by date desc limit #{startrow},#{limit}",
	    "</script>"})
	List<Itemmanagement> gettakebacked(Map<String, Object> param);


}
