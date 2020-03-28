/**
 * 
 */
package com.vertence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.vertence.model.News;

/** 
 * @ClassName: NewsService 
 * @author dongye
 * @date 2017骞�9鏈�2鏃� 涓嬪崍12:42:31  
 */
@Service
public class NewsService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<News> listAll(){
		String sql="select * from news ";
		List<News> newsList= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<News>(News.class));
		return newsList;
	}
	
	public List<News> listNews(){
		String sql="select * from news  where status!=0";
		sql+=" order by createTime desc,status desc limit 4";
		List<News> newsList= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<News>(News.class));
		return newsList;
	}
	
	public News selectByPrimaryKey(int id){
		String sql="select * from news where id="+id;
		System.out.println(sql);
		News news= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<News>(News.class)).get(0);
		String updateCountSql="update news set count=count+1 where id="+id;
		jdbcTemplate.update(updateCountSql);
		return news;
	}
	public int insertOrUpdate(News news){
		String sql;
		if(news.getId()==null){
			sql="insert INTO news VALUE(null,'"+news.getTitle()+"','"+news.getContent()+"',"+news.getStatus()+",sysdate(),sysdate(),0)";
		}else if(news.getStatus()==0){
			sql="delete from news where id="+news.getId();
		}else{
			sql="update news set title='"+news.getTitle()+"',status="+news.getStatus()+",content='"+news.getContent()+"' where id="+news.getId();
		}
		return jdbcTemplate.update(sql);
	}
	public int del(Integer id){
		String sql="delete from news where id="+id;
		return jdbcTemplate.update(sql);
	}

	public List<News> listNews(Integer page) {
		String sql="select * from news where status!=0 ";
		sql+=(" order by status desc,createTime desc limit "+(page==null?0:page*10)+",10");
		System.out.println(sql);
		List<News> newsList= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<News>(News.class));
		return newsList;
	}
	public int countNews() {
		String sql="select * from news where status!=0 ";
		return jdbcTemplate.queryForList(sql).size();
	}


}
