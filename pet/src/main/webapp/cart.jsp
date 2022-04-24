<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<%! 
    	double totalprice = 0;
    %>
    <%
    totalprice = 0;
    String logged = (String)session.getAttribute("logged");
    	if( logged== null)
    	{
    		response.sendRedirect("myaccount.jsp");
    	}
    %>
    
    <%
    java.sql.Connection connection = null;
    try{
		Class.forName("com.mysql.jdbc.Driver");
	    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/petshop", "root", "");

	    
	    String query = "SELECT myorder.id_user,myorder.id_pet,pet.name_pet,pet.price_pet,pet.imgs_pet,COUNT(*) AS qte, COUNT(*) * pet.price_pet AS totalOrder FROM myorder INNER JOIN pet ON myorder.id_pet=pet.id_pet WHERE myorder.id_user = "+ session.getAttribute("userId") +" GROUP BY id_pet HAVING COUNT(*) > 0";
	      Statement st = connection.createStatement();
	      ResultSet rs = st.executeQuery(query);
    
	      
    %>
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
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart</div>
        	 
        	<div class="feat_prod_box_details">
            &gt;&gt; ${sessionScope.username}
            <br>
            <table class="cart_table">
            	<tr class="cart_title">
                	<td>Item pic</td>
                	<td>Product name</td>
                    <td>Unit price</td>
                    <td>Qty</td>
                    <td>Total</td>               
                </tr>
                
                	<% while(rs.next()){ %>
              
           
          
          
                <tr>
                	<td><a href="details.do?id=<%= rs.getInt(2) %>"><img src="resources/images/<%= rs.getString(5) %>" alt="" title="" border="0" class="cart_thumb" width="50%" /></a></td>
                	 <td><%= rs.getString(3) %></td>
                <td><%= rs.getDouble(4) %>$</td>
                <td><%= rs.getInt(6) %></td>
                <td><%= rs.getDouble(7) %>$</td>              
                </tr>             
                   
			<% totalprice+=rs.getDouble(7);  	
			}
			connection.close();
			}catch(Exception e)
				{
					out.println(e);
				}
    			
				%>
                
                
            	       
            

                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL SHIPPING:</span></td>
                <td>Free SHIPPING</td>                
                </tr>  
                
                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
                <td> <%= totalprice %>$</td>                
                </tr>                  
            
            </table>
            <a href="#" class="continue">&lt; continue</a>
            <a href="#" class="checkout">checkout &gt;</a>
            

             
            
            </div>	
            </div>
            <jsp:include page="right-content.jsp" /> 
            </div>
				
		
		
			<!--end of left content-->

			<div class="clear"></div>
		</div>
		<!--end of center content-->
		<%@ include file="footer.html"%>


</body>
</html>