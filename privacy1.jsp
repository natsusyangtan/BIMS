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
					<h1>Privacy Policies</h1>
				</div><!--heading-->
				<p id="title">Cookies and 3rd Party Advertisements</p>
				<p id="contents">
Google, as a third party vendor, uses cookies to serve ads on your site. Google's use of the DART cookie enables it to serve ads to your users based on their visit to your sites and other sites on the Internet. Users may opt out of the use of the DART cookie by visiting the Google ad and content network privacy policy.

We allow third-party companies to serve ads and/or collect certain anonymous information when you visit our web site. These companies may use non-personally identifiable information (e.g., click stream information, browser type, time and date, subject of advertisements clicked or scrolled over) during your visits to this and other Web sites in order to provide advertisements about goods and services likely to be of greater interest to you. These companies typically use a cookie or third party web beacon to collect this information. To learn more about this behavioral advertising practice or to opt-out of this type of advertising, you can visit http://www.networkadvertising.org/managing/opt_out.asp.</p>
			</div><!--main-->
			<div id="footer">
				<a href="UserHome.jsp">BIMS</a>  @2017 Blood Info Management System  <a href="privacy1.jsp">Privacy policies</a> | <a href="dmca1.jsp">DMCA</a> | <a href="contactus1.jsp">Contact us</a>
			</div><!--footer-->
	</div><!--Wrap-->

</body>
</html>