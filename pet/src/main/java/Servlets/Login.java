package Servlets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class TraitementEmp
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private Connection conn ;
	
	ResultSet res = null;
	
	Statement stat = null;
	
	boolean validLogin = false;
	
	String connectionURL = "jdbc:mysql://localhost:3306/petshop";
	
	String cookieData = "";
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		//String rememberMe = request.getParameter("rememberMe");
    	
	try {
			
			Class.forName("com.mysql.jdbc.Driver");
			

			conn = DriverManager.getConnection(connectionURL, "root", "");
			

			if(!conn.isClosed())
			{
				
				String query = "SELECT * FROM user";
			    Statement st = conn.createStatement();
			    ResultSet rs = st.executeQuery(query);
			    boolean isFound = false;
			    String userId = "";
			    while(rs.next())
			    {
			    	if(rs.getString(2).equals(userName) && rs.getString(3).equals(pass))
			    	{
			    		userId = Integer.toString(rs.getInt(1));
			    		isFound = true;
			    		break;
			    	}

			    }
			    
			    if(isFound == false)
		    	{
		    		response.sendRedirect(request.getContextPath() + "/myaccount.jsp");
		    	}
		    	else
		    	{
		    		
		    		HttpSession session = request.getSession();
		    		String logged = "logged";
		    		session.setAttribute("logged",logged);
		    		session.setAttribute("userId",userId);
		    		//RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/home.jsp");
		    		//dispatcher.forward(request, response);
		    		
		    		response.sendRedirect(request.getContextPath() + "/index.jsp");
		    		
		    	}
				
				conn.close();
				
				
			}
		}
    catch (SQLException | ClassNotFoundException e) {
		e.printStackTrace();
		}
  	
    
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
