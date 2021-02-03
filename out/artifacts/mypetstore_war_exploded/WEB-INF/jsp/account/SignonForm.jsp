<%@ include file="../common/IncludeTop.jsp"%>

<div id="Content">
	<c:if test="${sessionScope.messageSignOn != null}">
		<ul class="messages">
			<li>${sessionScope.messageSignOn}</li>
		</ul>
	</c:if>

<div id="Catalog" class="signOndiv">
	<form action="signOn" method="post" id="sigonForm">
		<p>Please enter your username and password.</p>
		<p>
			<br>
			<label class = "signOnTitle" for="username">Username: </label><input type="text" name="username" class="signOnText" /><br />
			<br>
			<label class = "signOnTitle" for="password">Password: </label><input type="password" name="password" class="signOnText" />
			<br><br>
			<label class = "signOnTitle" for="textCode">VerificationCode:</label><input type="text" name="vCode" class="signOnText" size="5" maxlength="4"/>
			<br><br>
			<a href="signOn"><img border="0" src="verificationCode" name="checkcode"></a>
		</p>
		<input type="submit" name="signon" value="Login" />
	</form>
		Need a user name and password?
	    <!--newAccountForm-->
	    <a href="newAccountForm">Register Now!</a>
</div>
		<section id="mainsection5">
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

		<section id="mainsection6">
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

