<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import=" Beans.Pet, Model.Pets, java.util.List"%>
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
						src="resources/images/bullet1.gif" alt="" title="" /></span>Featured
					pets
				</div>

				<% 
					List<Pet> prods = Pets.getPets();
					int maxnbr = 0;
					for (int i = 0; i < prods.size(); i++) {
						if (prods.get(i).isFeatured()) {
				%>
				<div class="feat_prod_box">

					<div class="prod_img">
						<a href="details.jsp?idproduct=<%--prods.get(i).getId()--%>"><img
							src="resources/images/<%= prods.get(i).getImgs_p() %>" alt=""
							title="<%= prods.get(i).getName_p() %>" border="3" /></a> 
					</div>

					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title"><%= prods.get(i).getName_p() %></div>
							<p class="details"><%= prods.get(i).getDescription_p() %></p>
							<a href="details.jsp?idproduct=<%= prods.get(i).getId_p() %>"
								class="more">- more details -</a>
							<div class="clear"></div>
						</div>

						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>
				
			<% 
			maxnbr++;
						}
						if (maxnbr == 2)
							break;
					}
			%>		
				

				<div class="title">
					<span class="title_icon"><img
						src="resources/images/bullet2.gif" alt="" title="" /></span>New pets
				</div>

				<div class="new_products">
			
					<%
					maxnbr = 0;
					for (int i = prods.size() - 1; i >= 0; i--) {
						if (prods.get(i).isNouveau()) {
					%>
			

					<div class="new_prod_box">
						  <a href="details.jsp?idproduct=<%=prods.get(i).getId_p() %>"><%= prods.get(i).getName_p() %></a>
						<div class="new_prod_bg">
							<span class="new_icon">
							<img src="resources/images/new_icon.gif" alt="" title="" />
							</span>
							 <a
								href="details.jsp?idproduct=<%=prods.get(i).getId_p() %>">
								 <img
								src="resources/images/<%=prods.get(i).getImgs_p() %> " alt="" title=""
								class="thumb" border="0" />
								</a>
						</div>
					</div>

					<%
						maxnbr++;
							}
							if (maxnbr == 3)
								break;
						}
					%>
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