 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="violet">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/skillmap" user="root" password="" />
        <sql:update dataSource="${ds}" var="rs">
            update jobpost set loc=?,area=?,job=?,phone=?,vac=?,skill=?,sal=?,ivdt=?,ivt=?,ivp=?,mail=? where jobid='${param.jobid}';
            <sql:param value="${param.loc}" />
            <sql:param value="${param.area}"/>
            <sql:param value="${param.job}"/>
            <sql:param value="${param.phone}"/>
            <sql:param value="${param.vac}"/>
            <sql:param value="${param.skill}"/>
            <sql:param value="${param.sal}"/>
            <sql:param value="${param.ivdt}"/>  
             <sql:param value="${param.ivt}"/> 
              <sql:param value="${param.ivp}"/> 
              <sql:param value="${param.mail}"/> 
        </sql:update>
            
    <c:if test="${rs>=1}">
            <font size="5" color='red'> Congratulations ! Data updated
            successfully.</font>
            <c:redirect url="ViewJobs.jsp"></c:redirect>
        </c:if>
              
            
              
                     

    </body>
</html>
