<%@ page import="java.sql.*,java.util.*"%>
<%
String aname=request.getParameter("aname");
String description=request.getParameter("description");
String location=request.getParameter("location");
String date=request.getParameter("date");
String cnumber=request.getParameter("cnumber");

try{
	Class.forName("com.mysql.jdbc.Driver");
	// System.out.println("Driver Class Loaded!!!");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/outreach","root","password-1");
	// System.out.println("Connection Established!!!");
	
		String vsql="insert into event values(?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(vsql);
		pstmt.setString(1,aname);
		pstmt.setString(2,description);
		pstmt.setString(3,location);
		pstmt.setString(4,date);
		pstmt.setString(5,cnumber);
		int n=pstmt.executeUpdate();
		
		if(n!=0)
		{
		out.println("<br><br><h3 align='center'>Event details submitted successfully</h3>");
		// <a href="eventConditions.html"> Please add Do's and Dont's to Event </a>
		}
		else
		{
		out.println("<br><br><h3 align ='center'>Insertion failed</h3>");	
		}
	con.close();
}
catch(Exception e)
{
	out.println(e.getMessage());
}

%>



		
		