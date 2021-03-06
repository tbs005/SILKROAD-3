<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/Template/Top.jsp" />

<div class="inquiry-wrapper">
	<div class="container">
		<div class="row">
			<div class="table-responsive form-group col-md-12 col-xs-12">
				<form name="inquiryFrm" id="inquiryFrm">
					<table class="table inquiry-tbl">
						<tbody>
							<tr>
								<th>User-Email</th>
								<td><input type="email" class="form-control text-input"
									id="inquiry-email" name="clientEmail"></td>
							</tr>
							<tr>
								<th>Inquiry-Content</th>
								<td><textarea class="form-control text-textarea"
										id="inquiry-content" name="clientInquiry" cols="30" rows="15"></textarea></td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2">
									<button id="inquirySubmit" class="btn">Inquiry</button>
								</td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/Template/Footer.jsp" />