package misc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.jdbc;

/**
 * Servlet implementation class ajax
 */
@WebServlet("/ajax")
public class ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ajax() {
		super();
		// TODO Auto-generated constructor stub
	}

	private void UpdateUserinfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("user");
		String xuehao = request.getParameter("xuehao");
		String email = request.getParameter("email");

		jdbc jdbc_conn = new jdbc();
		Connection con = jdbc_conn.getConn();
		Statement smt;
		int ret = 0;
		try {
			smt = con.createStatement();
			String sql = "UPDATE `userinfo` SET `email` = '" + email + "', `xuehao`='" + xuehao
					+ "' WHERE `userinfo`.`user` ='" + user + "'";
			System.out.println(sql);
			ret = smt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		PrintWriter out = response.getWriter();
		out.print(ret);
		out.flush();
	}
	private void SubmitNewMenu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int ret = 1;
		jdbc jdbc_conn = new jdbc();
		Connection con = jdbc_conn.getConn();

		String menu_image = request.getParameter("menu_image");
		String menu_name = request.getParameter("menu_name");
		String menu_type = request.getParameter("menu_type");
		String menu_subtype = request.getParameter("menu_subtype");
		String menu_price = request.getParameter("menu_price");
		String menu_detail = request.getParameter("menu_detail");
		System.out.println("menu_image:" + menu_image
				+ "menu_name:" + menu_name
				+ "menu_type:" + menu_type
				+ "menu_subtype:" + menu_subtype
				+ "menu_price:" + menu_price
				+ "menu_detail:" + menu_detail);

		String sql = null;
		if (menu_name == null || menu_type == null || menu_price == null || menu_detail == null) {
			System.out.println("invalid data");
		} else {
			Statement menu_smt;
			try {
				menu_smt = con.createStatement();
				sql = "INSERT INTO `menu` ( `id` , `name` , `style`, `style2`, `price`, `thumb`, `timestamp`, `details`)"
						+ "VALUES (NULL," + "'" + menu_name + "'" + ","
						+ "'" + menu_type + "'" + ","+ "'" + menu_type + "'" + "," + "'" + menu_price + "'" + ","
						+ "'" + menu_image + "'," + "NULL," + "'" + menu_detail + "'" + ")";
				System.out.println(sql);
				menu_smt.execute(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				ret = 0;
			}
		}
		PrintWriter out = response.getWriter();
		out.print(ret);
		out.flush();
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served
		// at:").append(request.getContextPath());

		String func = request.getParameter("func");
		System.out.println("func:" + func);

		if (func != null) {
			switch (func) {
			case "update_userinfo":
				UpdateUserinfo(request, response);
				break;
			case "submit_newmenu":
				SubmitNewMenu(request, response);
				break;
			default:
				break;
			}
		}
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
