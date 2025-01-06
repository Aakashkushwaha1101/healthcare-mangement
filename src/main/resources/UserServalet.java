

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserServalet
 */
@WebServlet(name = "/UserServalet", urlPatterns = { "//UserServalet" })
public class UserServalet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	userDao dao;
	
    public UserServalet() {
        
    	super();
        // TODO Auto-generated constructor stub
    }
    
    public void init()
    {
    	dao=new userDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action= request.getServletPath();
		
		switch(action)
		{
		
		 case "/new": showNewForm(request , response); break;
		 
		 case "/insert": insertUser(request , response); break;
		 
		 case "/list": listUser(request , response); break;
		 
		 case "/login": login(request , response); break;
		 case "/loginprocess": loginprocess(request , response); break;
		 case "/logout": logout(request , response); break;
		}
	
	}
	public void login(HttpServletRequest request, HttpServletResponse response) throws servaletException
	{
		RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		
	}
	public void loginprocess(HttpServletRequest request, HttpServletResponse response)
	{
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		userDao UserDao=new userDao();
		try(Connection connection=UserDao.getConnection())
		{
			PreparedStatement preparedStatement=connection.prepareStatement("select * from users");
			
		    preparedStatement.setString(1,email);
			preparedStatement.setString(1,password);
			
			ResultSet resultSet=preparedStatement.executeQuery();
			
			if(resultSet.next())
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("status","active");
				httpSession.setAttribute("email", email);
				RequestDispatcher dispatcher=request.getRequestDispatcher("Welcome.jsp");
				dispatcher.forward(request, response);
				
			}
			else
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("status","inactive");
				RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		}
		

		
		
	}
	public void logout(HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession httpSession=request.getSession();
		httpSession.invalidate();
		RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}
	
	public void showNewForm(HttpServletRequest request, HttpServletResponse response)
	{
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("User_form.jsp");
		dispatcher.forward(request, response);
	}
	
	public void insertUser(HttpServletRequest request, HttpServletResponse response)
	{
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String emergency_contact=request.getParameter("emergency_contact");
		
		user User=new user(first_name,last_name,email,dob,phone,gender,address,emergency_contact);
		dao.insertUser(User);
		response.sendRedirect("list")
	}
	
	public void listUser(HttpServletRequest request, HttpServletResponse response)
	{
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
