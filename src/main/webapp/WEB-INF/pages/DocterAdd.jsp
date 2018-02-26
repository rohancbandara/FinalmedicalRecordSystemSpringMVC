<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <script src='static/js/jquery.js'></script>
  <script  src="static/js/addDocter.js"></script>
	<title>Add Docter</title>
</head>
<body>

<h3>Welcome :${username }        <a href="login">logout</a></h3>



<h2>Add Docter</h2>
<h3>Basic Info</h3>
		 
		 
		 <form:form action="saveDocter" method="post" modelAttribute="docter">  
        <table>
            <form:hidden path="dId"/>
            <tr>
                <td>Email:</td>
                <td><form:input path="dEmail" id="txtEmail" /></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><form:input path="dFname" id="txtFname" /></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><form:input path="dLname" id="txtLname"/></td>
            </tr>
            <tr>
                <td>Special:</td>
                <td>
                <form:select path="dSpecile"  id="special" >
				<option value="Special 1">-Special 1-</option>
				<option value="Special 2">-Special 2-</option>
				<option value="Special 3">-Special 3-</option>
				<option value="Special 4">-Special 4-</option>
			    </form:select></td>
            </tr>
            <tr>
                <td ><input type="submit"  value="Save" ></td> 
                 
            </tr>
        </table>
         </form:form> 




</body>
</html>