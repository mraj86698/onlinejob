
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete JobPost </title>
    </head>
    <body bgcolor="violet">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/skillmap" user="root" password="" />
        <sql:update dataSource="${ds}" var="rs">
            delete from jobpost where jobid='${param.id}';
             
        </sql:update>
            
    <c:if test="${rs>=1}">
            <font size="5" color='green'> Congratulations ! Data deleted
            successfully.</font><br>
            </c:if>
              <!--<c:out value="${param.sid}" />-->
        
   
    </body>
</html>
