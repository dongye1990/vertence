/**
 * 
 */
package com.vertence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.vertence.vo.SearchVo;

/** 
 * @author dongye
 * @date 2017年9月2日 下午12:42:31  
 */
@Service
public class SearchService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<SearchVo> searchByParm(String text) {
		String sql="SELECT * FROM ( "+
				"SELECT d.`detailid`,d.title,d.content,date(d.`createtime`) createtime FROM  `detail` d "+
				"UNION "+
				"SELECT n.id,n.title,n.content,date(n.`createtime`) createtime FROM  `news` n WHERE n.`status`!=0) s "+
				"WHERE s.title LIKE '%"+text+"%' OR s.content LIKE '%"+text+"%' order by s.createtime desc ";
		List<SearchVo> searchVoList= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<SearchVo>(SearchVo.class));
		return searchVoList;
	}
}
