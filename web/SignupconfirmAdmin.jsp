

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
        <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                
                            
                                <%
                                        Connection cn=(Connection)application.getAttribute("CONN");
                                        
                                        String _name=request.getParameter("txt_name");
                                        String _address=request.getParameter("ta_address");
                                        String _mobile=request.getParameter("txt_mobile");
                                        String _email=request.getParameter("txt_email");
                                        String _squest=request.getParameter("cmb_quest");
                                        String _sans=request.getParameter("txt_ans");
                                        String _gender=request.getParameter("rdb_gender");
                                        String _pass=request.getParameter("txt_pass");
                                        String _utype="Admin";
                                        
                                        CallableStatement csbt=cn.prepareCall("{ call signupprocedure(?,?,?,?,?,?,?,?,?)}");
                                        csbt.setString(1, _email);
                                        csbt.setString(2, _name);
                                        csbt.setString(3, _address);
                                        csbt.setString(4, _mobile);
                                        csbt.setString(5, _squest);
                                        csbt.setString(6, _sans);
                                        csbt.setString(7, _gender);
                                        csbt.setString(8, _utype);
                                        csbt.setString(9, _pass);
                                        

                                        csbt.execute();

                                        
                                
                                %>
                                
                                <br>
                                <br>
                                <br>
                                <br>
                                
                                <hr color="brown"/>
                                
                                <font face="courier" color="red">SIGN UP SUCCESSFUL! <a href="index.jsp">Click Here</a> FOR LOGIN
                                
                                <hr color="brown"/>
                            
                </td></tr>
            
            
            
            
        </table>
    </body>
</html>
