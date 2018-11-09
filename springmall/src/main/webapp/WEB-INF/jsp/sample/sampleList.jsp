<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>sampleList</title>
		<!-- bootstrap CDN -->
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<!-- jquery CDN -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
	    $(document).ready(()=>{
	        $('#addButton').click(()=>{
	            alert('샘플 추가 페이지로 이동');
	        });
	        $('#delete').click(()=>{
	            alert('삭제완료');
	        })
	        $('#update').click(()=>{
	            alert('수정화면으로 이동');
	        })
	    });
		</script>
</head>
	<body>
		<div class="container">
			<h1>샘플리스트</h1>
			<table class="table">
			<thead>
				<tr>
					<td>NO</td>
					<td>ID</td>
					<td>PW</td>
					<td>DELETE</td>
					<td>UPDATE</td>
				</tr>
			</thead>
			<tbody>
			<!-- model안의 smapleList 가져와서 사용 -->
			<c:forEach var="sample" items="${sampleList}">
				<tr>
					<td>${sample.sampleNo}</td>
					<td>${sample.sampleId}</td>
					<td>${sample.samplePw}</td>
					<td><a href="/sample/removeSample?sampleNo=${sample.sampleNo}" id="delete">DELETE</a></td>
					<td><a href="/sample/modifySample?sampleNo=${sample.sampleNo}" id="update">UPDATE</a></td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
			<c:if test="${currentPage > 1}">
				<a href="<%=request.getContextPath()%>/sample/sampleList?currentPage=${currentPage-1}">
				<button type="button">이전</button></a>
			</c:if>
			<c:if test="${currentPage < lastPage}">
				<a href="<%=request.getContextPath()%>/sample/sampleList?currentPage=${currentPage+1}">
				<button type="button">다음</button></a>
			</c:if><br>
			<a href="${pageContext.request.contextPath}/sample/addSample">
			<button id="addButton" type="button" class="btn btn-primary">샘플추가</button></a>
		</div>
	</body>
</html>