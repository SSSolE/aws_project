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
	
	// 커맨드 객체는 복습겸 직접 만들고 지금은 직접 만들어 처리
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
		
		// 클라이언트가 보낸 값 검증
		// 생략
		
		try {
			// 비밀번호 암호화
			pw1 = SHA256.encrypt(pw1);
			
			// 회원 가입 처리
			// 방법 1 서비스를 구현하여 처리
			// 방법 2 서비스에 작성할 코드가 단순하면 여기서 바로 dao연결하여 처리
//			SignupService service = new SignupService();
			SignupService service = ctx.getBean("signupService", SignupService.class);
			service.signup(username, id, pw1, profileImage, profileImageType);
			
			// 회원 가입 처리 결과 반환
			return "member/signupSuccess";
			
		} catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
			
			return "error/500";
		}
	}
}
