import java.io.*;
import javax.servlet.*; 
import javax.servlet.http.*;
import java.sql.*;

public class UserRegister extends HttpServlet { 
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws IOException, ServletException { 
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String fullName = (String)request.getParameter("fullName");
		String sex = (String)request.getParameter("sex");
		String bloodGroup = (String)request.getParameter("bloodGroup");
		String dob = (String)request.getParameter("dob");
		String address = (String)request.getParameter("address");
		String phone = (String)request.getParameter("phone");
		String email = (String)request.getParameter("email");
		String userName = (String)request.getParameter("userName");
		String password = (String)request.getParameter("password");
		String query = "insert into user(full_name, blood_group, sex, dob, address, phone, user_name, email, password) values('"+fullName+"','"+bloodGroup+"','"+sex+"','"+dob+"','"+address+"','"+phone+"','"+userName+"','"+email+"','"+password+"')";
		String url="jdbc:mysql://localhost:3306/bims";
		String con="com.mysql.jdbc.Driver";
		Connection cn=null;
		try{
			Class.forName(con);
			cn=DriverManager.getConnection(url,"root","");
			try{
				Statement stat = cn.createStatement();
				stat.executeUpdate(query);
				out.println("Submission Sucessful");
			}catch(Exception e){
				out.println("Error: Submission Failed!!\n" + e.getMessage());
			}

		}catch(Exception e){
			out.println("Connection Failed: \n" + e.getMessage());
		}
			out.println("<a href='./blood.jsp'> <input type='button' value='Return To home.'></a>");
	} 
}
