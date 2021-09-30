<%@page import="java.util.Vector"%>
<%
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);
%>
<%
    if(session.getAttribute("uid100")==null || session.getAttribute("pass100")==null)
        {
            response.sendRedirect("ErrorPage.jsp");
        
        }


%>
<%
        
        Vector<Integer> v=new Vector<Integer>();
        
        
        session.setAttribute("MyCart", v);

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
        <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2">
                        
                            
                            <table align="center" cellpadding="0" cellspacing="0" border="1" width="50%">
                                
                                <tr>    <td width="40%" align="center"><font face="verdana" color="red">ALERTS</font></td></tr>
                                
                                <tr style="height: 500px;">    <td width="30%" align="center"> <marquee  scrollamount="1" direction="up" loop="true" width="30%"><font face="verdana" color="green">Welcome to the site!</font></marquee></td></tr>
                                
                            </table>
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
