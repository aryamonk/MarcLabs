

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
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            
                           <%
                               
                                String _uid=request.getParameter("txt_uid");
                                String _answer=request.getParameter("txt_ans");
                                

                               // out.println("User id::"+_uid);
                               // out.println("<br>");
                                //out.println("Answer::"+_answer);
                                

                                Connection cn=(Connection)application.getAttribute("CONN");
                                
                                PreparedStatement ps=cn.prepareStatement("select * from user_info where email=? and security_answer=?");
                                ps.setString(1, _uid);
                                ps.setString(2, _answer);
                                ResultSet rs=ps.executeQuery();
                                
                                if(rs.next())
                                    {
                                        
                                        PreparedStatement ps_password=cn.prepareStatement("select password from login where userid=?");
                                        ps_password.setString(1, _uid);
                                        
                                        ResultSet rs_password=ps_password.executeQuery();
                                        
                                        rs_password.next();
                                        String _pass=rs_password.getString(1);
                                        %>
                           
                                        <hr width="50%" color="red">
                                        
                                                <font face="verdana" color="brown" size="2">YOUR PASSWORD IS::<%=_pass%></font>
                                        
                                        <hr width="50%" color="red">
                            
                            <%
                                    
                                    }
                                else
                                    {
                                        %>
                           
                                        <hr color="yellow">
                                        <font face="verdana" color="blue" size="3">YOUR ANSWER IS WRONG!</font>
                                        <hr color="yellow">
                            
                                    <%
                                    }
                                

                           
                           
                           
                           
                           
                           %>
                           
                            
                            
                            
                            
                            
                            
                            
                            
                </td></tr>
            
            
            
            
        </table>
    </body>
</html>
