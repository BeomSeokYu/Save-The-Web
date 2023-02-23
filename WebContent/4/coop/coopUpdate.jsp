<%@page import="jdbc.coopDTO"%>
<%@page import="jdbc.coopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>	
<head>
<title>행전우리교회</title>
</head>
<body>
<%-- <% UserDTO udto = UserDAO.select(sid){%> --%>
<%@include file="/include/header.jsp" %>
	<%	//로그인 안되어있을 시
		if(sid == null || !sid.equals(admin)){
		response.sendRedirect("/login.jsp");
		}else{
	%>

 <% int cno = Integer.parseInt(request.getParameter("cno"));
 	coopDAO cdao = new coopDAO();
 	coopDTO cdto = cdao.select(cno); %> 
 <%@include file="/include/navbar.jsp" %>
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<<<<<<< Updated upstream
 <section class="py-5 text-center container"></section>
    
  <div class="container">
	<div class="pt-5"></div>
  	<h2>협력 기관 소식 글 수정</h2><hr>
=======
 <div class="container">
		<div class="photo-gallery container mb-3">
			<div class="row justify-content-center">
				<h2>협력 교회와 기관 소식 수정</h2>
				<div class="col-3 d-none d-lg-block">
					<%@ include file="/include/sidebar4.jsp"%>
				</div>
				<div class="col-9">
					<div class="row">
						<div class="col-3 text-muted"></div>
						<div class="col-9 text-end"></div>
					</div>
>>>>>>> Stashed changes
	<form action = "coopUpdateCheck.jsp" method="post">
		<div class="input-group mb-2 input-group-lg">
			<span class="input-group-text col-2 mx-auto" id="ltitle">제목</span> 
			<input type="text" class="form-control col-11" name="ctitle" id="ltitle"
				value="<%=cdto.getCtitle()%>" required>
		</div>
	
		<div>
			<textarea name="ccontent" id="summernote" class="mtop-10"></textarea>
		</div>
		
		<input type="hidden" name="cno" value="<%=cdto.getCno()%>">
		
		<div class="d-flex justify-content-end my-4">
			<button class="btn btn-outline-primary mx-2" type="submit">수정</button>
			<input type="button" value="취소" onclick="history.back()"
				class="btn btn-outline-secondary mx-2">
		</div>
		</form>
	</div>
</div></div></div>
    <script>
     $('#summernote').val('<%=cdto.getCcontent()%>'); 
      $('#summernote').summernote({
        tabsize: 2,
<<<<<<< Updated upstream
        height: 500
=======
        height: 500,
        toolbar : [ [ 'style', [ 'style' ] ],
			[ 'font', [ 'bold', 'underline', 'clear' ] ],
			[ 'color', [ 'color' ] ],
			[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
			[ 'table', [ 'table' ] ],
			[ 'insert', [ 'link', 'picture', 'video' ] ],
			[ 'view', [ 'fullscreen', 'codeview', 'help' ] ] ],
        placeholder:"내용을 입력해주세요"
>>>>>>> Stashed changes
        
      });
    </script>
     <section class="py-5 text-center container"></section>
  </body>
 <%@include file="/include/footer.jsp" %>
</html>
<%  };  %>