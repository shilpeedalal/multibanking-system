<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE></TITLE>

</HEAD>
<script>
 		function check(){
 			if(document.f1.accno.value==""){
 				alert("enter  account number");
 				return false;
 			}
			if(document.f1.name.value==""){
 				alert("enter account holder name");
 				return false;
 			}

 			if(document.f1.password.value==""){
				alert("enter password");
 				return false;
 			}
 			if(!((document.f1.password.value)==(document.f1.password1.value)))
			{
	 			alert("enter correct password");
	 			return false;
			}

			if(document.f1.tpassword.value==""){
				alert("enter  transaction password");
 				return false;
 			}
 			if(!((document.f1.tpassword.value)==(document.f1tpassword1.value)))
			{
	 			alert("enter correct transaction password");
	 			return false;
			}
			return true;
 		}
	</script>

<BODY background="backgroun.png">
	<BR>

	<form action="insotheraccount.jsp" name="f1" method="get"
		onsubmit='return check()'>
		<center>
			<h2>
				<b>Enter Account Details</font>
			</h2>
		</center>
		<B></B></b>
		<table align="center">
			<tr>
				<td><h3>Select Bank</td>
				<td><SELECT NAME="bname">
						<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
				PreparedStatement st=con.prepareStatement("select * from bank ");
				ResultSet rs=st.executeQuery();
				while(rs.next()){
			%>
						<option><%=rs.getString(2)%></option>

						<%}%>
				</SELECT></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>
					<h3>Enter Account Number
				</td>
				<td><input type="text" name="accno" id="acno"></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td><h3>Enter Account Holder Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr></tr>
			<tr>
				<td>
					<h3>Customer ID
				</td>
				<td><input type="text" name="cid"></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>

					<h3>Password
				</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td><h3>Confirm Password</td>
				<td><input type="password" name="password1"></td>
			</tr>
			<br>
			<tr></tr>
			<tr></tr>
			<tr>
				<td><h3>Account Type</td>
				<td><SELECT NAME="atype">
						<option>Current Account</option>
						<option>Savings Account</option>
						<option>Others</option>

				</SELECT></td>
			</tr>
			<tr>
				<td>
					<h3>Enter Transaction Password
				</td>
				<td><input type="password" name="tpassword"></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td><h3>Confirm Password</td>
				<td><input type="password" name="tpassword1"></td>
			</tr>
			<br>
			<tr></tr>
			<tr></tr>

		</table>
		<BR>
		<BR>
		<center>
			<input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="button" name="back" value="   back   "
				onClick="window.location='user.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="   reset   ">
		</center>
		</font></b>
	</form>

</body>
</html>

