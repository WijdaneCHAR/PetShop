<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>
<body>
	<div id="wrap">

		<%@ include file="header.html"%>



		<div class="center_content">
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img
						src="resources/images/bullet1.gif" alt="" title="" /></span>Contact Us
				</div>

				<div class="feat_prod_box_details">
					<p class="details">${msgSent ? "Thanks you for contacting us! We will be in touch with you shortly" : "Merci pour votre visite. Si vous vous demandez d'un service ou d'un produit de notre magasin, ou si vous avez un soucis avec votre compte, merci de nous contacter en envoyant vos informations et votre message suivant les cases à remplir dessous:" }
					</p>

					<div class="contact_form">
						<div class="form_subtitle">all fields are required</div>
						<form name="contact" action="Contact" method="post">
							<div class="form_row">
								<label class="contact"><strong>Name:</strong></label> <input
									type="text" class="contact_input" name="name" required />
							</div>

							<div class="form_row">
								<label class="contact"><strong>Email:</strong></label> <input
									type="email" class="contact_input" name="email" required />
							</div>


							<div class="form_row">
								<label class="contact"><strong>Phone:</strong></label> <input
									type="tel" class="contact_input" name="phone" required />
							</div>

							<div class="form_row">
								<label class="contact"><strong>Company:</strong></label> <input
									type="text" class="contact_input" name="company" required />
							</div>


							<div class="form_row">
								<label class="contact"><strong>Message:</strong></label>
								<textarea class="contact_textarea" name="msg" required></textarea>
							</div>


							<div class="form_row" style="float: left;">
								<p style="text-align: center;"><input type="submit" value="Send" class="register" />
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