

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
                                
                                    int _pid=Integer.parseInt(request.getParameter("hid_id"));
                                    String _address=request.getParameter("ta_address");
                                    String _details=request.getParameter("ta_details");
                                    double _rent=Double.parseDouble(request.getParameter("txt_rent"));
                                    double _brokerage=Double.parseDouble(request.getParameter("txt_brokerage"));
                                    
                                    Connection cn=(Connection)application.getAttribute("CONN");
                                    PreparedStatement ps=cn.prepareStatement("update properties set location_address=?, details=?, property_rent=?, brokerage=? where property_id=?");
                                    ps.setString(1, _address);
                                    ps.setString(2, _details);
                                    ps.setDouble(3, _rent);
                                    ps.setDouble(4, _brokerage);
                                    ps.setInt(5, _pid);
                                    int a=ps.executeUpdate();
                                    
                                    if(a>0)
                                        {
                                        
                                            %>
                            
                            <hr>
                            <h3 align="center">RECORD UPDATED!</h3>
                            <h4 align="center"><a href="PropertyUpdate.jsp">ATTEND THE NEXT RECORD</a></h4>
                            <hr>
                            
                            <%
                                        }

                                        
                                    
                                    
                                    
                                    

                            
                            
                            
                            %>
                            
                           
                                
                                
                      
 
                         </td></tr>
            
            
            
            
        </table>
    </body>
</html>
