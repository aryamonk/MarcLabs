
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css"  rel="stylesheet" type="text/css" />
    </head>
    <body>
        <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
 
                            <%
                                    Connection cn=(Connection)application.getAttribute("CONN");
                                    PreparedStatement ps=cn.prepareStatement("select * from Medicines");
                                    
                                    ResultSet rs=ps.executeQuery();
                                    
                            
                            %>
                            
                            <table cellpadding="10" cellspacing="0" border="0" width="100%">
                                
                                <tr bgcolor="blue"> <th colspan="10"><font face="verdana" color="white" size="2">MEDICINE DETAIL DELETION/ UPDATION</font></th></tr>
                                <%
                                    if(!rs.next())
                                        {
                                         %>
                                <tr><td colspan="10" align="center">RECORD DOES NOT EXIST!</td></tr>
                                <tr><td colspan="10" align="center"><hr></td></tr>
                                
                                <%   
                                        }
                                    while(rs.next())
                                    {
                                        
                                        
                                %>
                                
                                <tr>
                                    
                                      <%
                                      
                                        for(int i=1;i<=rs.getMetaData().getColumnCount();i++)
                                            {
                                                if(i==6)
                                                    {
                                                        continue;
                                                    }
                                            %>
                                      
                                    <td>
                                        
                                        <font face="verdana" color="green" size="2"><%=rs.getString(i)%></font>
                                        
                                    </td>
                                    
                                    
                                    <%
                                            
                                            }
                                      
                                      
                                      %>
                                    
                                      <td><a href="ShowImage.jsp?pid=<%=rs.getString(1)%>"><img src="ShowImage.jsp?pid=<%=rs.getString(1)%>" width="100" height="100"></a></td><td><font face="verdana" size="2"><a href="Delete.jsp?pid=<%=rs.getString(1)%>">DELETE</a>|<a href="Update.jsp">UPDATE</a></font></td>
                                    
                                      </tr>
                                      
                                      
                                      <tr><td colspan="10"><hr color="red"></td></tr>
                                
                                
                                <%
                                    
                                    
                                    }

                                
                                
                                %>
                                
                                
                            </table>
                            
                                
                                
                                
 
                </td></tr>
            
            
            
            
        </table>
    </body>
</html>
