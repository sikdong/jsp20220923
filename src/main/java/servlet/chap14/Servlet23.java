package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet23
 */
@WebServlet("/Servlet23")
public class Servlet23 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet23() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		
		if (firstName == null /* || firstName.equals("") */) {
			firstName="";
		}
		if (lastName == null /* || lastName.equals("") */) {
			lastName="";
		}
		firstName = firstName +"%";
		lastName = lastName+"%";
		
//		 String name = request.getParameter("name");
//		 if (name== null || name.equals("")) {
//			 name="";
//		 }
//		 
//		 name = name+"%";
		String sql = "SELECT LastName, FirstName "
				+"FROM Employees WHERE LastName LIKE ? OR FirstName LIKE ?";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
	
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, lastName);
			pstmt.setString(2, firstName);
			// 이 코드는 try 문안에 들어갈 수 없기 때문에  
			try (ResultSet rs = pstmt.executeQuery();){
				List<Employee> list = new ArrayList<>();	
				while(rs.next()) {
						Employee e = new Employee();
						e.setLastName(rs.getString("LastName"));
						e.setFirstName(rs.getString("FirstName"));
						
						list.add(e);
					}
					request.setAttribute("employeeList", list);
				
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		String path = "/WEB-INF/view/chap14/view05.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
