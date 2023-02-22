<%@page import="vow.VowDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행전우리교회</title>
<%@ include file="/include/header.jsp"%>
<!-- lightbox2 css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.css"
	integrity="sha512-Woz+DqWYJ51bpVk5Fv0yES/edIMXjj3Ynda+KWTIkGoynAMHrqTcDUQltbipuiaD5ymEo9520lyoVOo9jCQOCA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<%@ include file="/include/navbar.jsp"%>

	<div class="container">
		<div class="photo-gallery container mb-3">
			<div class="row justify-content-center">
				<h2>말씀 서원</h2>
				<div class="col-3 d-none d-lg-block">
					<%@ include file="/include/sidebar4.jsp"%>
				</div>

				<div class="col-9">
					<div class="row">
						<div class="col-3 text-muted">
							<select class="form-select form-select-sm w-50 d-inline"
								id="selectAmount">
								<option value="8" selected>8</option>
								<option value="16">16</option>
								<option value="24">24</option>
							</select> <span class="d-inline">개씩 보기</span>
						</div>
						<div class="col-9 text-end">
							<%
								if (sid != null) { // 세션 처리
							%>
							<a href="vInsert.jsp" class="btn btn-sm btn-outline-success">게시물
								등록 </a>
							<%
								}
							%>
						</div>
					</div>
					<hr class="my-4">

					<table class="table table-hover shadow bg-body rounded">
						<thead>
							<tr style="background-color: #548687; color: white;">
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일자</th>
							</tr>
						</thead>
						<tbody id="ajaxTable">
						</tbody>
					</table>

					<hr class="my-4">
					<div class="row">
						<div class="col-8">
							<ul class="pagination justify-content-center" id="pagination">

							</ul>
						</div>
						<div class="col-4">
							<div class="d-flex text-end">
								<select class="form-select" id="selectType">
									<option value="T" selected>제목</option>
									<option value="C">내용</option>
									<option value="E">이메일</option>
								</select> <input class="form-control form-control-sm" type="search"
									placeholder="검색어" id="keyword">
								<button class="btn btn-sm btn-outline-success" type="button"
									id="searchBtn">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

					<%@ include file="/include/footer.jsp"%>

					<!-- lightbox2 js -->
					<script
						src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"
						integrity="sha512-k2GFCTbp9rQU412BStrcD/rlwv1PYec9SNrkbQlo6RZCf75l6KcC3UwDY8H5n5hl4v77IDtIPwOk9Dqjs/mMBQ=="
						crossorigin="anonymous" referrerpolicy="no-referrer"></script>
					<script src="/resources/js/page.js"></script>

					<script>
						function getTotalCountUrl() {
							return '/3/vow/totalNumProc.jsp'
						}

						function getListUrl() {
							return '/3/vow/vSelectAllProc.jsp'
						}

						function printList(data) {
							var str = '';
							for (var i = 0; i < data.length; i++) {
								str += "<tr><td><a href='vSelectOne.jsp?vno="
										+ data[i].vno + "'>" + data[i].vtitle
										+ "</a></td>";
								str += "<td>" + data[i].email + "</td>";
								str += "<td>" + data[i].vdate + "</td></tr>";
							}
							$('#ajaxTable').html(str);
						}

						lightbox.option({
							resizeDuration : 200,
							wrapAround : false,
							disableScrolling : true,
							fitImagesInViewport : true
						});
					</script>
</body>
</html>