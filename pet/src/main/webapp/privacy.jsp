<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img
						src="resources/images/bullet1.gif" alt="" title="" /></span>Privacy Policy
				</div>

				<div class="feat_prod_box_details">
					<p class="details">
						<img src="resources/images/about.gif" alt="" title=""
							class="right" />
					<p>Effective date: December 25, 2018</p>

					<p>
						This page informs you of our policies regarding the collection,
						use, and disclosure of personal data when you use our Service and
						the choices you have associated with that data. Our Privacy Policy
						for Pet shop is based on the <a
							href="https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/">Free
							Privacy Policy Template Website</a>.
					</p>

					<p>We use your data to provide and improve the Service. By
						using the Service, you agree to the collection and use of
						information in accordance with this policy. Unless otherwise
						defined in this Privacy Policy, terms used in this Privacy Policy
						have the same meanings as in our Terms and Conditions, accessible
						from localhost/petshop</p>

					<p>We collect several different types of information for
						various purposes to provide and improve our Service to you.</p>

					<h3>Types of Data Collected</h3>

					<h4>Personal Data</h4>

					<p>While using our Service, we may ask you to provide us with
						certain personally identifiable information that can be used to
						contact or identify you ("Personal Data"). Personally identifiable
						information may include, but is not limited to:</p>

					<ul>
						<li>First name and last name</li>
						<li>Cookies and Usage Data</li>
					</ul>

					<h4>Usage Data</h4>

					<p>We may also collect information how the Service is accessed
						and used ("Usage Data"). This Usage Data may include information
						such as your computer's Internet Protocol address (e.g. IP
						address), browser type, browser version, the pages of our Service
						that you visit, the time and date of your visit, the time spent on
						those pages, unique device identifiers and other diagnostic data.</p>

					<h4>Tracking and Cookies Data</h4>
					<p>We use cookies and similar tracking technologies to track
						the activity on our Service and hold certain information.</p>
					<p>Cookies are files with small amount of data which may
						include an anonymous unique identifier. Cookies are sent to your
						browser from a website and stored on your device. Tracking
						technologies also used are beacons, tags, and scripts to collect
						and track information and to improve and analyze our Service.</p>
					<p>You can instruct your browser to refuse all cookies or to
						indicate when a cookie is being sent. However, if you do not
						accept cookies, you may not be able to use some portions of our
						Service.</p>
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