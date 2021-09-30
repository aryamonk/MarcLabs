
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
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                        
                            
                            <table cellpadding="10" cellspacing="0" border="0" width="70%">
                                
                                <tr bgcolor="blue"><td align="center"><font face="verdana" color="white" size="2">ADMIN TOOLS</td></td></tr>
                                <tr ><td align="center"><font face="verdana" color="white" size="2"><a href="AdminSignup.jsp">NEW ADMIN SIGNUP</a></td></td></tr>
                                <tr ><td align="center"><font face="verdana" color="white" size="2"><a href="PropertyEntry.jsp">ADD NEW MEDICINE</a></td></td></tr>
                                <tr ><td align="center"><font face="verdana" color="white" size="2"><a href="PropertyUpdate.jsp">MEDICINE DELETION/UPDATION</a></td></td></tr>
                                <tr ><td align="center"><font face="verdana" color="white" size="2"><a href="ResponsePageMain.jsp">RESPONSE PAGE MAINTAINANCE</a></td></td></tr>
                                <tr ><td align="center"><font face="verdana" color="white" size="2"><hr/></td></td></tr>
                                
                            </table>
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
