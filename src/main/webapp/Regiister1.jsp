<%@ page import="java.sql.*"%>
<%
String fullname=request.getParameter("t1");
String Gmail=request.getParameter("t3");
String Password=request.getParameter("t2");
long MobileNumber=Long.parseLong(request.getParameter("mobile"));
String RecoveryMail=request.getParameter("rm");
String DateOfBirth=request.getParameter("dob");
String Gender=request.getParameter("gender");
try	
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","venky","venky");
	PreparedStatement ps=con.prepareStatement("insert into Email values(?,?,?,?,?,?,?)");
	ps.setString(1,fullname);
	ps.setString(2,Gmail);
	ps.setString(3,Password);
	ps.setLong(4,MobileNumber);
	ps.setString(5,RecoveryMail);
	ps.setString(6,DateOfBirth);
	ps.setString(7, Gender);
	int i=ps.executeUpdate();
	out.println(i+"Registration completed");
}
catch(Exception e)
{
	out.println(e);
	e.printStackTrace();
}
 %>