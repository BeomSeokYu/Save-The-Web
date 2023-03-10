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

@media ( min-width : 768px) {
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
	transform: translate(-50%, -50%);
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
				<div class="col-lg-3 d-none d-lg-block">
					<%@ include file="/include/sidebar1.jsp"%>
				</div>

				<div class="col-lg-9">
					<div class="album py-5 bg-light">
						<div class="container">
							<p style="font-weight: bold; font-size: 20px; color: #267278;">당회</p>
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/김종길 목사.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">김종길 목사</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/당회 배종삼 장로.png" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">배종삼 장로</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/당회 민병국 장로.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">민병국 장로</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="my-4">
							<p style="font-weight: bold; font-size: 20px; color: #267278;">교육부</p>
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/교육부장 홍순철 집사.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">홍순철 집사(교육부장)</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="my-4">
							<p style="font-weight: bold; font-size: 20px; color: #267278;">청년대학부</p>
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/청년대학부장 이원석 집사.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">이원석 집사(부장)</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/청년대학부 회장 홍원표 청년.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">홍원표 청년(회장)</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="profile.jpg" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">황정현 목사(교육)</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="my-4">
							<p style="font-weight: bold; font-size: 20px; color: #267278;">중고등부</p>
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/중고등부 부장 변희선 집사.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">변희선 집사(부장)</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="my-4">
							<p style="font-weight: bold; font-size: 20px; color: #267278;">유초등부</p>
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/유초등부 부장 김경자 권사.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">김경자 권사(부장)</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="my-4">
							<p style="font-weight: bolder; font-size: 20px; color: #267278;">영아유치부</p>
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/영아유치부 부장 김경자 권사.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">김경자 권사(부장)</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="my-4">
							<p style="font-weight: bold; font-size: 20px; color: #267278;">성가대</p>
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/성가대장 이원석 집사.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">이원석 집사(성가대장)</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/지휘자 장소라집사.png" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">장소라 집사(지휘)</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card shadow-sm">
										<div class="main_image">
											<img src="/resources/img/peopleAll/반주자 김수연 청년.jpg" style="object-fit:contain" width="100%" height="225"
												class="bd-placeholder-img card-img-top" width="100%"
												height="225" />
										</div>
										<div class="card-body">
											<p class="card-text">김수연 청년(반주)</p>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>
