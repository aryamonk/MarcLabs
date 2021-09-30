<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    if(session.getAttribute("uid100")==null || session.getAttribute("pass100")==null)
        {
            response.sendRedirect("ErrorPage.jsp");
        
        }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css"  rel="stylesheet" type="text/css" />
    </head>
    <body>
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                            
                            
                            <form method="post" action="PostRequireMent.jsp">
                                
                                <table cellpadding="10" cellspacing="0" border="0" width="70%" >
                                    
                                    <tr bgcolor="blue">    <th colspan="4"><font face="verdana" color="white" size="2">SEARCH PROPERTY BY REQUIREMENT</th></tr>
                                    
                                    <tr>    <td width="25%"></td><td><font face="verdana" size="2"><b>YOUR REQUIREMENT</b></font></td><td>
                                        
                                            <textarea name="ta_requirement" rows="5" cols="20">
                                                

                                            </textarea>
                                        </td><td width="25%"></td>    </tr>
                                    
                                    
                                    <tr><td colspan="4" align="center"><input type="submit" value="Post Your Requirement"></td></tr>
                                    <tr><td colspan="4" align="center"><a href="Track.jsp">Track My Requirement</a></td></tr>
                                    <tr><td colspan="4"><hr color="blue"></td></tr>
                                    
                                </table>
                                
                                
                                
                            </form>
                            
                            <%
                            
                                    String userid=""+session.getAttribute("uid100");
                                    String requirement=request.getParameter("ta_requirement");
                                    

                                    Connection cn=(Connection)application.getAttribute("CONN");
                                    PreparedStatement ps=cn.prepareStatement("insert into byrequirement(uid,requirement) values(?,?)");
                                    ps.setString(1, userid);
                                    ps.setString(2, requirement);
                                    
                                    int a=ps.executeUpdate();
                                    
                                    if(a>0)
                                        {
                                            
                                            PreparedStatement ps_respid=cn.prepareStatement("select max(rid) from byrequirement where uid=?");
                                            ps_respid.setString(1,userid);
                                            
                                            ResultSet rs=ps_respid.executeQuery();
                                            if(rs.next())
                                        
                                        %>
                            
                                        <font face="verdana" size="4" color="red">Your Requirement has been accepted and Response Id = <%=rs.getString(1)%></font> 
                            
                            
                                        <%
                                        
                                        }
                            
                            
                            
                            
                            
                            %>
                            
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
