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


%>
--%>
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
            
            
                    <tr>    <td colspan="3">
                        
                            
                            <table align="center" cellpadding="2" cellspacing="0" border="5" width="70%">
                                
                                <tr>    <td colspan="3" width="40%" align="center"><font face="verdana" color="red"><b>ABOUT US</b></font></td></tr>
                                
                                <tr style="height: 150px;">    <td colspan="3" width="30%" align="justify"> <%-- <marquee  scrollamount="2" direction="up" loop="true" width="40%">--%><font face="verdana" color="green">           Marc Laboratories Limited is a Lucknow (Uttar Pradesh, India) based company, which was established in the year 1986. Under the immense leadership of experienced mentors and professionals, we have evolved as a leading name in the industry. We are in the business of manufacturing, exporting, and supplying top-class pharmaceutical products and various other products. The list of products that we offer include pharmaceutical tablets, pharmaceutical capsules, pharmaceutical injections, pharmaceutical syrup, Isadiet plus granules, Lactulac solution, Levotop IV solution, aloe vera lotion, and many more.</font></marquee></td></tr>
                                
                            </table>
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
