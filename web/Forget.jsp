

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
                
                            
                            
                            <form method="post" action="RecoverPassword.jsp">
                                
                                <table cellpadding="10" cellspacing="0" border="0" width="70%">
                                    
                                    <tr bgcolor="blue"><th colspan="4"><font face="verdana" color="white" size="3">FORGET PASSWORD</font></th></tr>
                                    <tr>    <td width="25%"></td><td><font face="verdana" color="black" size="2">ENTER USER ID</font></td><td><input type="text" name="txt_uid" id="uid"></td><td width="25%"><a href="javascript: getSecurityQuest()">GET QUESTION</a></td>    </tr>
                                    <tr>    <td colspan="4" align="center" id="block"></td></tr>
                                    
                                    <tr>    <td colspan="4"><hr color="red"></td></tr>
                                </table>
                                
                                
                            </form>
                              
                           
                            
                            
                            
                            
                            
                            
                            
                            
                </td></tr>
            
            
            
            
        </table>
    </body>
</html>
