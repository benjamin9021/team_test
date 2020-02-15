<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
button[type=button] {
	width: 10%;
	background-color: #808080;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

table, th, td {
	border: 1px solid #bcbcbc;
}

.tr {
	width: 400px;
	height: 100px;
}
body{
background-color: #f2f2f2
}

.container{
width:50%
}
</style>
</head>
<body>
	<div class="jumbotron text-center" style="background-color: #3C4023;">
		<h1>
			<a style="color: white;" href="blist.do">PROJECT</a>
		</h1>
	</div>

	<div class="container text-left">
		<h2>ȸ�� ���� ����</h2>

		<hr>


		<form action="mread.do" method="get">
			<table class="table table-striped ">
				<thead>
					<tr class="tr" style="background-color: #6C7336;">
						<th>����</th>
						<th>����</th>
					</tr>
				</thead>
				<tbody>
					<tr class="active">
						<td style="background-color: #8C7F77; color: white">���̵�</td1>
						<td>${dto.id}</td>
					</tr>
					<tr class="active">
						<td style="background-color: #8C7F77; color: white">����</td>
						<td>${dto.name}</td>
					</tr>
					<tr class="active">
						<td style="background-color: #8C7F77; color: white">�������</td>
						<td>${dto.birthday}</td>
					</tr>
					<tr class="active">
						<td style="background-color: #8C7F77; color: white">�������</td>
						<td><c:if test="${dto.nKey ==10 }">ȸ�� </c:if> <c:if
								test="${dto.nKey ==100 }">�Ŵ���</c:if> <c:if
								test="${dto.nKey ==1000 }">�濵��</c:if></td>
					</tr>
				</tbody>
			</table>
			<hr>

			<div class="text-right">
				<a href="mupdateui.do?id=${dto.id}"><button type="button">����</button></a>
				<c:if test="${login.nKey ==1000}">
					<a href=" mdelete.do?id=${dto.id}"><button type="button">����</button>
					</a>
					<a href="mlist.do?=${dto.id }"><button type="button">���</button></a>
				</c:if>
				<a href="blist.do"><button type="button">�Խ���</button></a>
			</div>
		</form>
	</div>
</body>


</html>