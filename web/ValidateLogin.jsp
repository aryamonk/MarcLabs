<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String _uid=request.getParameter("txt_uid");
    String _pass=request.getParameter("txt_pass");
    
    Connection cn=(Connection)application.getAttribute("CONN");
    
    PreparedStatement ps=cn.prepareStatement("select * from login where userid=? and password=?");
    ps.setString(1, _uid);
    ps.setString(2, _pass);
    
    ResultSet rs=ps.executeQuery();
    
    if(rs.next())
            {
                session.setAttribute("uid100", _uid);
                session.setAttribute("pass100", _pass);
                
                
                
                if(rs.getString(3).equals("Admin"))
                    {
                            response.sendRedirect("AdminHomePage.jsp");
                    }
                else
                {
                
                   response.sendRedirect("HomePage.jsp");
                }
            }
    else
        {
            response.sendRedirect("ErrorPage.jsp");
        }
    

%>