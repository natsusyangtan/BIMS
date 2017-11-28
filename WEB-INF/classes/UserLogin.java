import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class UserLogin extends HttpServlet {
public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException
{
PrintWriter out = response.getWriter();
response.setContentType("text/html");
String userName=request.getParameter("userName");
String password=request.getParameter("password");
String url="jdbc:mysql://localhost:3306/bims";
String con="com.mysql.jdbc.Driver";
Connection cn=null;
try{
	Class.forName(con);
	cn=DriverManager.getConnection(url,"root","");
    String sql1="select user_name,password from user where user_name='"+userName+"' and password='"+password+"'";
	Statement stat1=cn.createStatement();
	ResultSet rs1=stat1.executeQuery(sql1);
	if(rs1.next()){
			request.getSession().setAttribute("loggedInUser", userName);
			RequestDispatcher rd=request.getRequestDispatcher("/UserHome.jsp");
			rd.include(request,response);
		}
	else if(!rs1.next()){
			request.setAttribute("alertMsg", "Username or password incorrect");
			RequestDispatcher rd=request.getRequestDispatcher("/Failure.jsp");
			rd.include(request,response);
	}
		}catch(Exception e){
			
			out.println("Connection Failed: \n" + e.getMessage());
		}

}

}