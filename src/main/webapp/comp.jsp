<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE>New Document</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY background="backgroun.png">

	<%
    try{
//String id=request.getParameter("id");
String id = (String)session.getAttribute("id");
int in=0;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");


Statement st=con.createStatement();
int i=st.executeUpdate("update customer set status=1 where id='"+id+"'");
}catch(Exception e){}
 %>
	<center>
		<BR>
		<BR>
		<BR>
		<h2>The Request for the Account is Granted</h2>
		<BR>
		<BR> <input type="button" value="     back     "
			onclick="window.location='bmain.jsp'">
</BODY>
</HTML>
