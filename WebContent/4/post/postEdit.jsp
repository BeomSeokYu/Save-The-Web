<!-- 
최초작성자 : 김지수 (jisukim.fb@gmail.com)
최초작성일 : 2023/02/15

버전  기록 : 0.1(시작 23/02/16) 
       0.5(기본작업 23/02/16) 
       0.7(추가 디자인 23/02/15)
       1.0(1차 완성 23/02/15)
--> 
<%@page import="jdbc.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbc.PostDTO, java.util.ArrayList, jdbc.PostDAO"  %>
<!DOCTYPE html>
<html>
<head>
<style>

.iframe {
	display: block;
	border: none;
	margin: auto;
	height: 90vh;
	width: 80%;
	overflow:hidden;
	frameborder:0;
	scrolling: no;
}
</style>
<%@ include file="/include/header.jsp" %> 
<%
	if (sid == null) { // 보안 처리
		response.sendRedirect("postList.jsp");
		return;
	}
%>
</head>

<body>
<%@ include file="/include/navbar.jsp" %>
<%
	if(sid == null || !admin) {
		response.sendRedirect("postList.jsp");
	}
	 
	int pno = Integer.parseInt(request.getParameter("pno"));

	PostDTO pdto = PostDAO.selectPost(pno);
	String filePath = pdto.getPupfolder() + "/" + pdto.getPuuid() + "_" + pdto.getPfilename(); %>
 

	<div class="container">
		<div class="pt-5"></div>
		<h2>주보 수정</h2>
		<hr>
		<form action="postEditCheck.jsp" name=f1 method=post enctype="multipart/form-data">
			<div class="input-group mb-2 input-group-lg">
				<span class="input-group-text col-1 mx-auto" >제목</span>
				<input type="text" class="form-control col-11" name="ptitle" 
					value="<%=pdto.getPtitle() %>" required>
			</div>
			
			<input type="hidden" name="pno" value="<%=pno%>">
			
		    <div style="clear:both" class="input-group mb-2 input-group-lg">
		       <iframe id="viewer" class="iframe" src="<%=filePath %>" frameborder="0" scrolling="no" width="300" height="200"></iframe>
		    </div>
			<div class="input-group mb-2 input-group-lg">
		    	<input id="uploadPDF" type="file" name="post" onchange="PreviewImage();" class="form-control col-11"/><br>
		    </div>
			<div class="d-flex justify-content-end my-4">
				<button class="btn btn-outline-primary mx-2" type="submit">수정</button>
				<input type="button" value="취소" onclick="location.href='postView.jsp?pno=<%=pno%>'"
					class="btn btn-outline-secondary mx-2">
			</div>
		</form>
	</div>


 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
function PreviewImage() {
    pdffile=document.getElementById("uploadPDF").files[0];
    pdffile_url=URL.createObjectURL(pdffile);
    $('#viewer').attr('src',pdffile_url);
}
</script>

<%@ include file="/include/footer.jsp" %> 

</body>
</html>