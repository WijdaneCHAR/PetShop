<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="Beans.Pet,Model.Pets,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="screen" />
<script src="resources/js/prototype.js" type="text/javascript"></script>
<script src="resources/js/scriptaculous.js?load=effects"
	type="text/javascript"></script>
<script src="resources/js/lightbox.js" type="text/javascript"></script>
<script src="resources/js/java.js" type="text/javascript"></script>
</head>
<body>
	<div id="wrap">

		<%@ include file="header.html"%>
		<%
		List<Pet> prods = Pets.getPets();
			int id = 0;
			if (request.getParameter("idproduct") != null)
				id = Integer.parseInt(request.getParameter("idproduct")) - 1;
		%>

		<div class="center_content">
			<div class="left_content">
				<div class="crumb_nav">
					<a href="index.html">home</a> &gt;&gt;
					<%=prods.get(id).getName_p()%>
				</div>
				<div class="title">
					<span class="title_icon"><img
						src="resources/images/bullet1.gif" alt="" title="" /></span><%=prods.get(id).getName_p()%>
				</div>

				<div class="feat_prod_box_details">

					<div class="prod_img">
						<a href="#"><img src="resources/images/<%=prods.get(id).getImgs_p()%>"
							alt="" title="" border="3" /></a> <br /> <br /> <a
							href="<%=prods.get(id).getImgs_p()%>" rel="lightbox"><img
							src="resources/images/zoom.gif" alt="" title="" border="" /></a>
					</div>

					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title">Details</div>
							<p class="details">
								<%=prods.get(id).getDescription_p()%>
							</p>
							<div class="price">
								<strong>PRICE:</strong> <span class="red"><%=prods.get(id).getPrice()%></span>
							</div>
				
							<a href="cart.jsp?idproduct=<%=prods.get(id).getId_p()%>" class="more" ><img
								src="resources/images/order_now.gif" alt="" title="" border="0" /></a>
							<div class="clear"></div>
						</div>

						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>

				<div id="demo" class="demolayout">
					<ul id="demo-nav" class="demolayout">
						<li><a class="active" href="#tab1">More details</a></li>
						<li><a class="" href="#tab2">Related books</a></li>
					</ul>
					<div class="tabs-container">
						<div style="display: block;" class="tab" id="tab1">
							<p class="more_details"><%=prods.get(id).getDescription_p()%></p>
						</div>

						<div style="display: none;" class="tab" id="tab2">
							<%
								int maxnbr = 0;
								for (int i = 0; i < prods.size(); i++) {
									if (prods.get(i).getCategory_id_p() == prods.get(id).getCategory_id_p() && i != id) {
							%>
							<div class="new_prod_box">
								<a href="details.jsp?idproduct=<%=prods.get(i).getId_p()%>"><%=prods.get(i).getName_p()%></a>
								<div class="new_prod_bg">
									<span class="new_icon"><img
										src="resources/images/new_icon.gif" alt="" title="" /></span><a
										href="details.jsp?idproduct=<%=prods.get(i).getId_p()%>"> <img
										src="resources/images/<%=prods.get(i).getImgs_p()%> " alt="" title=""
										class="thumb" border="0" /></a>
								</div>
							</div>
							<%
								maxnbr++;
									}
									if (maxnbr == 6)
										break;
								}
							%>
							<div class="clear"></div>
						</div>
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
<script type="text/javascript">
	var tabber1 = new Yetii({
		id : 'demo'
	});
</script>
</html>