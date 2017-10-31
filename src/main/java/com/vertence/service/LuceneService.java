package com.vertence.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class LuceneService {
	@Autowired
	private JdbcTemplate jdbcTemplate;

}
