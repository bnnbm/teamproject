package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {

	@Insert("insert into user (userid, name, pass, tel, age, address, email, profile, nickname) values "
	         + "(#{userid}, #{name}, #{pass}, #{tel}, #{age}, #{address}, #{email}, #{profileUrl},#{nickname})")
	   void insert(User user);

	@Select({"<script> ",
		"select userid, name, pass, tel, age, address, email, profile profileUrl, nickname, card1, card2 from user ",
		"<if test = 'userid!=null'> where userid = #{userid}</if>",
//		"<if test = 'ids != null'> where userid in (${ids})</if>",	//스트링에 한번에 이메일 보내는 방식
		"<if test = 'userids != null'> where userid in "
		+ "<foreach collection = 'userids' item = 'id' separator=',' open = '(' close = ')'>"
		+ "#{id}</foreach></if>",
		"</script>"})
	List<User> select(Map<String, Object> param);

	
	@Select({"<script>",
		"select count(*) from user ",
		"<if test = 'searchtype!=null'> where ${searchtype} like '%${searchcontent}%' </if>",
		"</script>"})
	int broadcastcount(Map<String, Object> param);
	
	@Select({"<script>",
	    "select userid, name, pass, tel, age, address, email, profile profileUrl, nickname, card1, card2 from user ",
	    " <if test='searchtype != null'> where ${searchtype} like '%${searchcontent}%' </if>",
	    " order by rand() desc limit #{startrow},#{limit}",
	    "</script>"})
	List<User> broadcastselect(Map<String, Object> param);	
	
	
}
