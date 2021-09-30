<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String uid=request.getParameter("userid");
    
    Connection cn=(Connection)application.getAttribute("CONN");
    
    PreparedStatement ps=cn.prepareStatement("select * from login where userid=?");
    ps.setString(1, uid);
    
    ResultSet rs=ps.executeQuery();
    
    if(rs.next())
        {
        
    %>
    <font face="verdana" color="red" size="2">*Already Exists!</font>
        
<%
        
        }

%>