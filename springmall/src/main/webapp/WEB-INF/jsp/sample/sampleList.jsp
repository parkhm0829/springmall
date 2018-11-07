<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>List</title>
		<!-- bootstrap CDN -->
		<!-- jquery CDN -->
</head>
	<body>
		<div class="container">
			<h1>sampleList</h1>
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
					<td><a href="/sample/removeSample?sampleNo=${sample.sampleNo}">DELETE</a></td>
					<td><a href="/sample/modifySample?sampleNo=${sample.sampleNo}">UPDATE</a></td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
	</body>
</html>