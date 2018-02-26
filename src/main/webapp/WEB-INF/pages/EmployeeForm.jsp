<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src='static/js/jquery.js'></script>
  <script  src="static/js/employeeRegister.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Employee</h1>
         <form:form action="saveEmployee" method="post" modelAttribute="employee">  
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" id="txtName" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" id="txtEmail" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="address" id="txtAdd"/></td>
            </tr>
            <tr>
                <td>Telephone:</td>
                <td><form:input path="telephone"  id="txtTel"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save" ></td> 
               
                
                <button onclick="clearFileds()">Clear</button>
            </tr>
        </table>
         </form:form> 
    </div>
</body>
</html>