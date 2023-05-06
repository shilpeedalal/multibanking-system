<%@ page import="java.sql.*"%>
<%
   try{
   
   int ind=0;
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");


   String uid=(String)session.getAttribute("id");
   String name=request.getParameter("name");
   String pwd=request.getParameter("password");
   String tpwd=request.getParameter("tpassword");
   String accno=request.getParameter("accno");
   String cid=request.getParameter("cid");
   String bname=request.getParameter("bname");
   String atype=request.getParameter("atype");
	float bal=50000;int status=0;
   	PreparedStatement st=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?)");
     st.setString(1,uid);
	 st.setString(2,cid);    
	 st.setString(3,pwd);
     st.setString(4,accno);
     st.setString(5,atype);
     st.setString(6,name);
  	 st.setString(7,bname);
	 st.setFloat(8,bal);
	   st.setString(9,tpwd);
	   st.setInt(10,status);
   
    st.executeUpdate();
   con.close();
   response.sendRedirect("acprocess.jsp");
   }catch(Exception e){
	   System.out.println(e);
	   %>
<script>
	       alert("Account No already Exit..");
	    </script>

<%
	   response.sendRedirect("otherbanknewac.jsp");
   }
  %>
