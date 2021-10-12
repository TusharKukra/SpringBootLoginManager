<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html >
<html>
<head>
<title>Product Management Tool</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
body{
display: inline;
margin: 0px ;
font-weight:400;
font-family: Arial, Helvetica, sans-serif;
}
table,th,td{
  border:1px solid black ;
  border-collapse:collapse ;
  text-align: center ;
}
#tb{
margin-left:18px;
}

img{
margin:5px;
}
#hiddenDiv{
position: fixed;
display:none ;
top:33% ;
left:45% ;
background-color: white ;
}
#overlay{
width: 100% ;
height: 100% ;
background-color: grey ;
opacity:0.7 ;
position: fixed;
display:none ;
}
table
{
margin-left:18px;
}
legend {
     margin: auto;
}

#abc1{
margin-left:220px;
width:200px;
border-radius:2px;
}
#abc2{
margin-left:255px;
width:200px;
border-radius:2px;
}
#abc3{
margin-left:246px;
width:200px;
border-radius:2px;
}
#abc4{
margin-left:226px;
width:200px;
border-radius:2px;
}


.btn{
    margin : 10px;
    margin-left:35px;
}

label
{
margin-left:50px;
}
</style>
</head>
<body>
<div id ="overlay"></div>
<div id="hiddenDiv" >
<form id= "changeImgNameForm" method="post" action="ImageEdit" >
<fieldset>
<legend >Change Image Name</legend>
<label>Enter Name :  <Input name="name" required></label><br><br>
<input type="submit">
</fieldset>
</form>
</div>
<div>
<form action="logout" >
<div style="border-bottom: solid 0px black">
	<div style="float: right;margin-right: 40px;">
	Hi ${userName} &nbsp<input type = "submit" value = "Logout"  >
	</div>
</div>
</form>
<center><h1>Add Book Details</h1></center></div><br>
<div id="tb">

<form >
<label>Book Code</label><input type="text" id="abc1" name="code"><br><br>
<label>Name</label><input type="text" id="abc2" name="name"><br><br>
<label>Author</label><input type="text" id="abc3" name="author"><br><br>
<label>Added On</label><input type="text" id="abc4" name="date" ><br><br>
 <div class="buttn1">
                        <!--Button -->
                        <div class="col-auto">
                            <input  type="submit"  class="btn btn-info" value="Submit" />
                             <input type="button" class="btn btn-danger" onclick="fun()" value="Cancel" />
                        </div>
                    </div>
</form>
</div>



<script>
function fun()
{
	window.location="welcome";
	
}
</script>


<script src="\WEB-INF\pages\index.js" type="text/javascript"></script>

</body>
</html>