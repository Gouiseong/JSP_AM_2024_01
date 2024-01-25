<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<div>
		<a href="../home/main">메인으로 돌아가기</a>
	</div>

	<h2>로그인</h2>

	<script type="text/javascript">
		var JoinForm__submitDone = false;

		function JoinForm__submit(form) {
			if (JoinForm__submitDone) {
				alert('이미 처리중입니다');
				return;
			}
			// 			form.loginId.value = form.loginId.value.trim();
			var loginId = form.loginId.value.trim();
			var loginPw = form.loginPw.value.trim();
			var name = form.name.value.trim();

			console.log('form.loginId.value : ' + loginId);
			console.log('form.loginPw.value : ' + loginPw);
			console.log('form.name.value : ' + name);

			if (loginId.length == 0) {
				alert('아이디를 입력해주세요');
				form.loginId.focus();
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 입력해주세요');
				form.loginPw.focus();
				return;
			}

			if (loginPw != ) {
				alert('비밀번호가 일치하지 않습니다.');
				form.loginPw.focus();
				return;
			}

			if (name.length == 0) {
				alert('이름을 입력해주세요');
				form.name.focus();
				return;
			}

			JoinForm__submitDone = true;
			form.submit();

		}
	</script>

	<form method="POST" action="doLogin"
		onsubmit="JoinForm__submit(this); return false;">
		<div>
			로그인 아이디 : <input autocomplete="off" type="text"
				placeholder="아이디를 입력해주세요" name="loginId" />
		</div>
		<div>
			로그인 비밀번호 : <input autocomplete="off" type="text"
				placeholder="비밀번호를 입력해주세요" name="loginPw" />
		</div>

		<button type="submit">로그인</button>
	</form>


	<div>
		<a style="color: green" href="../article/list">리스트로 돌아가기</a>
	</div>

</body>
</html>