<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
	    $(document).ready(()=>{
	        $('#addsubmit').click(()=>{
	            alert('추가 완료');
	        });
	    });
		</script>
<meta charset="UTF-8">
	<title>addSample</title>
</head>
<body>
	<h1>샘플추가</h1>
	<form action= "/sample/addSample" method="post">
		<table>
			<tr>
				<td>id</td>
				<td><input type="text" name="sampleId"></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="password" name="samplePw"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="추가" id="addsubmit"></td>
			</tr>
		</table>
	</form>
</body>
</html>