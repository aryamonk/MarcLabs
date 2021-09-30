<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
        int pid=Integer.parseInt(request.getParameter("pid"));
        
        Connection cn=(Connection)application.getAttribute("CONN");
        PreparedStatement ps=cn.prepareStatement("delete from Medicines where medicine_id=?");
        ps.setInt(1,pid);
        int a=ps.executeUpdate();
        response.sendRedirect("PropertyUpdate.jsp");

%>