<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/project/resources/css/member/signup.css">
</head>
<body>
<div class="container">
	<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
		<a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" fill="currentColor" class="bi bi-bootstrap-fill" viewBox="0 0 16 16">
				<path d="M6.375 7.125V4.658h1.78c.973 0 1.542.457 1.542 1.237 0 .802-.604 1.23-1.764 1.23H6.375zm0 3.762h1.898c1.184 0 1.81-.48 1.81-1.377 0-.885-.65-1.348-1.886-1.348H6.375v2.725z"/>
				<path d="M4.002 0a4 4 0 0 0-4 4v8a4 4 0 0 0 4 4h8a4 4 0 0 0 4-4V4a4 4 0 0 0-4-4h-8zm1.06 12V3.545h3.399c1.587 0 2.543.809 2.543 2.11 0 .884-.65 1.675-1.483 1.816v.1c1.143.117 1.904.931 1.904 2.033 0 1.488-1.084 2.396-2.888 2.396H5.062z"/>
			</svg>
			<span class="fs-4">Simple header</span>
		</a>

		<ul class="nav nav-pills">
			<li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Features</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
			<li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
			<li class="nav-item"><a href="#" class="nav-link">About</a></li>
		</ul>
	</header>
		
	<div class="row flex-lg-row-reverse align-items-center g-5 py-5">
		<div id="form-wrapper">
    		<h4 class="mb-3">회원 정보</h4>
    		<form class="needs-validation" novalidate="" method="POST" enctype="multipart/form-data">
    			<div class="profile-image">
    				<div class="image-view"><img src="/project/resources/images/profile/img1.png"></div>
    				<div class="choise-list-wrapper">
    					<ul class="choise-list">
    						<li class="choise-opt">
    							<div class="opt-wrapper">
    								<div class="image-view"><img src="/project/resources/images/profile/img1.png" class="img-thumbnail"></div>
    								<div class="text">기본 이미지(1)</div>
    							</div>
    						</li>
    						<li class="choise-opt">
    							<div class="opt-wrapper">
    								<div class="image-view"><img src="/project/resources/images/profile/img2.png" class="img-thumbnail"></div>
    								<div class="text">기본 이미지(2)</div>
    							</div>
    						</li>
    						<li class="choise-opt">
    							<div class="opt-wrapper">
    								<div class="image-view"><img src="/project/resources/images/profile/img3.png" class="img-thumbnail"></div>
    								<div class="text">직접 선택</div>
    							</div>
    						</li>
    					</ul>
    				</div>
    				
    				<input type="file" name="profileImage" style="display: none">
    				<input type="hidden" name="profileImageType" value="1">
    			</div>
    			
    			<div class="row g-3">
    				<div class="col-12">
    					<label for="username" class="form-label">닉네임</label>
    					<div class="input-group has-validation">
    						<input type="text" class="form-control" id="username" name="username" required>
    						<div class="invalid-feedback">올바른 닉네임 입력하세요</div>
    					</div>
    				</div>
    				
    				<div class="col-12">
    					<label for="email" class="form-label">아이디(이메일)</label>
    					<div class="input-group has-validation">
	    					<input type="email" class="form-control" id="id"  name="id" required>
	    					<div class="invalid-feedback">올바른 이메일을 입력하세요.</div>
	    				</div>
    				</div>

					<div class="col-12">
						<label for="pw1" class="form-label">비밀번호</label>
						<div class="input-group has-validation">
							<input type="password" class="form-control" id="pw1"  name="pw1" required>
							<div class="invalid-feedback">올바른 비밀번호를 입력하세요</div>
						</div>
					</div>
					
					<div class="col-12">
						<label for="pw2" class="form-label">비밀번호 확인</label>
						<div class="input-group has-validation">
							<input type="password" class="form-control" id="pw2"  name="pw2" required>
							<div class="invalid-feedback">올바른 비밀번호를 입력하세요</div>
						</div>
					</div>
				</div>
				
				<hr class="my-4">
				
				<button class="w-100 btn btn-primary btn-lg" type="submit">회원가입</button>
			</form>
		</div>
	</div>
		
	<footer class="py-5 border-top">
		<div class="row">
			<div class="col-2">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>

			<div class="col-2">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>

			<div class="col-2">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>

			<div class="col-4 offset-1">
				<form>
					<h5>Subscribe to our newsletter</h5>
					<p>Monthly digest of whats new and exciting from us.</p>
					<div class="d-flex w-100 gap-2">
						<label for="newsletter1" class="visually-hidden">Email address</label>
						<input id="newsletter1" type="text" class="form-control" placeholder="Email address">
						<button class="btn btn-primary" type="button">Subscribe</button>
					</div>
				</form>
			</div>
		</div>

		<div class="d-flex justify-content-between py-4 my-4 border-top">
			<p>© 2021 Company, Inc. All rights reserved.</p>
			<ul class="list-unstyled d-flex">
				<li class="ms-3"><a class="link-dark" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16"><path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/></svg></a></li>
				<li class="ms-3"><a class="link-dark" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16"><path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/></svg></a></li>
				<li class="ms-3"><a class="link-dark" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16"><path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/></svg></a></li>
			</ul>
		</div>
	</footer>
</div>

<script src="/project/resources/js/jquery-3.6.0.min.js"></script>
<script src="/project/resources/js/member/signup.js"></script>
</body>
</html>