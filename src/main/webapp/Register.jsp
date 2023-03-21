<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String Gmail=request.getParameter("mail");
String Pwd1=request.getParameter("pwd");
String pwd2=request.getParameter("cpwd");
String FullName=fname+lname;
out.println(Gmail);
String password=null;
if(Pwd1.equals(pwd2)){
	password=Pwd1;
}
 %>
  <form action="Regiister1.jsp">
<input type="hidden" name="t1" value="<%=FullName%>"><p></p>
<input type="hidden" name="t2" value="<%=password %>>"><p></p>
<input type="hidden" name="t3" value="<%=Gmail%>>"><p></p>
Mobile Number:<input type="text" name="mobile"><p></p>
Recovery Email:<input type="text" name="rm"><p></p>
Date of Birth:<input type="text" name="dob"><p></p>
Gender:<input type="checkbox" name="gender" value="male">male
<input type="checkbox" name="gender" value="female">female<p></p>
<input type="submit" value="Register">
</form>
