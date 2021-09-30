

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
            
            
                int rid=Integer.parseInt(request.getParameter("rid"));
                Connection cn=(Connection)application.getAttribute("CONN");
                PreparedStatement ps=cn.prepareStatement("select * from byrequirement where response=? and rid=?");
                ps.setString(1, "Pending");
                ps.setInt(2, rid);
                ResultSet rs=ps.executeQuery();
                rs.next();
        
        
        %>
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                        
                            
                            <table cellpadding="10" cellspacing="0" border="0" width="70%">
                                
                                <tr bgcolor="blue">    <th colspan="4"><font color="white" size="3">MY REQUIREMENT</font></th></tr>
                                <tr>    <td colspan="4" align="center"><font face="verdana" color="red"><%=rs.getString(3)%></font></td></tr>
                                <tr>    <td colspan="4" align="center">
                                    
                                        <textarea name="ta_answer" rows="10" cols="50">
                                            


                                        </textarea>
                                        
                                        
                                        
                                        
                                    </td></tr>
                                
                                <tr>    <td colspan="4" align="center"><input type="submit" value="Post Answer"></td></tr>
                                
                                
                            </table>
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
