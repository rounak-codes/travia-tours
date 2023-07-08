<%-- 
    Document   : ${name}
    Created on : ${date}, ${time}
    Author     : ${user}
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
${doctype}
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bus Bookings</title>
    </head>
    <body>
    <Center>
        <table border="1">
            <tr>
                <th>BUS_BOOKING_ID</th>
                <th>TYPE</th>
                <th>BUSFROM</th>
                <th>BUSTO</th>
                <th>DATEDEPART</th>
                <th>ADULTS</th>
                <th>CHILD</th>
                <th>USERNAME</th>
            </tr>
        <%
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
                Statement st = conn.createStatement();
                String str = "select * from busform";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
                %>
                <tr>
                    <td><%=rs.getInt("BUS_BOOKING_ID")%></td>
                    <td><%=rs.getString("TYPE")%></td>
                    <td><%=rs.getString("BUSFROM")%></td>
                    <td><%=rs.getString("BUSTO")%></td>
                    <td><%=rs.getString("DATEDEPART")%></td>
                    <td><%=rs.getString("ADULTS")%></td>
                    <td><%=rs.getString("CHILD")%></td>
                    <td><%=rs.getString("USERNAME")%></td>
                </tr>
                <%}
            }catch(Exception e){
            
            }
            
        %>
        </table>
    </Center>
    </body>
</html>
