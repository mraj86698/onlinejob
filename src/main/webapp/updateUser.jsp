 
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
           UPDATE employee SET firstName= ?, lastName=?, userName=?, passwd=?, gender= ?, experience = ?,  industry= ?, keySkills =? WHERE email='${param.email}';
            <sql:param value="${param.firstName}" />
            <sql:param value="${param.lastName}"/>
            <sql:param value="${param.userName}"/>
            <sql:param value="${param.passwd}"/>
            <sql:param value="${param.gender}"/>
            <sql:param value="${param.experience}"/>
            <sql:param value="${param.industry}"/>
            <sql:param value="${param.keySkills}"/>  
             
        </sql:update>
            
    <c:if test="${rs>=1}">
            <font size="5" color='red'> Congratulations ! Data updated
            successfully.</font>
            
            <c:redirect url="ApplicantPage.jsp"></c:redirect>
        </c:if>
              
            
              
                     

    </body>
</html>
