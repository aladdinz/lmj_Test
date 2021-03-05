<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	position: fixed;
	right : 50px;
	top : 50px;
}

</style>
</head>
<body>
	<table>
		<tr>
			<th>상품번호</th>
			<th>사진</th>
			<th>품명</th>
			<th>가격</th>
			<th>유통기한</th>
		</tr>

		<c:forEach var="p" items="${products }">
			<tr>
				<td align="center" width="80px">${p.p_no }</td>
				<td align="center" width="200px"><img src="resources/img/${p.p_img }" style="max-width: 150px"></td>
				<td align="center" width="80px">${p.p_name }</td>
				<td align="center" width="130px"><fmt:formatNumber value="${p.p_price }" type="currency" /> </td>
				<td align="center" width="130px"><fmt:formatDate value="${p.p_exp }" dateStyle="short" /></td>
			
			</tr>
		</c:forEach>
	</table>
	
	
	
	<div>
		<h3>상품등록</h3>
		<form action="reg.product" method="post" enctype="multipart/form-data">
		품명 : <input name="p_name"><br>
		사진 : <input name="p_img" type="file"><br>
		가격 : <input name="p_price"><br>
		유통기한 : <input name="p_exp"><br>
		<button>등록</button>
		</form>
	
		
		<h3>품명으로 검색</h3>
		<form action="search.product">
		품명 : <input name="p_name">
		<button>검색</button>
		</form>
	
		
		<h3>상품번호로 지우기</h3>
		<form action="delete.product">
		번호 : <input name="p_no"> <button>삭제</button>
		</form>
		
		<h3>가격으로 검색</h3>
		<form action="">
		<input>Won 이하 <button>검색</button>
		</form>   

			
		<h3>가격대 설정 검색</h3>
		<form action="search.productByRange">
		<input name="s_min"> ~ <input name="s_max">
		<button>검색</button>
		</form>

			
			
			
		<h3>가격 인상</h3>
		<form action="UpdateController">
		<input name="search123">원 이하인것 <input name="inc123"> 인상
		<button>수정</button>
		</form>
	
	
	<h1 style="color: red">${r }</h1>
	</div>
</body>
</html>