<!-- 최초작성자 : 김예건
최초작성일 : 2023/02/15

버전  기록 : 0.1(시작 23/02/15) -->

<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행전우리교회</title>
<%@ include file="/include/header.jsp"%>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
	 .main_image {
	    position: relative;
	  }
	  .main_image_text {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate( -50%, -50% );
	    color: white;
	  }

    </style>
</head>
<body>
	<%@ include file="/include/navbar.jsp"%>
	<div class="container">
		<div class="photo-gallery container mb-3">
			<div class="row justify-content-center">
				<h2>섬기는 사람들</h2>
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
							<a href="insertForm.jsp" class="btn btn-sm btn-outline-success">게시물
								등록 </a>
						</div>
					</div>
					<hr class="my-4">
					<div class="album py-5 bg-light">
   					<div class="container">
   					
   					 <p style="font-weight:bold; color:#747474;">당회</p>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			              <p class="card-text">김종길목사</p>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			             <p class="card-text">배종삼장로</p>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
			           <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			              <p class="card-text">민병국장로</p>
			            </div>
			          </div>
			        </div>
			        </div>
					<hr class="my-4">
					<p style="font-weight:bold; color:#747474;">교육부</p>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
			           <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			             <p class="card-text">홍순철집사(교육부장)</p>
			            </div>
			          </div>
			        </div>
					</div>
					<hr class="my-4">
					<p style="font-weight:bold; color:#747474;">청년대학부</p>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			              <p class="card-text">이원석집사(부장)</p>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
			          <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			              <p class="card-text">홍원표청년(회장)</p>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			             <p class="card-text">황정현목사(교육)</p>
			            </div>
			          </div>
			        </div>
			        </div>
					<hr class="my-4">
					<p style="font-weight:bold; color:#747474;">중고등부</p>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			               <p class="card-text">변희선집사(부장)</p>
			            </div>
			          </div>
			        </div>
					</div>
					<hr class="my-4">
					<p style="font-weight:bold; color:#747474;">유초등부</p>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			             <p class="card-text">김경자권사(부장)</p>
			            </div>
			          </div>
			        </div>
					</div>
					<hr class="my-4">
					<p style="font-weight:bold; color:#747474;">영아유치부</p>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			             <p class="card-text">김경자권사(부장)</p>
			            </div>
			          </div>
			        </div>
					</div>
					<hr class="my-4">
					<p style="font-weight:bold; color:#747474;">성가대</p>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			              <p class="card-text">이원석집사(대장)</p>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			              <p class="card-text">장소라집사(지휘)</p>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
			            <div class="main_image"><img src="profile.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/></div> 
			            <div class="card-body">
			              <p class="card-text">김수연청년(반주)</p>
			            </div>
			          </div>
			        </div>
			        </div>
					</div>
					</div>
					
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
									<option value="TC">제목/내용</option>
									<option value="TE">제목/이메일</option>
									<option value="TFC">제목/내용/이메일</option>
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

	<script src="/resources/js/page.js"></script>

	<script>
		/*
		 [form id 이걸로 하셈]

		 검색 버튼 : searchBtn
		 검색 입력 인풋 : keyword
		 검색 선택 셀렉트 : selectType
		 게시글 표시 갯수 셀렉트 : selectAmount
		 */

		/* 전체 게시물 수 가져오기 위해 처리한 jsp URL 입력해주세요 */
		function getTotalCountUrl() {
			return '/4/news/totalNumProc.jsp'
		}
		/* 게시물 가져오기 위해 처리한 jsp URL 입력해주세요 */
		function getListUrl() {
			return '/4/news/newsListProc.jsp'
		}

		
		}
	</script>

</body>
</html>