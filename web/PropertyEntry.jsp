
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.CallableStatement"%>
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
        <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            
            <tr>    <td colspan="2" align="center"><jsp:include page="banner.jsp" /></td> </tr>
            
            
            
            
            
            
            <tr>    <td colspan="2" align="center"><jsp:include page="menu.jsp" /><hr color="blue"></td>  </tr>
            
            
                    <tr>    <td colspan="2" align="center">
                
                                <%
                                    Connection cn=(Connection)application.getAttribute("CONN");
                                    
                                    PreparedStatement ps_category=cn.prepareStatement("select distinct category from medicine_category");
                                    ResultSet rs_category=ps_category.executeQuery();
                                

                                %>
                            
                            
                        </td></tr>
                    <tr> <td align="center">  <form method="post" action="InsertionServlet" enctype="multipart/form-data">
                                
                                <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
                                    
                                    <tr bgcolor="blue"><th colspan="4"><font face="verdana" size="2" color="white"><b>MEDICINE DETAILS ENTRY FORM</b></font></th>    </tr>
                                            <tr>    <td width="15%"></td><td><font face="verdana" size="2">MEDICINE CATEGORY</font></td><td>
                                        
                                                    <select name="cmb_category" class="select" onchange="populateCategory(this.value)">
                                                        
                                                        <option value="" selected>-select category-</option>
                                                        
                                                        <%
                                                        
                                                                while(rs_category.next())
                                                                    {
                                                                    
                                                         %>
                                                        
                                                         <option value="<%=rs_category.getString(1)%>"><%=rs_category.getString(1)%></option>
                                                            <%
                                                                    }
                                                        
                                                        %>
                                                    </select>
                                                    
                                                    
                                                    
                                                    
                                        </td><td width="15%"></td>    </tr>
                                    <tr>    <td ></td><td><font face="verdana" size="2">SUB CATEGORY</font></td><td>
                                        
                                            <select name="cmb_scategory" class="select" id="cmb1">
                                                        
                                                        <option value="" selected>-select sub category-</option>
                                                        
                                                    </select>
                                                    
                                                    
                                                    
                                                    
                                        </td><td ></td>    </tr>

                                    <tr>    <td ></td><td><font face="verdana" size="2">MEDICINE NAME</font></td><td><textarea name="ta_name" rows="5" cols="50"></textarea></td><td></td>    </tr>
                                    <tr>    <td </td><td><font face="verdana" size="2">MEDICINE DETAILS</font></td><td><textarea name="ta_details" rows="5" cols="50"></textarea></td><td ></td>    </tr>
                                    <tr>    <td </td><td><font face="verdana" size="2">MEDICINE IMAGE</font></td><td><input type="file" name="file_upload"></td><td ></td>    </tr>
                                    <tr>    <td </td><td><font face="verdana" size="2">MEDICINE COST</font></td><td><input type="text" name="txt_cost"/> INR</td><td ></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><button type="submit" class="btn btn-blue text-center">INSERT RECORD</button></td></tr>
                                    
                                    <tr>    <td colspan="4" align="center"><hr color="blue" /></td></tr>

                                    
                                </table>
                                
                                
                                
                            </form></td></tr>
            
            
            
        </table>
    </body>
</html>
