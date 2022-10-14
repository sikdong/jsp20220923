package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet28
 */
@WebServlet("/Servlet28")
public class Servlet28 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet28() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/WEB-INF/view/chap14/view11.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String customerName = request.getParameter("CustomerName");
		String address = request.getParameter("Address");
		String city = request.getParameter("City");
		String country = request.getParameter("Country");
		String idstr = request.getParameter("CustomerId");
		int id = Integer.parseInt(idstr);
		String contactName = request.getParameter("ContactName");

		String sql = "INSERT INTO Customers (CustomerName, Address, City, Country, CustomerID, ContactName) "
				+ "VALUES (?, ?, ?, ?, ?, ?)";
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, customerName);
			pstmt.setString(2, address);
			pstmt.setString(3, city);
			pstmt.setString(4, country);
			pstmt.setInt(5, id);
			pstmt.setString(6, contactName);

			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {

				String way = request.getContextPath() + "/Servlet19";
				response.sendRedirect(way);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
