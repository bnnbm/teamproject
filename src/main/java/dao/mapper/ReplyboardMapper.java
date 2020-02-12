package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Replyboard;

public interface ReplyboardMapper {

	@Select("select count(*) from replyboard where no=#{no}")
	int count(Map<String, Object> param);

	@Select({"<script>",
	      "select * from replyboard" 
	      + "<when test='no != null'> where no=#{no} </when>",
	      "order by grp desc"
	      + "</script>"
	   })
	List<Replyboard> select(Map<String, Object> param);

	@Select("select ifnull(max(num),0) from replyboard")
	int maxnum();

	@Insert("insert into replyboard(no,num,userid,content,grp,grplevel,grpstep)"
			+ " values(#{no},#{num},#{userid},#{content},#{grp},#{grplevel},#{grpstep})")
	void insert(Replyboard replyboard);

	@Update("update replyboard set grpstep = grpstep +1 where grp=#{grp} and grpstep > #{grpstep}")
	void grpstepadd(Map<String, Object> param);

	@Delete("delete from replyboard where num=#{num}")
	void delete(Map<String, Object> param);

	@Update("update replyboard set userid=#{userid},content=#{content} where num=#{num}")
	void update(Replyboard replyboard);
}
