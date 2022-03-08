package com.mega.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.mega.dao.member.SignupDao;

@Configuration
public class DaoCtx {
	@Bean
	public SignupDao signupDao() {
		return new SignupDao();
	}
}
