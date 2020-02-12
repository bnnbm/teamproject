package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.BorderMapper;
import dao.mapper.ReplyboardMapper;
import logic.Replyboard;

@Repository
public class ReplyboardDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public int count(String searchtype, String searchcontent, Integer no) {
		param.clear();
		param.put("searchtype",searchtype);
		param.put("no", no);
		param.put("searchcontent", "'%" + searchcontent + "%'");
		return sqlSession.getMapper(ReplyboardMapper.class).count(param);
	}

	public List<Replyboard> list(int pageNum, int limit, Integer no) {
		param.clear();
		param.put("no",no);
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		return sqlSession.getMapper(ReplyboardMapper.class).select(param);
	}

	public int maxnum() {
		return sqlSession.getMapper(ReplyboardMapper.class).maxnum();
	}

	public void insert(Replyboard replyboard) {
		sqlSession.getMapper(ReplyboardMapper.class).insert(replyboard);
	}

	public void grpstepadd(int grp, int grpstep) {
		param.clear();
		param.put("grp",grp);
		param.put("grpstep",grpstep);
		sqlSession.getMapper(ReplyboardMapper.class).grpstepadd(param);
	}

	public void delete(int num) {
		param.clear();
		param.put("num", num);
		sqlSession.getMapper(ReplyboardMapper.class).delete(param);
	}

	public void update(Replyboard replyboard) {
		sqlSession.getMapper(ReplyboardMapper.class).update(replyboard);	
	}

	public void replyreply(Replyboard replyboard) {
	      sqlSession.getMapper(ReplyboardMapper.class).insert(replyboard);
	  }
}
