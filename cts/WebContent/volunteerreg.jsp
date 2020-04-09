<%@ page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String cnumber=request.getParameter("cnumber");
String vid=request.getParameter("vid");
String password=request.getParameter("password");
try{
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver Class Loaded!!!");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/outreach","root","password-1");
	System.out.println("Connection Established!!!");
	String sql="select * from volunteer where vid=?";
	PreparedStatement pstmt1=con.prepareStatement(sql);
	pstmt1.setString(1,vid);
	ResultSet rs=pstmt1.executeQuery();
	if(rs.next())
	{
			out.println("<h3 align='center'>Username already available</h3>");
			out.println("<a href='volunteerreg.html'>Try to Register Again!!!</a>");
		

	}
	else
	{
		String vsql="insert into volunteer values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(vsql);
		pstmt.setString(1,fname);
		pstmt.setString(2,lname);
		pstmt.setString(3,age);
		pstmt.setString(4,gender);
		pstmt.setString(5,cnumber);
		pstmt.setString(6,vid);
		pstmt.setString(7,password);
		int n=pstmt.executeUpdate();
		
		if(n!=0)
		{
		out.println("<br><br><h3 align='center'>Your details are submitted successfully</h3>");
		out.println("<a href='Volunteer.html'>Login here!!!</a>");
		}
		else
		{
		out.println("<br><br><h3 align ='center'>Insertion failed</h3>");	
		}
	}	
	con.close();
}
catch(Exception e)
{
	out.println(e.getMessage());
}

%>



		
		