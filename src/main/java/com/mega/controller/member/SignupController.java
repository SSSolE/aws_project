package com.mega.controller.member;

import java.security.NoSuchAlgorithmException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mega.config.CtxBinder;
import com.mega.service.member.SignupService;
import com.mega.util.SHA256;

@Controller
@RequestMapping(value = "/member/signup")
public class SignupController {
	private static ApplicationContext ctx = null;
	public static String SAVE_PATH = null;
	
	public SignupController() {
		ctx = new AnnotationConfigApplicationContext(CtxBinder.class);
	}

	
//	@GetMapping
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "member/signup";
	}
	
	// Ŀ�ǵ� ��ü�� ������ ���� ����� ������ ���� ����� ó��
	@PostMapping
	public String signup(@RequestParam String username,
			@RequestParam String id,
			@RequestParam String pw1,
			@RequestParam String pw2,
			@RequestParam MultipartFile profileImage,
			@RequestParam int profileImageType) {
		
		System.out.println("username = " + username);
		System.out.println("id = " + id);
		System.out.println("pw1 = " + pw1);
		System.out.println("pw2 = " + pw2);
		System.out.println("profileImage = " + profileImage);
		System.out.println("progileImageType = " + profileImageType);
		
		// Ŭ���̾�Ʈ�� ���� �� ����
		// ����
		
		try {
			// ��й�ȣ ��ȣȭ
			pw1 = SHA256.encrypt(pw1);
			
			// ȸ�� ���� ó��
			// ��� 1 ���񽺸� �����Ͽ� ó��
			// ��� 2 ���񽺿� �ۼ��� �ڵ尡 �ܼ��ϸ� ���⼭ �ٷ� dao�����Ͽ� ó��
//			SignupService service = new SignupService();
			SignupService service = ctx.getBean("signupService", SignupService.class);
			service.signup(username, id, pw1, profileImage, profileImageType);
			
			// ȸ�� ���� ó�� ��� ��ȯ
			return "member/signupSuccess";
			
		} catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
			
			return "error/500";
		}
	}
}
