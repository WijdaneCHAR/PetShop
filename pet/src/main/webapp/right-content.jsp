    <%@ page
	import="Beans.Pet,Model.Pets,java.util.List"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <div class="right_content">
        
                <div class="languages_box">
			        <div id="google_translate_element"></div>
			
					<script type="text/javascript">
					function googleTranslateElementInit() {
					  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
					}
					</script>
					
					<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			

            </div>
                <div class="currency">
                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#"><strong>USD</strong></a>
                </div>
                
		               <div class="cart">
		            <%--   <c:if test="${ !empty sessionScope.userid }">  --%>  
		                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
		                  <div class="home_cart_content">
		                  <span class="red">${sessionScope.username}</span>
		                  </div>
		                  <a href="cart.jsp" class="view_cart">view cart</a>
		             <%-- </c:if>  --%> 
		              </div>
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Shop</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
				Pet Shop est venu avec une vision pour rendre les animaux de compagnie sans tracas.<br /> .<br />
	            Avoir un animal de compagnie, c'est comme avoir un enfant dont il a besoin, ainsi que tous les besoins de base. Nous comprenons votre amour envers votre animal de compagnie ainsi que les problèmes auxquels vous etes confronté lorsque vous etes parent, ce qui nous a amenés à  définir notre vision <br />.<br />
	                            
	         </p>
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                 <%
                 List<Pet> sprods = Pets.getPets();
					for(int i = 0 ; i < sprods.size() ; i++ ){
						if( sprods.get(i).getStatus_p().equals("promo")){
                 %>
		               
	                    <div class="new_prod_box">
	                        <a href="details.do?id=<%= sprods.get(i).getId_p() %>"><%= sprods.get(i).getName_p()  %></a>
	                        <div class="new_prod_bg">
	                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>	                        
	                        <a href="details.jsp?id=<%=sprods.get(i).getId_p() %>"><img src="resources/images/<%=sprods.get(i).getImgs_p() %>" alt="" title="" class="thumb" border="0" /></a>
	                        </div>           
	                    </div>                        
                  
		                <%}} %>  
             </div>
             
            
	<div class="right_box">

		<div class="title">
			<span class="title_icon"><img
				src="resources/images/bullet5.gif" alt="" title="" /></span>Categories
		</div>

		<ul class="list">
			<li><a href="#">accesories</a></li>
			<li><a href="#">pets gifts</a></li>
			<li><a href="#">specials</a></li>
			<li><a href="#">hollidays gifts</a></li>
			<li><a href="#">accesories</a></li>
			<li><a href="#">pets gifts</a></li>
			<li><a href="#">specials</a></li>
			<li><a href="#">hollidays gifts</a></li>
			<li><a href="#">accesories</a></li>
			<li><a href="#">pets gifts</a></li>
			<li><a href="#">specials</a></li>
		</ul>

		<div class="title">
			<span class="title_icon"><img
				src="resources/images/bullet6.gif" alt="" title="" /></span>Partners
		</div>

		<ul class="list">
			<li><a href="#">accesories</a></li>
			<li><a href="#">pets gifts</a></li>
			<li><a href="#">specials</a></li>
			<li><a href="#">hollidays gifts</a></li>
			<li><a href="#">accesories</a></li>
			<li><a href="#">pets gifts</a></li>
			<li><a href="#">specials</a></li>
			<li><a href="#">hollidays gifts</a></li>
			<li><a href="#">accesories</a></li>
		</ul>

	</div>
             
             </div>         
             
        
      