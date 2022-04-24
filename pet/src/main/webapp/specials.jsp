<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="Beans.Pet,Model.Pets,java.util.List,java.util.ArrayList"%>
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
						src="resources/images/bullet1.gif" alt="" title="" /></span>Special
					gifts
				</div>

				<%
					List<Pet> sprods = Pets.getPets();
					for(int i = 0 ; i < sprods.size() ; i++ ){
						if( sprods.get(i).isSpecial() == true){
						
				%>
				<div class="feat_prod_box">

					<div class="prod_img">
						<a href="details.jsp?idproduct=<%=sprods.get(i).getId_p()%>"><img
							src="resources/images/<%=sprods.get(i).getImgs_p()%>" alt=""
							title="<%=sprods.get(i).getName_p()%>" border="3" /></a>
					</div>

					<div class="prod_det_box">
						<span class="special_icon"><img
							src="resources/images/special_icon.gif" alt="" title="" /></span>
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title"><%=sprods.get(i).getName_p()%></div>
							<p class="details"><%=sprods.get(i).getDescription_p()%></p>
							<a href="details.jsp?idproduct=<%=sprods.get(i).getId_p()%>"
								class="more">- more details -</a>
							<div class="clear"></div>
						</div>

						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>
				<%
						}};
				%>

				

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