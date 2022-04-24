<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>
<body>
	<div id="wrap">
		<%@ include file="header.html"%>

		<div class="center_content">
			<c:choose>
				<c:when test="${not empty cookie.userCookie.value}">
					<div class="left_content">
						<div class="title">
							<span class="title_icon"><img
								src="resources/images/bullet1.gif" alt="" title="" /></span>Register
						</div>
						<div class="feat_prod_box_details">
							<p>You are already registered!</p>
						</div>

						<div class="clear"></div>
					</div>
				</c:when>

				<c:when test="${!registered}">
					<div class="left_content">
						<div class="title">
							<span class="title_icon"><img
								src="resources/images/bullet1.gif" alt="" title="" /></span>Register
						</div>
						<div class="feat_prod_box_details">
							<p style="color: red; font-weight: bold;" class="details">${error ? "Username already exists. Please choose a different username" : ""}
							<p>
							<div class="contact_form">
								<div class="form_subtitle">create new account</div>
								<form name="register" action="Register" method="post">
									<div class="form_row">
										<label class="contact"><strong>Username:</strong></label> <input
											name="username" type="text" class="contact_input" required />
									</div>
									<div class="form_row">
										<label class="contact"><strong>Password:</strong></label> <input
											name="password" type="password" class="contact_input"
											required />
									</div>

									<div class="form_row">
										<label class="contact"><strong>Email:</strong></label> <input
											name="email" type="email" class="contact_input" required />
									</div>


									<div class="form_row">
										<label class="contact"><strong>Phone:</strong></label> <input
											type="tel" name="phone" class="contact_input" required />
									</div>

									<div class="form_row">
										<label class="contact"><strong>Company:</strong></label> <input
											name="company" type="text" class="contact_input" />
									</div>

									<div class="form_row">
										<label class="contact"><strong>Address:</strong></label> <input
											name="address" type="text" class="contact_input" required />
									</div>

									<div class="form_row">
										<div class="terms">
											<input type="checkbox" name="terms" required /> I agree to
											the <a href="privacy.jsp">terms &amp; conditions</a>
										</div>
									</div>
									<div class="form_row">
										<input type="submit" class="register" value="Register" />
									</div>
								</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
					<!--end of left content-->
				</c:when>

				<c:otherwise>
					<meta http-equiv="refresh" content="2;URL=myaccount.jsp">
					<div class="left_content">
						<div class="title">
							<span class="title_icon"><img
								src="resources/images/bullet1.gif" alt="" title="" /></span>Register
						</div>
						<div class="feat_prod_box_details">
							<p class="details">You have been successfully registered! You
								can now log in to this web site using your account.</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<!--end of left content-->

			<jsp:include page="right-content.jsp" /> 
			<div class="clear"></div>
		</div>
		<!--end of center content-->
		<%@ include file="footer.html"%>
	</div>
</body>
</html>