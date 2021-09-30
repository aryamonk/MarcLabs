<%@page import="java.util.Vector"%>
<%
    
        int pid=Integer.parseInt(request.getParameter("pid"));
        
        Vector<Integer> cart=(Vector<Integer>)session.getAttribute("MyCart");
        if(cart.contains(pid))
            {
                    cart.remove(new Integer(pid));
                    response.sendRedirect("vcart.jsp");
            }
    
%>