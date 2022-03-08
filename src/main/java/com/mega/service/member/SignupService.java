package com.mega.service.member;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.multipart.MultipartFile;

import com.mega.dao.member.SignupDao;

public class SignupService {
	// Ŭ���� ������� - �빮�ڸ� ����ϰ� _�� ���
	private static final String SAVE_PATH = "C:\\Users\\USER\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project\\resources\\images\\user";
	
	@Autowired
	private SignupDao dao;
	
	public int signup(String username, String id, String pw, MultipartFile profileImage, int profileImageType) {
		try {
			// ����ڰ� ���� ����� ������ �̹����� �����ߴٸ�
			// ������ �̹��� ���� (������ �̹��� ���ε� ó��)
			String profileImagePath = "img3.png";
			
			if(profileImageType == 1) {
				profileImagePath = "img1.png";
			} else if(profileImageType == 2) {
				profileImagePath = "img2.png";
			} else if(profileImageType == 3 && !profileImage.isEmpty()) {
				String filename = profileImage.getOriginalFilename();
				
				int lastDotIndex = filename.lastIndexOf('.');
				String extension = filename.substring(lastDotIndex);
				
				filename = System.currentTimeMillis()+extension;
				
				// profileImage.transferTo(new File("profileImage�� ����ִ� ������ ����� ��� -- ��밡 �ƴ� ���� ���(�������)"));
				profileImage.transferTo(new File(SAVE_PATH + "\\" + filename));
				
				profileImagePath = "user/" + filename;
			}
			
			// ȸ�� ���� DB�� ���� (ȸ�� ����)
			int result = dao.signup(username, id, pw, profileImageType, profileImagePath);
			
			// dao�� return�� ���� ���� ����� return �ؾ��ϴµ� ������ ���Ƿ� ����
			return HttpStatus.CREATED.value();
		} catch(IOException e) {
			// e.printStackTrace();
			return HttpStatus.BAD_REQUEST.value();
		}
	}
}
