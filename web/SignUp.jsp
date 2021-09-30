

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
                
                            <%!
                            
                                String[] questions={"What's your nick name?","What's your favourite colour?"};
                            %>
                            
                            <form method="post" action="Signupconfirm.jsp">
                                
                                <table cellpadding="5" cellspacing="0" border="0" width="70%">
                                    
                                    
                                    <tr bgcolor="blue"><th colspan="4"><font face="verdana" size="3" color="white">SIGN UP HERE</font></th></tr>
                                    
                                    <tr>    <td width="20%"></td><td><font face="verdana" size="3">Enter Name</font></td><td><input type="text" name="txt_name" style="width: 350px"></td><td width="20%"></td>    </tr>
                                            <tr>    <td width="20%"></td><td><font face="verdana" size="3">Address</font></td><td>
                                        
                                                    <textarea name="ta_address" rows="10" cols="50">
                                                        
                                                    </textarea>
                                                    
                                                 
                                                    
                                                    
                                        </td><td width="20%"></td>    </tr>
                                     <tr>    <td width="20%"></td><td><font face="verdana" size="3">Mobile</font></td><td><input type="text" name="txt_mobile" style="width: 350px"></td><td width="20%"></td>    </tr>
                                     <tr>    <td width="20%"></td><td><font face="verdana" size="3">Email</font></td><td><input type="email" name="txt_email" style="width: 350px" onkeyup="crossCheck(this.value)">
                                                                                                                           <br>
                                                                                                                           <div id="info">
                                                                                                                           </div>
                                         
                                         
                                         </td><td width="20%"></td>    </tr>
                                             <tr>    <td width="20%"></td><td><font face="verdana" size="3">Security Question</font></td><td>
                                         
                                                     
                                                     <select name="cmb_quest" style="width: 350px;">
                                                         
                                                         <option value="" selected>-select security question-</option>
                                                         <%
                                                                for(String _quest:questions)
                                                                    {
                                                                    
                                                         %>
                                                         
                                                         <option value="<%=_quest%>"><%=_quest%></option>
                                                         <%
                                                                    }
                                                         
                                                         %>
                                                         
                                                     </select>
                                         </td><td width="20%"></td>    </tr>
                                    
                                             
                                             <tr>    <td width="20%"></td><td><font face="verdana" size="3">Your Answer</font></td><td><input type="text" name="txt_ans" style="width: 350px"></td><td width="20%"></td>    </tr>
                                             
                                             <tr>    <td width="20%"></td><td><font face="verdana" size="3">Your Gender</font></td><td><input type="radio" name="rdb_gender" value="Male">Male &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="rdb_gender" value="Female">Female</td><td width="20%"></td>    </tr>
                                    
                                    
                                             <tr>    <td width="20%"></td><td><font face="verdana" size="3">Your Password</font></td><td><input type="password" name="txt_pass" style="width: 350px"></td><td width="20%"></td>    </tr>
                                             <tr>    <td width="20%"></td><td><font face="verdana" size="3">Confirm Password</font></td><td><input type="password" name="txt_pass1" style="width: 350px"></td><td width="20%"></td>    </tr>
                                             
                                             <tr>   <td colspan="4" align="center"><input type="submit" value="Sign Up!" class="btn btn-blue text-center"></td></tr>
                                             
                                             <tr>   <td colspan="4" align="center"><hr color="blue"></td></tr>
                                    
                                    
                                    
                                    
                                </table>
                                    
                                    
                                
                                
                                
                            </form>
                            
                            
                            
                            
                            
                            
                            
                            
                </td></tr>
            
            
            
            
        </table>
    </body>
</html>
