<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<%@page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<sql:setDataSource var="booksDataSource"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe"
	user="mybts"
	password="1234" />
<sql:query dataSource="${booksDataSource}" var="bookList">
	Select * From tbl_books WHERE id = ?
	<sql:param value="${param.id}" />
</sql:query>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서정보 입력</title>
	<style>
	fieldset{
		width:500px;
		margin: 0 auto;
	}
	
	legend{
		font-size:12pt;
		font-weight:bold;
		color:#3e65ff;
	}
	
	label{
		display:block;
		width:100px;
		float:left;
		text-align:right;
		padding:8px;
		font-weight: bold;
		color:#009688;
		font-size:10pt;
	}
	
	input,select{
		margin:3px;
		padding:8px;
		border:1px solid #ccc;
		
	}
	
	select{
		font-size:12pt;
		font-weight:bold;
		color:blue;
	}
	#button-div{
		border: 1px solid lightgray;
		marin: 0 auto;
		width: 212px;
		font-size:0px;
	}
	#button-div{
		margin: 3px;
		width: 100px;
	}
	</style>
</head>
<header>
	<h3>도서 입력</h3>
</header>
<section>
 <c:choose>
 <c:when test ="${empty pram.id}">
	<form action="/sp004/css/books_insert.jsp"></form>
	</c:when>
	</c:choose>
	<fieldset>
	<legend>도서추가</legend>
	<label for="tb_name">책이름</label>
	<input type="text" id="tb_name" name="tb_name" value=${booksList.rows[0].tb_name }"/><br>
	
	<label for="tb_comp">책이름</label>
	<input type="text" id="tb_comp" name="tb_comp" value=${booksList.rows[0].tb_comp }"/><br>
	
	<label for="tb_auth">책이름</label>
	<input type="text" id="tb_auth" name="tb_auth" value=${booksList.rows[0].tb_auth }"/><br>
	
	<label for="tb_price">책이름</label>
	<input type="text" id="tb_price" name="tb_price" value=${booksList.rows[0].tb_name }"/><br>
	</select>
	
	
	<div id="button-div"> 
		<button>도서등록</button>
		<button type="reset">다시작성</button>
		</div>
	</fieldset>
</form>




</section>
<body>

</body>
</html>