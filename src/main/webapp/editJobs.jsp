<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee</title>
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
}</style>

    </head>
    <body bgcolor="aqua">
         <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/skillmap" user="root" password="" />
         <sql:query dataSource="${ds}" var="rs">select * from jobpost where jobid=?;
             <sql:param value="${param.id}" />
         </sql:query>
         
          <form action="updateJobs.jsp" method="post">
            
                <!--<caption>Update jobs</caption>-->
                <table border="1" width="500" align="center" id="myTable">
                <tr  class="header">
                    <c:forEach var="row" items="${rs.rows}">
                        <tr><th>UPDATE JOBS</th></tr>
                   <tr> <td style="width:60%;" ><b>Job Id</b></td><td><input type="text" value="${row.jobid}" name="jobid"/></td> </tr>
                   <tr> <td style="width:60%;" ><b>Job Post</b></td> <td><input type="text" value="${row.job}" name="job"/></td></tr>
                 <tr>   <td style="width:60%;" ><b>Location</b></td> <td><input type="text" value="${row.loc}" name="loc"/></td></tr>
               <tr> <td style="width:60%;" ><b>Functional Area</b></td><td><input type="text" value="${row.area}" name="area"/></td></tr>
                 
               <tr>   <td style="width:60%;" ><b>Phone Number</b></td><td><input type="text" value="${row.phone}" name="phone"/></td></tr>
              <tr>  <td style="width:60%;" ><b>Vacancy</b></td>  <td><input type="text" value="${row.vac}" name="vac"/></td></tr>
              <tr>  <td style="width:60%;" ><b>Skills</b></td><td><input type="text" value="${row.skill}" name="skill"/></td></tr>
              <tr>  <td style="width:60%;" ><b>Salary</b></td><td><input type="text" value="${row.sal}" name="sal"/></td></tr>
              <tr>  <td style="width:60%;" ><b>Interview Date</b></td><td><input type="text" value="${row.ivdt}" name="ivdt"/></td></tr>
               <tr> <td style="width:60%;" ><b>Interview Time</b></td> <td><input type="text" value="${row.ivt}" name="ivt"/></td></tr>
               <tr>  <td style="width:60%;" ><b>Interview Place</b></td> <td><input type="text" value="${row.ivp}" name="ivp"/></td></tr>
               <tr>  <td style="width:60%;" ><b>Email</b></td>  <td><input type="text" value="${row.mail}" name="mail"/></td></tr>
               <tr> <td style="width:60%;" ><b>Actions</b></td><td><input type="submit" value="Update"/></td></tr>
                </tr>
                
                    <tr>
                         
                    
                   
                     
                   
                    
                  
                    
                    
                    
                   
                    
                    
                   
                    </tr>
                </c:forEach>
                </table>
                    <%
                        if(request.getParameter("id")==null){
                            out.println("id is empty");
                        }
                        %>
            <a href="CompanyHomePage.jsp"> HomePage</a>
            <a href="viewJobs.jsp">View Jobs</a>
        </form>
         
    </body>
</html>
