<!DOCTYPE html>

<html>
<head>
	<title>Docter List</title>
</head>
<body>

<h3>Welcome :${username }        <a href="login">logout</a></h3>



	
		<label>Patient:</label>
		<input type="text" name="patient" id="patient">
		<input type="submit" name="btnSearch" id="btnAddNewPatient" value="Add New Docter" >

		
		<form:form action="#" method="post" modelAttribute="docter">  
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

	


</body>
</html>