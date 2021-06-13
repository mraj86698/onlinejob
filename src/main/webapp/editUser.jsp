<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit user</title>
        <link rel="shortcut icon"
	href="http://www.iconarchive.com/download/i47277/avosoft/warm-toolbar/user.ico">
	
<style >
#myInput {
  background-image: url('/css/searchicon.png'); /* Add a search icon to input */
  background-position: 10px 12px; /* Position the search icon */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  width: 100%; /* Full-width */
  font-size: 16px; /* Increase font-size */
  padding: 12px 20px 12px 40px; /* Add some padding */
  border: 1px solid #ddd; /* Add a grey border */
  margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
  border-collapse: collapse; /* Collapse borders */
  width: 100%; /* Full-width */
  border: 1px solid #ddd; /* Add a grey border */
  font-size: 18px; /* Increase font-size */
  
}

#myTable th, #myTable td {
  text-align: left; /* Left-align text */
  padding: 12px; /* Add padding */
}

#myTable tr {
  /* Add a bottom border to all table rows */
  border-bottom: 1px solid #ddd; 
}

#myTable tr.header, #myTable tr:hover {
  /* Add a grey background color to the table header and on hover */
  background-color: #f1f1f1;
}

.header
{
    
    background: yellow;
}
</style>



    </head>
    <body bgcolor="aqua">
         <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/skillmap" user="root" password="" />
         <sql:query dataSource="${ds}" var="rs">select* from employee where email=?;
             <sql:param value="${param.email}" />
         </sql:query>
         
          <form action="updateUser.jsp" method="post">
            
                <!--<caption>Update User</caption>-->
                <table border="1" width="500" align="center" id="myTable" padding="20px">
                     <c:forEach var="row" items="${rs.rows}">
                <tr  class="header">
                    <tr> <td ><b>EMail</b></td><td><input type="text" value="${row.email}" name="email"/></td> </tr>
                    <tr> <td ><b>FirstName</b></td> <td><input type="text" value="${row.firstName}" name="firstName"/></td></tr>
                    <tr><td ><b>LastName</b></td> <td><input type="text" value="${row.lastName}" name="lastName"/></td></tr>
                   <tr> <td  ><b>UserName</b></td><td><input type="text" value="${row.userName}" name="userName"/></td></tr>
               <tr> <td ><b>Password</b></td> <td><input type="text" value="${row.passwd}" name="passwd"/></td></tr>
                 
                <tr>  <td><b>Gender</b></td><td><input type="text" value="${row.gender}" name="gender"/></td></tr>
              <tr>  <td ><b>Experience</b></td><td><input type="text" value="${row.experience}" name="experience"/></td></tr>
              <tr>  <td ><b>Prefered Industry</b></td> <td><input type="text" value="${row.industry}" name="industry"/></td></tr>
              <tr>  <td ><b>Key Skills</b></td> <td><input type="text" value="${row.keySkills}" name="keySkills"/></td></tr>
              <tr>  <td  ><b>Actions</b></td> <td><input type="submit" value="Update"/></td></tr>
                </tr>
               
                </c:forEach>
                </table>
                    <%
                        if(request.getParameter("email")==null){
                            out.println("email is empty");
                        }
                        %>

        </form>
         
    </body>
</html>
