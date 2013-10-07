<%@page import="java.util.*"%>

<%
    Collection<String> c = new ArrayList<String>();
    c.add("osx");
    c.add("linux");
    c.add("android");
    c.add("windows");
%>
<html>
    <body>
        <h1> LISTADO </h1>
        <ul>
            <%for (String item : c) {%>
                
                <li>  <%=item%> </li>
                
            <% }%>

        </ul>
    </body>
</html>
