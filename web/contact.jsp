<%@page import="java.util.Vector"%>
<%
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);
%>
<%--<%
    if(session.getAttribute("uid100")==null || session.getAttribute("pass100")==null)
        {
            response.sendRedirect("ErrorPage.jsp");
        
        }


%>--%>
<%
        
        Vector<Integer> v=new Vector<Integer>();
        
        
        session.setAttribute("MyCart", v);

%>


<%-- 
    Document   : index
    Created on : Aug 11, 2021, 5:34:25 PM
    Author     : Aditya
--%>

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
                        
                            
                            <table align="center" cellpadding="0" cellspacing="0" border="5" width="70%">
                                
                                <tr>    <td align="center"><b><font face="verdana" color="red">Contact Method</b></td><td width="70%" align="center"><font face="verdana" color="red"><b>Contact Details</b></font></td></tr>
                                
                                <tr style="height: 50px;">    <td align="center">Phone number<br></td><td width="70%" align="center"> <font face="verdana" color="green">+91 7460001116</font></marquee></td></tr>
                                <tr style="height: 50px;">    <td align="center">E-mail address<br></td><td width="70%" align="center"> <font face="verdana" color="green">aryaman.anand53@gmail.com</font></marquee></td></tr>
                            </table>
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
