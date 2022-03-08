package com.mega.dao.member;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class SignupDao {
	@Autowired
	private JdbcTemplate jdbcTemlpate;
	
	public int signup(String username, String id, String pw, int profileImageType, String profileImagePath) {
		LocalDateTime now = LocalDateTime.now();
		
		jdbcTemlpate.update("INSERT INTO member(username, email, pw, profileImageType, profileImagePath, signupDate) value(?,?,?,?,?,?)",
				username, id, pw, profileImageType, profileImagePath, Timestamp.valueOf(now));
		
		return 0;
	}
}
