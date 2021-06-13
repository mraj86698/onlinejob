<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Jobs</title>
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

.table {
  border-collapse: collapse; /* Collapse borders */
  width: 100%; /* Full-width */
  border: 1px solid #ddd; /* Add a grey border */
  font-size: 18px; /* Increase font-size */
}

.table th, .table td {
  text-align: left; /* Left-align text */
  padding: 12px; /* Add padding */
}

.table tr {
  /* Add a bottom border to all table rows */
  border-bottom: 1px solid #ddd; 
}

.table tr.header, .table tr:hover {
  /* Add a grey background color to the table header and on hover */
  background-color: #f1f1f1;
}
    




body{
	margin:0;
	padding:20px;
	font-family: sans-serif;
}

*{
	box-sizing: border-box;
}

.table{
	width: 100%;
	border-collapse: collapse;
}

.table td,.table th{
  padding:12px 15px;
  border:1px solid #ddd;
  text-align: center;
  font-size:16px;
}

.table th{
	background-color: darkblue;
	color:#ffffff;
}

.table tbody tr:nth-child(even){
	background-color: #f5f5f5;
}

/*responsive*/

@media(max-width: 500px){
	.table thead{
		display: none;
	}

	.table, .table tbody, .table tr, .table td{
		display: block;
		width: 100%;
	}
	.table tr{
		margin-bottom:15px;
	}
	.table td{
		text-align: right;
		padding-left: 50%;
		text-align: right;
		position: relative;
	}
	.table td::before{
		content: attr(data-label);
		position: absolute;
		left:0;
		width: 50%;
		padding-left:15px;
		font-size:15px;
		font-weight: bold;
		text-align: left;
	}
}








        </style>
        <script >
function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[6];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}

function select(){
}
</script>
    </head>
    <body bgcolor="aqua">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/skillmap" user="root" password="" />
        <sql:query var="rs" dataSource="${ds}">
            select * from jobpost;
        </sql:query>
            <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Skills..">
            <table border="1" width="500" align="center" class="table">
                <!--<tr  class="header">-->
                <thead>
                    <th style="width:60%;" ><b>Job Id</b></th>
                    <th style="width:60%;" ><b>Job Post</b></th>
                    <th style="width:60%;" ><b>Location</b></th>
                <th style="width:60%;" ><b>Functional Area</b></th>
                 
                  <th style="width:60%;" ><b>Phone Number</b></th>
                <th style="width:60%;" ><b>Vacancy</b></th>
                <th style="width:60%;" ><b>Skills</b></th>
                <th style="width:60%;" ><b>Salary</b></th>
                <th style="width:60%;" ><b>Interview Date</b></th>
                <th style="width:60%;" ><b>Interview Time</b></th>
                 <th style="width:60%;" ><b>Interview Place</b></th>
                 <th style="width:60%;" ><b>Email</b></th>
                <th style="width:60%;" ><b>Actions</b></th>
<!--                </tr>-->
                </thead>
                
      <c:forEach var="row" items="${rs.rows}">
          <!-- set session for staff id here -->
          <c:set var="sid" scope="application" value="${row.jobid}" /> 
         <tbody>
           <tr>  <td data-label="jobid"><c:out value="${row.jobid}" /></td>
               <td data-label="jobpost"> <c:out value="${row.job}" /></td>
               <td data-label="loc"><c:out value="${row.loc}" /></td>
          <td data-label="area"> <c:out value="${row.area}" /></td>
           
            <td data-label="phone"> <c:out value="${row.phone}" /></td>
            <td data-label="vac"> <c:out value="${row.vac}" /></td>
           <td data-label="skill"> <c:out value="${row.skill}" /></td>
           <td data-label="sal"> <c:out value="${row.sal}" /></td>
           <td data-label="ivdt"> <c:out value="${row.ivdt}" /></td>
           <td data-label="ivt"> <c:out value="${row.ivt}" /></td>
           <td data-label="ivp"> <c:out value="${row.ivp}" /></td>
           <td data-label="mail"> <c:out value="${row.mail}" /></td>
           <td ><a href="editJobs.jsp?id=<c:out value="${row.jobid}"/>">Edit</a>
           <a href="deleteJobs.jsp?id=<c:out value="${row.jobid}"/>">Delete</a></td></tr>
    </c:forEach>
         </tbody>       
        </table>
            
        <a href="CompanyHomePage.jsp"> Home page</a>
    </body>
</html>
