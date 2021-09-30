<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String uid=request.getParameter("email");
    
    Connection cn=(Connection)application.getAttribute("CONN");
    
    PreparedStatement ps=cn.prepareStatement("select security_quest from user_info where email=?");
    ps.setString(1, uid);
    
    ResultSet rs=ps.executeQuery();
    
    if(rs.next())
        {
        %>

        <font face="verdana" color="red" size="2"><b><%=rs.getString(1)%><b></font>
              <br>
              <br>
        
              <font face="verdana" size="2">ENTER ANSWER</font> &nbsp;&nbsp;&nbsp;<input type="text" name="txt_ans">
        <br>
        <br>
        <input type="submit" value="Recover Password"/>

        <%
        
        }
else
    {

%>
<font face="verdana" color="red" size="2"><img src="images/sorry.jfif" width="40" height="40"/>SORRY! YOU HAVE TO SIGN UP FIRST!</font>
        
        <%
    }

%>