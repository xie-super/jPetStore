<%@ include file="../common/IncludeTop.jsp"%>

${sessionScope.messageAccount}

<div id="Catalog">
	<form action="newAccount" method="post">
		<h3>User Information</h3>

		<table style="color: blue">
			<tr>
				<td>User ID:</td>
				<td>
					<input type="text" name="username" id="username" class="newAccountFormText" onblur="usernameIsExist();"/>
					<div id="usernameMsg"></div>
                    <script type="text/javascript" src="${pageContext.request.contextPath }/js/register.js"></script>
				</td>
			</tr>
			<tr>
				<td>New password:</td>
				<td><input type="text" name="password" class="newAccountFormText" /></td>
			</tr>
			<tr>
				<td>Repeat password:</td>
				<td><input type="text" name="repeatedPassword"  class="newAccountFormText" /></td>
			</tr>
			<tr>
				<td>VerificationCode:</td>
				<td>
					<input type="text" name="vCode" size="5" class="newAccountFormText" maxlength="4"/>
					<a href="newAccount"><img border="0" src="verificationCode" name="checkcode"></a>
				</td>
			</tr>
		</table>

		<%@ include file="IncludeAccountFields.jsp"%>
		<input type="submit" name="newAccount" value="Save Account Information" />
	</form>
</div>
<section id="mainsection7">
	<div><img src="images/cutepet/cutepet1.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet2.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet3.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet4.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet5.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet6.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet7.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet8.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet9.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet10.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet11.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet12.jpg" alt="" /></div>
</section>

<section id="mainsection8">
	<div><img src="images/cutepet/cutepet12.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet11.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet10.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet9.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet8.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet7.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet6.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet5.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet4.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet3.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet2.jpg" alt="" /></div>
	<div><img src="images/cutepet/cutepet1.jpg" alt="" /></div>
</section>
<%@ include file="../common/IncludeBottom.jsp"%>