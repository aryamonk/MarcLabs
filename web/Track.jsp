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
                            
                            
                            <form method="post" action="TrackResponse.jsp">
                                
                                <table cellpadding="10" cellspacing="0" border="0" width="70%">
                                    
                                    
                                    <tr bgcolor="blue">    <th colspan="4"><font color="white" size="4">TRACK YOUR REQUIREMENT</font></th>    </tr>
                                    <tr>    <td width="25%"></td><td>ENTER RESPONSE ID</td><td><input type="text" name="txt_uid"></td><td width="25%"></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><input type="submit" value="Track your response"></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><hr/></td>    </tr>
                                    
                                    
                                    
                                    
                                </table>
                                
                                
                            </form>    
                            
                                    
                
                            
                            
                            
                      </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
