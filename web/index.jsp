
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css"  rel="stylesheet" type="text/css" />
         <script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>
    </head>
    <body>
        <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
            <tr style="height: 300px;">    <td colspan="2"><jsp:include page="slidingimages.jsp"/></td>  </tr>
            
            
                    <tr><td colspan="2" align="center">
                           <hr>
                           <form method="post" action="ValidateLogin.jsp">
                         <table cellpadding="5" cellspacing="0" border="0" width="80%">
                             
                             
                             <tr>  <td bgcolor="blue"><font color="white">LOGIN HERE</font></td><td><input type="text" name="txt_uid"  placeholder="USER ID" class="logintext"></td><td><input type="password" name="txt_pass" maxlength="50" placeholder="PASSWORD" class="logintext"></td><td>  <button type="submit" class="btn btn-blue text-center">Login</button> </td></tr>
                             
                             <tr>   <td colspan="2" align="center"><a href="SignUp.jsp"><font face="verdana" size="2">NEW USER SIGNUP</a></a></td><td colspan="2" align="left"><a href="Forget.jsp"><font face="verdana" size="2">FORGET PASSWORD</a></a></td></tr>
                             
                         </table>
                               
                           </form>
                            <hr>
                            
                        </td></tr>
            
            
            
            
            
        </table>
    </body>
</html>
