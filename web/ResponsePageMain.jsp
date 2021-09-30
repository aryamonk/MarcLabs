

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css"  rel="stylesheet" type="text/css" />
    </head>
    <body>
        
        <%
                Connection cn=(Connection)application.getAttribute("CONN");
                PreparedStatement ps=cn.prepareStatement("select * from byrequirement where response=?");
                ps.setString(1, "Pending");
                ResultSet rs=ps.executeQuery();
        
        
        %>
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                        
                            
                            <table cellpadding="10" cellspacing="0" border="0" width="70%">
                               
                                <tr bgcolor="blue">    <th colspan="4"><font face="verdana" size="2" color="white">REQUIREMENTS</font></th></tr>
                                
                                <%
                                        while(rs.next())
                                            {
                                 %>
                                
                                 <tr><td><font face="courier" size="2" color="brown"><%=rs.getString(1)%></font></td><td><font face="verdana" color="green"><%=rs.getString(2)%></font></td><td><font face="verdana" size="2" color="red"><%=rs.getString(3)%></font></td><td><a href="Pending.jsp?rid=<%=rs.getString(1)%>"><%=rs.getString(4)%></a></td></tr>
                                
                                 <%
                                            
                                            }
                                    
                                %>
                                
                                
                                
                                
                                
                                
        
                                
                            </table>
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
