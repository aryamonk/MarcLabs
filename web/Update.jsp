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
          <%
                                    int pid=Integer.parseInt(request.getParameter("pid"));
                                
                                    Connection cn=(Connection)application.getAttribute("CONN");
                                    PreparedStatement ps_record=cn.prepareStatement("select * from medicines where medicine_id=?");
                                    ps_record.setInt(1, pid);
                                    
                                    ResultSet rs_record=ps_record.executeQuery();
                                    
                                    rs_record.next();
                                    
                            
                            %>
        <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                                   
                            
                           
                            <form method="post" action="UpdateConfirm.jsp">
                            
                                <input type="hidden" name="hid_id" value="<%=rs_record.getString(1)%>">
                                <table cellpadding="10" cellspacing="0" border="0" width="70%">
                                
                                    <tr bgcolor="blue"><th colspan="4"><font face="verdana" size="3" color="white">PROPERTY FOR UPDATE</font></th></tr>
                                
                                    <tr>    <td width="25%"></td><td><font face="verdana" size="2" >PROPERTY ID</font></td><td><%=rs_record.getString(1)%></td><td width="25%"></td></tr>
                                    <tr>    <td width="25%"></td><td><font face="verdana" size="2" >PROPERTY CATEGORY</font></td><td><%=rs_record.getString(2)%></td><td width="25%"></td></tr>
                                    <tr>    <td width="25%"></td><td><font face="verdana" size="2" >PROPERTY SUB CATEGORY</font></td><td><%=rs_record.getString(3)%></td><td width="25%"></td></tr>
                                    <tr>    <td width="25%"></td><td><font face="verdana" size="2" >LOCATION ADDRESS</font></td><td>
                                        
                          <textarea name="ta_address" rows="5" cols="30"><%=rs_record.getString(4)%></textarea>
                                            
                                            
                                        </td><td width="25%"></td></tr>
                                    
                                    <tr>    <td width="25%"></td><td><font face="verdana" size="2" >DETAILS</font></td><td>
                                        
                                            <textarea name="ta_details" rows="5" cols="30"><%=rs_record.getString(5)%></textarea>
                                            
                                            
                                        </td><td width="25%"></td></tr>
                                
                                
                                    <tr>    <td width="25%"></td><td><font face="verdana" size="2" >PROPERTY RENT</font></td><td><input type="text" name="txt_cost" value="<%=rs_record.getString(7)%>"></td><td width="25%"></td></tr>
                                   
                                    <tr>    <td colspan="4" align="center"><input type="submit" value="Update Record"></td></tr>
                                    <tr>    <td colspan="4"><hr/></td></tr>
                                
                                </table>
                            </form>
                                
                                
                      
 
                         </td></tr>
            
            
            
            
        </table>
    </body>
</html>
