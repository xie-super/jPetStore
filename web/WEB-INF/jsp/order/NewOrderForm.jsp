<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/IncludeTop.jsp"%>

<div align="center">
	<a href="main">Main Window</a>
</div>
<div id="description">
	订单页面生成
</div>
<div id="Catalog" class="newOrderDiv">
	<form action="confirmOrder" method="post" id="newOrderForm">
		<ul class="tab-nav">
			<li class="tabNav-active">Payment Details</li>
			<li>Personal Information</li>
			<li>Billing Address</li>
		</ul>
		<div class="tabBox" id="PaymentDetails">
			<table class="newOrderFormTable">
				<tr>
					<th colspan="2">Payment Details</th>
				</tr>
				<tr>
					<td>Card Type:</td>
					<td><select name="order.cardType">
						<option selected="selected" value="Visa">Credit Card</option>
						<option value="MasterCard">weixin</option>
						<option value="zhifubao">zhifubao</option>
					</select></td>
				</tr>
				<tr>
					<td>Card Number:</td>
					<td><input id="cardNumber" name="order.creditCard" value="999 9999 9999 9999" type="text"> * Use a fake
						number!</td>
				</tr>
			</table>
		</div>
		<div class="tabBox">
			<table class="newOrderFormTable">
				<tr>
					<th colspan=2>Personal Information</th>
				</tr>

				<tr>
					<td>First name:</td>
					<td><input id="firstName" name="order.billToFirstName" value="${sessionScope.order.billToFirstName}" type="text" ></td>
				</tr>
				<tr>
					<td>Last name:</td>
					<td><input id="lastName" name="order.billToLastName" value="${sessionScope.order.billToLastName}" type="text" ></td>
				</tr>
				<tr>
					<td>Phone:</td>
					<td><input id="phone" name="order.phone" value="54321" type="text"></td>
				</tr>
			</table>
		</div>
		<div class="tabBox">
			<table class="newOrderFormTable">
				<tr>
					<th colspan=2>Billing Address</th>
				</tr>
				<tr>
					<td>Address 1:</td>
					<td><input name="order.billAddress1" value="${sessionScope.order.billAddress1}" type="text" size="40" required="required"></td>
				</tr>
				<tr>
					<td>Address 2:</td>
					<td><input name="order.billAddress2" value="${sessionScope.order.billAddress2}" type="text" size="40"></td>
				</tr>
				<tr>
					<td>Provice:</td>
					<td><input name="order.billCity" value="${sessionScope.order.billCity}" type="text" required="required"></td>>
				</tr>
				<tr>
					<td>State:</td>
					<td><input name="order.billState" value="${sessionScope.order.billState}" type="text" size="4" required="required"></td>
				</tr>
				<tr>
					<td>Zip:</td>
					<td><input name="order.billZip" value="${sessionScope.order.billZip}" type="text" size="10" required="required"></td>
				</tr>
				<tr>
					<td>Country:</td>
					<td><input name="order.billCountry" value="${sessionScope.order.billCountry}" type="text" size="15" required="required"></td>
				</tr>

				<tr>
					<td colspan="2"><input name="shippingAddressRequired" value="false" type="checkbox">
						Ship to different address...</td>
				</tr>
			</table>
			<input type="submit" value="提交" id="newOrderSubmit"/>
		</div>
	</form>
	<script src="js/NewOrderFormJs.js"></script>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>