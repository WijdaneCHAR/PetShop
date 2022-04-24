<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="Beans.Pet,Model.Pets,java.util.List"%>
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
				<div class="crumb_nav">
					<a href="index.jsp">home</a> &gt;&gt; Products list
				</div>
				<div class="title">
					<span class="title_icon"><img
						src="resources/images/bullet1.gif" alt="" title="" /></span>Articles
				</div>

				<div class="new_products">

					<%
						List<Pet> prods = Pets.getPets();
						for (int i=0 ; i < prods.size(); i++){
					%>
					<div class="new_prod_box">
							<a href="details.jsp?idproduct=<%=prods.get(i).getId_p() %>"><%= prods.get(i).getName_p() %></a>
							<div class="new_prod_bg">
								<a href="details.jsp?idproduct=<%=prods.get(i).getId_p()%>"> <img
								src="resources/images/<%=prods.get(i).getImgs_p()%> " alt="" title=""
								class="thumb" border="0" /></a>
							</div>
					</div>
					<%} %>
							
						
					</div>

				

				</div>
				<jsp:include page="right-content.jsp" /> 
				<div class="clear"></div>
	
				</div>
				
		
		
			<!--end of left content-->

			<div class="clear"></div>
		</div>
		<!--end of center content-->
		<%@ include file="footer.html"%>


</body>
</html>
