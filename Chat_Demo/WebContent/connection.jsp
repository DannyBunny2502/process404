
<html>
<head>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.InitialContext, javax.naming.Context" %>
</head>
<body>
<%
InitialContext initCtx = new InitialContext();
Context envCtx = (Context) initCtx.lookup("java:/comp/env");
DataSource ds = (DataSource) envCtx.lookup("jdbc/UserChat");
Connection conn = ds.getConnection();
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT VERSION();");
while(rs.next()){
	out.println("MySQL Version: "+rs.getString("version()"));
}

rs.close();
stmt.close();
conn.close(); 
initCtx.close();
%>
</body>
</html>