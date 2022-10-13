package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Products;

/**
 * Servlet implementation class Servlet20
 */
@WebServlet("/Servlet20")
public class Servlet20 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet20() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sql = "SELECT ProductName, Price FROM Products WHERE ProductID = ?";
		String idStr = request.getParameter("id");
		idStr = idStr == null ? "0" : idStr;
		
		int id = Integer.parseInt(idStr);

		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, id); 
			// 이 코드는 try 문안에 들어갈 수 없기 때문에  
			try (ResultSet rs = pstmt.executeQuery();) {
				// 이부분을 따로 빼서 다시 try 문으로 닫아줌
				if (rs.next()) {
					Products pd = new Products();
					pd.setProductName(rs.getString("productName"));
					pd.setPrice(rs.getDouble("price"));

					request.setAttribute("products", pd);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		String path = "/WEB-INF/view/chap14/view08.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
