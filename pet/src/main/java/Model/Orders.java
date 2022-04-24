package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Beans.myOrder;

public class Orders {
	public List<myOrder>  getOrders() throws ClassNotFoundException {
		List<myOrder> orders = new ArrayList<myOrder>();

		Connection conn;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
    		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petshop", "root", "");
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM myorder");
			ResultSet rs = ps.executeQuery();
		

		
			while(rs.next()) {
				myOrder order = new myOrder();
		
				order.setId_p(rs.getInt("id_pet"));
			
				/* ....................... */
					orders.add(order);	
					
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orders;
	}
	
	
	public void insert(int id_user,int id_p) throws ClassNotFoundException {
		Connection conn2; 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
    		conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/petshop", "root", "");
			PreparedStatement ps = conn2.prepareStatement("INSERT INTO `order` ( ) VALUES (?,?)");
			
			ps.setInt(1, id_user);
			ps.setInt(2, id_p);
			ps.executeUpdate();
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
