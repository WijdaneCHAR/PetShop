package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Paths
 */
@WebServlet("/Paths")
public class Paths extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Paths() {
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
		doGet(request, response);
		String path = request.getServletPath();
		if(path.equals("/index.do")) {
			
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		

		if(path.equals("/about.do")) {
			request.getRequestDispatcher("about.jsp").forward(request, response);
		}
		
		
		if(path.equals("/register.do")) {
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		
		if(path.equals("/cart.do")) {
			request.getRequestDispatcher("/WEB-INF/cart.jsp").forward(request, response);
		}
		if(path.equals("/details.do")) {
			request.getRequestDispatcher("/WEB-INF/details.jsp").forward(request, response);
		}
		
	}

}
