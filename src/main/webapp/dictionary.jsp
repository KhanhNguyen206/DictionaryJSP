<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: adminu
  Date: 21/06/2019
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String,String>dic= new HashMap<>();

    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search=request.getParameter("search");

    String result= dic.get(search);

    PrintWriter writer=response.getWriter();

    if (result != null) {
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");
    }

%>
</body>
</html>
