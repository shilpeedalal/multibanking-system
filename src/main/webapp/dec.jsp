<%@page import="java.sql.*"%>

<%
int count=0;
String acc=request.getParameter("accno");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");


Statement st=con.createStatement();
int i=st.executeUpdate("delete from reject where accno='"+acc+"'");
 if(i>0)
%>
<BR>
<BR>
<BR>
<BR>
<center>
	<h2>Record is Deleted</h2>
	<br> <BR>
	<BR>
	<center>
		<input type="button" value="     BACK    "
			onClick="window.location='bmain.jsp'">