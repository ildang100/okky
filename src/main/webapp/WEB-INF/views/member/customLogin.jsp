<%--
  Created by IntelliJ IDEA.
  User: last2
  Date: 2020-06-29
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="ko" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html lang="ko" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html lang="ko" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="ko" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>OKKY - All That Developer</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="//okky.kr/assets/favicon-4ddd8035b72404da5a8c298cbaacad86.ico"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="//okky.kr/assets/icon_57x57-5611bd33d9f2b2d84c22219e248455b6.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="//okky.kr/assets/icon_114x114-b2b627dfde8a040fe54fd257244ba191.png">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta property="og:image"
	content="//okky.kr/assets/okky_logo_fb-cea175ff727ef14a4d8be0e68cff730a.png">

<link rel="stylesheet"
	href="//okky.kr/assets/application-4938a5785f86450f51f45a6a41f3bf4e.css" />

<!--[if lt IE 9]>
    <script src="//okky.kr/assets/libs/html5-ca664f64318d191265abf57fdf467aec.js" type="text/javascript"></script>
    <![endif]-->

<meta name="layout" content="main">

<link rel="stylesheet" href="//okky.kr/assets/style.css" />
<link rel="stylesheet"
	href="//okky.kr/assets/APW-style-4cc590ebaca176a1481738f6db45886f.css" />

</head>
<body>
	<div class="layout-container">
		<div class="main ">

			<div class="sidebar ">

				<a href="javascript://" class="sidebar-header"> <i
					class="fa fa-bars sidebar-header-icon"></i>
				</a>

				<h1>
					<div class="logo">
						<a href="/"><img
							src="//okky.kr/assets/okjsp_logo-467f1484e489ca1133e6320083e1fb9f.png"
							alt="OKKY" title="OKKY" /></a>
					</div>
				</h1>

				<ul id="search-google-icon"
					class="nav nav-sidebar nav-sidebar-search-wrapper">
					<li class="nav-sidebar-search"><a href="javascript://"
						class="link" id="search-google" data-toggle="popover"
						data-trigger="click"><i class="fa fa-search"></i></a></li>
				</ul>

				<form id="search-google-form" name="searchMain"
					class="nav-sidebar-form" action="https://www.google.com/search">
					<div class="input-group">
						<input type="text" name="qt" class="form-control input-sm"
							placeholder="Google 검색" /> <input type="hidden" name="q" /> <span
							class="input-group-btn">
							<button class="btn btn-default btn-sm" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<%--비로그인시 보여지는 화면--%>
				<sec:authorize access="isAnonymous()">
					<div class="nav-user nav-sidebar">

						<ul class="nav nav-sidebar">
							<li><a href="/member/customLogin" class="link"><i
									class="fa fa-sign-in"></i> <span class="nav-sidebar-label">로그인</span></a></li>
							<li><a href="/member/register" class="link"><i
									class="fa fa-user"></i> <span class="nav-sidebar-label">회원가입</span></a></li>
						</ul>

					</div>
				</sec:authorize>
				<ul class="nav nav-sidebar nav-main">

					<li><a href="/qna/list" class="link"><i
							class="nav-icon fa fa-database"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Q&A</span></a></li>

					<li><a href="/tech/list" class="link"><i
							class="nav-icon fa fa-code"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Tech</span></a></li>

					<li><a href="/comunity/list" class="link"><i
							class="nav-icon fa fa-comments"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">커뮤니티</span></a></li>

					<li><a href="/columnm/list" class="link"><i
							class="nav-icon fa fa-quote-left"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">칼럼</span></a></li>

					<li><a href="/jobs/list" class="link"><i
							class="nav-icon fa fa-group"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Jobs</span></a></li>

				</ul>

				<ul class="nav nav-sidebar nav-bottom">
					<li><a href="https://github.com/ildang100/okky" class="link"
						target="_blank"><i class="fa fa-github"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Github</span></a>
					</li>
				</ul>
			</div>

			<div id="edit-user" class="content" role="main">
				<h3 class="content-header">로그인</h3>
				<div class="col-md-6 main-block-left">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">아이디 로그인</h5>
						</div>
						<form action='/login'
							class="form-signin form-user panel-body panel-margin"
							method='POST' id='loginForm' autocomplete='off'>

							<input type="text" value="user01" name="username"
								autocorrect="off" autocapitalize="off" id="username"
								class="username form-control input-sm" placeholder="아이디"
								required autofocus> <input type="password" value=""
								name='password' class="password form-control input-sm"
								placeholder="비밀번호" required>
							<!-- AutoPassword 추가 -->
							<div class="checkbox">
								<label> <input type="checkbox" name='remember-me'
									id='remember_me'> 로그인 유지
								</label>
							</div>
							<!-- AutoPassword 추가 -->
							<%--<div class="APW-login">
                            <span>AutoPassword&trade;</span>
                            <label class="switch">
                                <input type="checkbox" id="btnAutoPW">
                                <span class="slider round"></span>
                            </label>
                        </div>--%>

							<button class="btn btn-primary btn-block" type="submit">로그인</button>

							<!--            <div id="divUserLogin">
                            <button class="btn btn-primary btn-block" type="submit" id="btnUserLogin">로그인</button>
                        </div>
                        <div id="divOTPLogin">
                            <button class="btn btn-primary btn-block" type="button" id="btnOTPLogin">AutoPassword™ 로그인</button>
                            <div class="btn btn-primary btn-block APW-login-cancel" id="btnOTPCancel">
                                <a href="#;">취소</a>
                            </div>
                        </div> -->
							<div class="signup-block">
								<a href="/member/findForm">계정 찾기</a> <span
									class="inline-saperator">/</span>
								<!-- AutoPassword 추가 -->
								<a href="/member/pwFindForm">Password 찾기</a> <span
									class="inline-saperator">/</span> <a href="/member/register">회원
									가입</a>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6 main-block-right">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">SNS 로그인</h5>
						</div>
						<c:choose>
							<c:when test="${sessionId != null}">
								<h2>네이버 아이디 로그인 성공하셨습니다!!</h2>
								<h3>'${sessionId}' 님 환영합니다!</h3>
								<h3>
									<a href="logout">로그아웃</a>
								</h3>
							</c:when>
							<c:otherwise>
								<br>
								<!-- 네이버 로그인 창으로 이동 -->
								<div id="naver_id_login" style="text-align: center">
									<a href="${url}"> <img width="223"
										src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
								</div>
								<br>
							</c:otherwise>
						</c:choose>
					</div>
				</div>

			</div>
			<div class="right-banner-wrapper"></div>
			<div id="footer" class="footer" role="contentinfo">
				<div class="row">
					<div class="col-sm-9">
						<div style="float: left; margin-right: 10px; height: 100px;">
							<img
								src="//okky.kr/assets/okky_logo_footer-afc30f99f303854f15a531d9089a1d50.png" />
						</div>
						<div>
							<a href="/intro/about">About OKKY</a> | <a href="/user/privacy"
								data-toggle="modal" data-target="#userPrivacy">개인정보보호</a> | <a
								href="/intro/ad">광고문의</a> | <a href="mailto:info@okky.kr">Contact</a>
							| <a href="https://www.facebook.com/okky.sns" target="_blank">Facebook</a>
							| <a href="https://github.com/okjsp/okky" target="_blank">Github</a>
							v0.12
							<hr style="margin: 8px 0;" />
							<strong>상호명</strong> : 이브레인 | <strong>대표명</strong> : 노상범 | <strong>사업자등록번호</strong>
							: 144-81-32887 | <strong>문의전화</strong> : 02-6925-5202 <br /> <strong>주소</strong>
							: 서울 강남구 봉은사로 303 TGL경복빌딩 502호 (06103) <br /> @ 2020 <a
								href="http://www.ebrain.kr" target="_blank">eBrain
								Management</a>
						</div>
					</div>
					<div class="sponsor-banner col-sm-3">
						<div class="sponsor-banner-head">Sponsored by</div>
						<div class="sponsor-banner-images">
							<a href="http://www.inames.co.kr" target="_blank"><img
								src="//okky.kr/assets/spb_inames-47b092113795fdf02b8d8b0f36f91c5f.png"
								alt="아이네임즈" /></a>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>
	<script>
		var contextPath = "", encodedURL = "%2Flogin%2Fauth%3FredirectUrl%3D%252Flogin%252Fauth%253FredirectUrl%253D%25252Flogin%25252Fauth%25253FredirectUrl%25253D%2525252F";
	</script>
	<script
		src="//okky.kr/assets/application-857e72d372e881813d8d698bad484d96.js"
		type="text/javascript"></script>
	<script
		src="//okky.kr/assets/apps/search-a672360634f56105585df31fcdb69705.js"
		type="text/javascript"></script>


	<script
		src="//okky.kr/assets/libs/jquery.progressTimer-ca8cafd705431e00d22d0c4a8eadbe5f.js"
		type="text/javascript"></script>
	<script
		src="//okky.kr/assets/libs/dualauth.error-3.0-8a3b1bb905351bf3923559b811af065e.js"
		type="text/javascript"></script>
	<script
		src="//okky.kr/assets/libs/dualauth-3.0-b00e0325660c4c6de2c5505c8d6c7590.js"
		type="text/javascript"></script>

	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();

			//        //기본 설정값
			//        $("#AutoPassword").progressTimer({
			//          timeLimit: 60,
			//          warningThreshold: 10,
			//          baseStyle: 'progress-bar-info',
			//          warningStyle: 'progress-bar-info',
			//          completeStyle: 'progress-bar-info',
			//          onFinish: function() {
			//            console.log("I'm done");
			//          }
			//        });
			//
			//        $("#AutoPassword-social").progressTimer({
			//          timeLimit: 60,
			//          warningThreshold: 10,
			//          baseStyle: 'progress-bar-info',
			//          warningStyle: 'progress-bar-info',
			//          completeStyle: 'progress-bar-info',
			//          onFinish: function() {
			//            console.log("I'm done");
			//          }
			//        });

			$("[name=j_password]").show();
			$(".AutoPassword-bar").hide();
			$("[id=divUserLogin]").show();
			$("[id=divOTPLogin]").hide();
			$("[id=btnOTPLogin]").hide();
			$("[id=btnOTPCancel]").hide();

			//이벤트 function
			$("[id=btnAutoPW]").click(function(e) {

				if ($(this).is(":checked") == true) {
					$("[name=j_password]").hide();
					$(".AutoPassword-bar").show();
					$("[id=divUserLogin]").hide();
					$("[id=divOTPLogin]").show();
					$("[id=btnOTPLogin]").show();
					$("[id=btnOTPCancel]").hide();
				} else {
					$("[name=j_password]").show();
					$(".AutoPassword-bar").hide();
					$("[id=divUserLogin]").show();
					$("[id=divOTPLogin]").hide();
					$("[id=btnOTPLogin]").hide();
					$("[id=btnOTPCancel]").hide();
				}
			});

			$("[id=btnAdd]").click(function(e) {
				location.href = "./joinStep.jsp";
			});

			// * AutoPassword 관련 script 시작 ##########################################
			var maxWaitingSec = 60;
			$("#otp_login").dualauth(
					false,
					{
						checkID : function(corp_user_id, service_type) {
							var result = {
								result : false,
								msg : "Unknown Error",
								code : "000.1"
							};
							service_type = "service_password"; // 강제로 타입을 결정한다.

							$.ajax({
								type : "POST",
								url : "/autoPassword/checkID",
								data : "corp_user_id=" + corp_user_id
										+ "&service_type=" + service_type
										+ "&session_term=" + maxWaitingSec,
								dataType : "json",
								async : false,
								success : function(data) {
									result = data;
								},
								error : function(data) {
									console.log(data);
								}
							});
							return result;
						},
						goNextCheck : function(corp_user_id) {

							location.href = "/";

						},
						checkUserPassword : function(corp_user_id,
								user_password) {
							var result = {
								result : false,
								msg : "Unknown Error",
								code : "000.1"
							};
							;
							$.ajax({
								type : "POST",
								url : "/autoPassword/checkUserPassword",
								data : "corp_user_id=" + corp_user_id
										+ "&user_password=" + user_password,
								dataType : "json",
								async : false,
								success : function(data) {
									result = data;
								},
								error : function(data) {
									console.log(data);
								}
							})

						},
						checkServiceOTP : function(corp_user_id, user_otp) {
							var result = {
								result : false,
								msg : "Unknown Error",
								code : "000.1"
							};
							;
							$.ajax({
								type : "POST",
								url : "/autoPassword/checkServiceSecureOTP",
								data : "corp_user_id=" + corp_user_id
										+ "&user_otp=" + user_otp,
								dataType : "json",
								async : false,
								success : function(data) {
									result = data;
								},
								error : function(data) {
									console.log(data);
								}
							})
							return result;

						},
						checkUserOTP : function(corp_user_id, user_otp) {
							var result = {
								result : false,
								msg : "Unknown Error",
								code : "000.1"
							};
							;
							$.ajax({
								type : "POST",
								url : "/autoPassword/checkServiceOTP",
								data : "corp_user_id=" + corp_user_id
										+ "&user_otp=" + user_otp,
								dataType : "json",
								async : false,
								success : function(data) {
									result = data;
								},
								error : function(data) {
									console.log(data);
								}
							})
							return result;

						},
						cancelSession : function() {
							var result = {
								result : false,
								msg : "Unknown Error",
								code : "000.1"
							};
							;
							$.ajax({
								type : "POST",
								url : "/autoPassword/cancelSession",
								dataType : "json",
								async : false,
								success : function(data) {
									result = data;
								},
								error : function(data) {
									console.log(data);
								}
							})
							return result;
						},
						cancelCD : function(corp_user_id) {
							var result = {
								result : false,
								msg : "Unknown Error",
								code : "000.1"
							};
							;
							$.ajax({
								type : "POST",
								url : "/autoPassword/cancelCD",
								data : "corp_user_id=" + corp_user_id,
								dataType : "json",
								async : false,
								success : function(data) {
									result = data;
								},
								error : function(data) {
									console.log(data);
								}
							})
							return result;
						},
						countTime : function(resttime) {
							console.log(resttime);
						}
					}, //callback 함수들
					null, maxWaitingSec, "/autoPassword/autoCheck", "./auth"); //id 입력 받고 난 후의 데어터

			// * AutoPassword 관련 script 시작 ##########################################

		})();
	// -->
	</script>


	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-6707625-5', 'auto');
		ga('send', 'pageview');
	</script>


	<div id="userPrivacy" class="modal" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>

	<div id="userAgreement" class="modal" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>

</body>
</html>
