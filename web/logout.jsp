<%-- 
    Document   : logout
    Created on : 7 oct 2025, 8:51:58?p. m.
    Author     : Samuel
--%>

<%
        session.invalidate();
                
        RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
        rd.forward(request, response);    
%>