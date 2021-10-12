<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<style>
fieldset
{
border-radius:6px ;
}

form input{
float:right;
margin-right:20px;
}


div

{	
	width:380px;
	position:fixed;
	top:25%;
	left:calc(45% - 150px);


}
legend
{
color:blue;
}

body
{
font-weight:normal;
 font-family: Arial, Helvetica, sans-serif;
}
#loginSubmitBtn
{
margin-right:115px;
border-radius:3.6px;

}
/*
header {
    background-color: #47d7ac;
    padding: 10px;
        color: #fff;
    text-align: center;
    font-size: 20px;
    border: 1px solid black;
}

*/
</style>
<body>
<div>
	<fieldset>
	<legend>Login</legend>
		<form  action="validate" method="post">
			<label for="userId">User Id :</label><input type="text" min="5" max="50" id="userId" name="userId" required><br><br>
			<label for="password">Password :</label><input type="password"  min="5" id="password" max="50" name="password" required><br><br>
			<button type="submit"  class="btn btn-default">Login</button>
		</form>
	</fieldset>
</div>
</body>
</html>