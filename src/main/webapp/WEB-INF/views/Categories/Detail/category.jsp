<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- JSTL에서 기능(indexOf이나 substring같은)을 사용할 때 사용 --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/Template/Top.jsp" />

<div class="ItemCategory-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div id="itemDetail">
					<%-- 컨트롤러에서 Map으로 전달받은 ItemCode 파라미터  --%>
					<c:set var="ItemInfo" value="${ItemCode}" />

					<div class="ItemInfo-wrapper row">
						<div class="col-md-7 col-xs-12">
							<div class="img-wrapper">
								<c:if test="${fn:indexOf(ItemInfo, 'ring') != -1}">
									<img src="/picture/ring/${ItemInfo}.jpg" class="img-responsive img-thumbnail" />
								</c:if>
								<c:choose>
								   <c:when test="${fn:indexOf(ItemInfo, 'bracelet') != -1}">
									   <img src="/picture/bracelet/${ItemInfo}.jpg" class="img-responsive img-thumbnail" />
								   </c:when>
								   <c:when test="${fn:indexOf(ItemInfo, 'necklace') != -1}">
								      <img src="/picture/necklace/${ItemInfo}.jpg" class="img-responsive img-thumbnail" />
								   </c:when>
								</c:choose>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-5 col-xs-12">
							<div class="describe-wrapper">
								<form method="post" id="ItemDetailFrm">
									<ul class="describe-ul form-group">
										<%--컨트롤러에서 SilkRoadItemDetail.java를 돌려서 가져온 아이템명 --%>
										<li>
										    ItemName: <span>${ItemKind}</span>
										    <input type="hidden" name="ItemName" value="${ItemKind}" />
										</li>
										<li>
										    ItemPrice: <span>160,000§</span>
										    <input type="hidden" name="ItemPrice" value="160,000§" />
										</li>
										<li>Size:
										<select class="form-control size-form" name="sizeForm" id="size-form">
												<c:forEach var="size" begin="10" end="28">
													<option value="${size}" class="size-option">${size}</option>
												</c:forEach>
										</select>
										</li>
									</ul>

									<div class="clearfix"></div>

									<div class="btn-wrapper" align="center">
										<button id="orderBtn" class="btn btn-default">OrderItem</button>
										<button id="toInquiry" class="btn btn-default">Inquiry</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/Template/Footer.jsp" />