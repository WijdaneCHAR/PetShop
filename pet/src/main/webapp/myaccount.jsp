<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>Pet Shop - My Account</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>
<body>
	<div id="wrap">

		<%@ include file="header.html"%>

		<div class="center_content">

			<div class="left_content">
				<div class="title">
					<span class="title_icon">
						<img src="resources/images/bullet1.gif" alt="" title="" />
					</span>My account
				</div>

				<div class="feat_prod_box_details">
					<p class="details" style="color: red; font-weight: bold;">
						${error ? "Username or password incorrect" : ""}<br>

					</p>

					<div class="contact_form">
						<div class="form_subtitle">Login into your account</div>
						<form name="register" action="Login" method="post">
							<div class="form_row">
								<label class="contact"><strong>Username:</strong></label> <input
									name="username" type="text" class="contact_input" required />
							</div>
							<div class="form_row">
								<label class="contact"><strong>Password:</strong></label> <input
									type="password" name="password" class="contact_input" required />
							</div>

							<div class="form_row">
								<div class="terms">
									<input type="checkbox" name="rememberMe" value="rememberMe" />
									Remember me
								</div>
							</div>
							<div class="form_row">
								<input type="submit" class="register" value="login" />
							</div>
						</form>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!--end of left content-->
			 <jsp:include page="right-content.jsp" /> 

			<div class="clear"></div>
		</div>
		<!--end of center content-->
		<%@ include file="footer.html"%>
	</div>

</body>
</html>