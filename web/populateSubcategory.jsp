<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<option value="" selected>-select subcategory-</option>
<%
    String _category=request.getParameter("category");
    Connection cn=(Connection)application.getAttribute("CONN");
    
    PreparedStatement ps_subcategory=cn.prepareStatement("select sub_category from medicine_category where category=?");
    ps_subcategory.setString(1, _category);
    
    ResultSet rs_subcategory=ps_subcategory.executeQuery();
    

    while(rs_subcategory.next())
        {
        
 %>

 <option value="<%=rs_subcategory.getString(1)%>"><%=rs_subcategory.getString(1)%></option>

<%
        
        }



%>