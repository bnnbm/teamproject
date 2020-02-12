package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.BorderMapper;
import logic.Border;

@Repository
public class BorderDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	private String bordercolumn = "select no, tema, nickname, subject, content, file fileUrl,"
			                    + "date, view from border";
	
	public int count(String searchtype, String searchcontent, String tema, String visitid) {
	param.clear();
	param.put("searchtype",searchtype);
	param.put("tema", tema);
	param.put("searchcontent", "'%" + searchcontent + "%'");
	param.put("visitid",visitid);
	return sqlSession.getMapper(BorderMapper.class).count(param);
	}

	public List<Border> list(Integer pageNum, int limit, String searchtype, String searchcontent,String tema, String visitid) {
		String sql = bordercolumn;
		param.clear();
		param.put("sql", sql);
		param.put("searchtype",searchtype);
		param.put("searchcontent", "'%" + searchcontent + "%'");
		param.put("startrow", (pageNum - 1) * limit);
		param.put("tema",tema);
		param.put("limit", limit);
		param.put("visitid",visitid);
		return sqlSession.getMapper(BorderMapper.class).select(param);
	}

	public int maxnum() {
		return sqlSession.getMapper(BorderMapper.class).maxnum();
	}

	public void insert(Border border) {
		sqlSession.getMapper(BorderMapper.class).insert(border);		
	}

	public void viewadd(Integer no) {
		param.clear();
		param.put("no", no);
		sqlSession.getMapper(BorderMapper.class).updateviewadd(param);
	}

	public Border selectOne(Integer no) {
		String sql = bordercolumn;
		param.clear();
		param.put("sql", sql);
		param.put("no", no);
		return sqlSession.getMapper(BorderMapper.class).selectOne(param);
	}

	public void delete(int no) {
		param.clear();
		param.put("no", no);
		sqlSession.getMapper(BorderMapper.class).delete(param);
	}

	public void update(Border border) {
		sqlSession.getMapper(BorderMapper.class).update(border);		
	}
}
