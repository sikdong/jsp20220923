package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet15
 */
@WebServlet("/Servlet15")
public class Servlet15 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet15() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sql = "SELECT CustomerName FROM Customers ORDER BY CustomerName";
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				// Connection 얻기
				Connection con = DriverManager.getConnection(url, user, pw);
				
				// statement 생성
				Statement stmt = con.createStatement();
				// 쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);
				
				) {
			
			List<String> list = new ArrayList<>();
//			list.add(row1.getString(1));
//			list.add(row2.getString(1));
			while (rs.next()) {
				list.add(rs.getString(1));
			}
			//4. 조회 결과 attribute로 추가
			request.setAttribute("customerName", list);
	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		String path = "/WEB-INF/view/chap14/view03.jsp";
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
