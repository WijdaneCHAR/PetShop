package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Beans.Pet;


public class Pets {
	public static List<Pet>  getPets() throws ClassNotFoundException {
		List<Pet> pets = new ArrayList<Pet>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/petshop", "root", "");
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM pet");
			ResultSet rs = ps.executeQuery();
		

		
			while(rs.next()) {
					Pet pet = new Pet();
					
					pet.setId_p(rs.getInt("id_pet"));
					pet.setDescription_p(rs.getString("description_pet"));
					pet.setCategory_id_p(rs.getInt("category_id"));
					pet.setImgs_p(rs.getString("imgs_pet"));
					pet.setStatus_p(rs.getString("status_pet"));
					pet.setPrice(rs.getDouble("price_pet"));
					pet.setName_p(rs.getString("name_pet"));
					pet.setSpecial(rs.getBoolean("special"));
					pet.setFeatured(rs.getBoolean("featured"));
					pet.setNouveau(rs.getBoolean("new"));
					pets.add(pet);
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pets;
	}
}