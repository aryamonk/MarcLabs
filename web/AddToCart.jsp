<%@page import="java.util.Vector"%>
<%
        int pid=Integer.parseInt(request.getParameter("pid"));
        
        
        Vector<Integer> cart=(Vector<Integer>)session.getAttribute("MyCart");
        
        if(cart.contains(pid))
            {
                   out.println("Already Exists!");
            }
        else
            {
                cart.add(pid);
                out.println("Item Added to Cart!");
            }
        
            

%>


