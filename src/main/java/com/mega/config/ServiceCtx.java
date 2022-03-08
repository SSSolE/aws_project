package com.mega.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.mega.service.member.SignupService;

@Configuration
public class ServiceCtx {
	@Bean
	public SignupService signupService() {
		return new SignupService();
	}
}
