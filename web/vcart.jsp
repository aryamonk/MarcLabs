<%
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);
%>
<%
    if(session.getAttribute("uid100")==null || session.getAttribute("pass100")==null || session.getAttribute("MyCart")==null)
        {
            response.sendRedirect("ErrorPage.jsp");
        
        }


%>
<%@page errorPage="ErrorPage.jsp" %>
<%@page import="java.util.Vector"%>
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
                                
                                
                                
                                    Vector<Integer> cart=(Vector<Integer>)session.getAttribute("MyCart");
                                    
                                    Connection cn=(Connection)application.getAttribute("CONN");
                            
                            %>
                            
                            <table cellpadding="5" cellspacing="0" border="0" width="90%">
                                
                                
                                <tr bgcolor="blue"><th colspan="6"><font face="verdana" size="2" color="white"> MY VISITING CART</font></th>   </tr>
                                
                                <%
                                    
                                            for(int _value:cart)
                                                {
                                  

                                   PreparedStatement ps_cart=cn.prepareStatement("select * from medicines where medicine_id=?");
                                   ps_cart.setInt(1, _value);
                                   
                                   ResultSet rs_cart=ps_cart.executeQuery();
                                   
                                    rs_cart.next();


                                                    
                                                
                                %>

                                <tr><td colspan="6"><hr/></td></tr>
                                <tr>   <td><%=_value%></td><td><font face="verdana" color="brown" size="3"><%=rs_cart.getString(3)%></font></td><td><font face="verdana" color="red" size="3"><%=rs_cart.getString(4)%></font></td><td><font face="verdana" color="red" size="3"><b><font color="black"><%=rs_cart.getMetaData().getColumnLabel(7).toUpperCase()%>:</font></b><%=rs_cart.getString(7)%></font></td><td><img src="ShowImage.jsp?pid=<%=_value%>" width="100" height="100"></td><td><font face="verdana" color="blue" size="3"><b><font color="black"></font></td></tr>
                                <tr bgcolor="#F39C12"><td colspan="6" align="center"><a href="RemoveFromCart.jsp?pid=<%=_value%>">REMOVE</a></td></tr>
                                
                                <%
                                                
                                                }
                                      
                                
                                %>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                            </table>        
                            
                    
                
                            
                            
                            
                            
                            
                </td></tr>
            
            
            
            
        </table>
    </body>
</html>
