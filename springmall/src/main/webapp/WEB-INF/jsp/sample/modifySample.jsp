<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
	    $(document).ready(()=>{
	        $('#modify').click(()=>{
	            alert('수정완료');
	        });
	    });
		</script>
	<title>modifySample</title>
</head>
<body>
	<form action= "/sample/modifySample" method="post">
		<h1>샘플수정</h1>
		<table>
			<tr>
				<td>no</td>
				<td><input type="text" name="sampleNo" value="${sample.sampleNo}" readonly></td>
			</tr>
			<tr>
				<td>id</td>
				<td><input type="text" name="sampleId" value="${sample.sampleId}"></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="password" name="samplePw" value="${sample.samplePw}"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정" id="modify"></td>
			</tr>
		</table>
	</form>
</body>
</html>