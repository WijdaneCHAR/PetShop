package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	private Connection conn ;
	private PreparedStatement pS ; 
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
    		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petshop", "root", "");
    		
    		String username=request.getParameter("username");
    		String password=request.getParameter("password");
    		String email=request.getParameter("email");
    		String phone=request.getParameter("phone");
    		String company =request.getParameter("company");
    		String address=request.getParameter("address");
    		String query = "INSERT INTO user(username,password,email,phone,company,address) values(?,?,?,?,?,?);";
    		
    		pS = conn.prepareStatement(query); 
    		pS.setString(1, username);	
    		pS.setString(2, password);	
    		pS.setString(3, email);	
    		pS.setString(4, phone);	
    		pS.setString(5, company);	
    		pS.setString(6, address);	
    		pS.executeUpdate();
    		
    				// return rowInserted; 
    		
		}	    catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			}
		request.getRequestDispatcher("/myaccount.jsp").forward(request, response);
		}

}
