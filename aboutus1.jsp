<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.net.URL"%>
<%@page import="java.sql.*" %>

<%		String url="jdbc:mysql://localhost:3306/bims";
		String con="com.mysql.jdbc.Driver";
		Connection cn=null;
		Statement st=null;
		ResultSet rs=null;
		try {
			Class.forName(con);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Blood Info Management System</title>
	<link rel="stylesheet" type="text/css" href="blood.css">
</head>
<body>
	<div id="Wrap">
		<div  id="header">
			<div id="logo">
				<a href="UserHome.jsp"><img src="images/logo.jpg" height="100px" width="200px;"></a>
			</div><!--logo-->
			<div id="navigation">
				<div class="menu">
					<ul>
						<li><a href="UserHome.jsp">Home</a></li>
						<li><a href="bloodbank1.jsp">Blood Bank</a></li>
						<li><a href="bloodsearch1.jsp">Search Blood</a></li>
						<li><a href="aboutus1.jsp">About us</a></li>
					</ul>
				</div><!--menu-->
			</div><!--navigation-->
				<div id="user">
					<ul>
				<li><c:if test="${not empty loggedInUser}">
				${loggedInUser}	
							</c:if>
							<c:if test="${empty loggedInUser}">
								<p>You're not logged in!</p>
							</c:if></li>
							<li><a href="blood.jsp" class="button">logout</a></li>
							</ul>
			</div><!--user-->
		</div><!--header-->
			<div id="main">
			<div id="heading">
					<h1>About us</h1>
				</div><!--heading-->
				<p id="title">Objective</p>
					<p id="contents">The main objective of this project is to record the information about the users’ blood
group along with their few personal information that they want to share like locations
and phone number. Then it can provide these information for those users who are in
need of the users with appropriate blood group.
The project can also perform as a Blood Bank does by co-operating along with
various Blood Banks.</p>
					<p id="title">Existing System</p>
					<p id="contents">At the present, people in need of blood (in case of emergency) have to contact
friends-of-friends to find the appropriate guy with similar blood group. And that guy
may or may not be available for donation as he/she may have recently donated or
may be in medication. Sometime even the Blood Banks fail to provide the
appropriate blood for needy people. These cost a lot of time and effort and sometime
people lost their lives.
</p>
					<p id="title">Our System</p>
					<p id="contents">The proposed system is a web based application and maintains a centralized
repository of all related information. The system can allow the users to access all
the relevant information about those users who are available for donation. The
users in need of blood can contact any of the available users with the information
provided.</p>
			</div><!--main-->
			<div id="footer">
				<a href="UserHome.jsp">BIMS</a>  @2017 Blood Info Management System  <a href="privacy1.jsp">Privacy policies</a> | <a href="dmca1.jsp">DMCA</a> | <a href="contactus1.jsp">Contact us</a>
			</div><!--footer-->
	</div><!--Wrap-->

</body>
</html>