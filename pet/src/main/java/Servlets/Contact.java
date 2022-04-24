package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	private Date date=new Date();
	private Connection conn;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
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
		// TODO Auto-generated method stub
	
		
		try {	
			Class.forName("com.mysql.cj.jdbc.Driver");
    		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petshop", "root", "");
    		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String msg=request.getParameter("msg");
		String company=request.getParameter("company");
		
			String insertQuery="insert into contact(nom,email,phone,company,message,date) values ( ? , ? , ? , ? , ?,?)";
		
			
			PreparedStatement preparedStmt = conn.prepareStatement(insertQuery);
			preparedStmt.setString(1,name);
			preparedStmt.setString(2,email);
			preparedStmt.setString(3,phone);
			preparedStmt.setString(4,company);
			preparedStmt.setString(5,msg);
			preparedStmt.setString(6,dateFormat.format(date));
			preparedStmt.executeUpdate();
			
			request.setAttribute("msgSent",true);
			
			request.getRequestDispatcher("/contact.jsp").forward(request, response);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
