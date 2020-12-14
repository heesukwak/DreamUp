
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!--  관리자페이지 구현 X  -->

<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="/web/css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="/web/cartSpring/css/default.css" rel="stylesheet"
	type="text/css" />

<script type="text/javascript" src="/web/js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="/web/js/design.js">
	
</script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

</script>




</head>
<body>
	
	<div id="wrap">
		<!-- header -->
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">
					<div class="con_title">
						<p>회원정보</p>
					</div>

					<div class="contents">
						<div class="btnSet clfix mgb15">
							<span class="fr"> <span class="button"><a href="#">목록</a></span>
							</span>
						</div>

						<table class="bbsWrite mgb35">
							<caption></caption>
							<colgroup>
								<col width="95" />
								<col width="395" />
								<col width="95" />
								<col />
							</colgroup>
							<tbody>
								<tr>
									<th>업체명</th>
									<td><select style="width: 200px;">
											<option>선택하세요</option>
									</select></td>
									<th>상품명</th>
									<td><input type="text" name=""
										style="border: 1px solid #ddd; height: 20px;"
										class="inputText" size="30" /> <span class="button"><a
											href="#">검색</a></span></td>
								</tr>
							</tbody>
						</table>
						<table class="bbsList">
							<colgroup>
								<col width="80" />
								<col width="170" />
								<col width="170" />
								<col width="170" />
								<col width="170" />
								<col width="170" />
								<col width="170" />
								<col width="170" />
							</colgroup>
							<thead>

								<tr>
									<th scope="col">NO.</th>
									<th scope="col">이름</th>
									<th scope="col">ID</th>
									<th scope="col">전화번호</th>
									<th scope="col">성별</th>
									<th scope="col"></th>


								</tr>
							</thead>

							<tbody>
								<c:forEach var="i" items="${mvcList}" varStatus="cnt">
									<tr>
										<td>${cnt.count}</td>
										<td>${i.name}</td>
										<td>${i.id}</td>
										<td>${i.phone}</td>
										<td>${i.sex}</td>
										<td><input type="button" id="del" lang="${i.no} "
											value="DEL">
												<p>
													<input type="button" id="mod" lang="${i.no}" value="MOD"></input></td>


									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<!--Footer-->
		<!--END Footer-->
	</div>
</body>
</html>