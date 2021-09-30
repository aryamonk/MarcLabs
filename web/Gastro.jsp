<%
    if(session.getAttribute("uid100")==null || session.getAttribute("pass100")==null)
        {
            response.sendRedirect("ErrorPage.jsp");
        
        }


%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css"  rel="stylesheet" type="text/css" />
        <script lang="JavaScript" type="text/javascript" src="prog1.js">
            
            
        </script>
    </head>
    <body>
        <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                
                            <%
                                    String _category="Gastro";
                                    Connection cn=(Connection)application.getAttribute("CONN");
                                    
                                    PreparedStatement ps=cn.prepareStatement("select * from Medicines where medicine_category=?");
                                    ps.setString(1, _category);
                                    ResultSet rs=ps.executeQuery();
                                    int i=0;
                            %>
                            
                            <table cellpadding="5" cellspacing="0" border="0" width="70%">
                                
                                <tr bgcolor="blue">    <th colspan="4"><font face="verdana" color="white" size="2">Gastro Products</font></th></tr>
                                
                                <%
                                    while(rs.next())
                                        {
                                            
                                      
                                %>
                                
                                <tr >    <td width="25%"></td><td><font face="verdana" color="black" size="2"><b>MEDICINE ID</b></font></td><td><font face="verdana" color="black" size="2"><%=rs.getString(1)%></font></td><td width="25%"></td>    </tr>
                                <tr >    <td width="25%"></td><td><font face="verdana" color="black" size="2"><b>CATEGORY</b></font></td><td><font face="verdana" color="black" size="2"><%=rs.getString(3)%></font></td><td width="25%"></td>    </tr>
                                <tr >    <td width="25%"></td><td><font face="verdana" color="black" size="2"><b>NAME</b></font></td><td><font face="verdana" color="black" size="2"><%=rs.getString(4)%></font></td><td width="25%"></td>    </tr>
                                <tr >    <td width="25%"></td><td><font face="verdana" color="black" size="2"><b>DETAILS</b></font></td><td><font face="verdana" color="black" size="2"><%=rs.getString(5)%></font></td><td width="25%"></td>    </tr>
                                <tr >    <td width="25%"></td><td><font face="verdana" color="black" size="2"><b>IMAGE</b></font></td><td><img src="ShowImage.jsp?pid=<%=rs.getString(1)%>" width="100" height="100"/></td><td width="25%"></td>    </tr>
                                <tr >    <td width="25%"></td><td><font face="verdana" color="black" size="2"><b>COST</b></font></td><td><%=rs.getString(7)%></td>    </tr>
                               
                               
                                <tr><td colspan="4"><hr color="red"></td></tr>
                                <tr><td colspan="4" bgcolor="#F8C471 " align="center"><a href="javascript: addToCart('<%=rs.getString(1)%>')">ADD TO CART</a></td></tr>
                                <tr><td colspan="4" ><hr color="red"></td></tr>
                                    
                                    </td></tr>
                                
                                
                                <%   
                                    
                                        
                                        }
                                
                                %>
                                
                                
                            </table>
                           
                            
                            
                            
                            
                            
                            
                            
                            
                </td></tr>
            
            
            
            
        </table>
    </body>
</html>
