<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
</head>
<body>
<div id="wrap">

		<%@ include file="header.html"%>

		<div class="center_content" >
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img
						src="resources/images/bullet1.gif" alt="" title="" /></span>About us
				</div>

				<div class="feat_prod_box_details">
					<p class="details">
						<img src="resources/images/about.gif" alt="" title=""
							class="right" /> 
					</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						<br/>
						<br/>
						<i>Chats Chiens et ce que vous voulez</i><br/></p>
						<p style="text-align: center"><b>Pet Shop</b></p>
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