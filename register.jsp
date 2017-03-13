<html>
<head>
	<title>Register BlueJack Store</title>
	<link rel="stylesheet" type="text/css" href="modif1.css">
	<style>
		body{
			background-color:white;
			color:#33B5E5;
		}
		.container{
			box-shadow:10px 10px 25px black;
			margin: 0 auto;
			width:40%;
			border:1px;
			background-color:#2196f3;
			padding:15px;
			margin-top: 20px;
		}
		.container td{
			color: white;
		}
		input[type=text], input[type=password]{
			border-style:solid;
			border-color:#E8E8E8;
			width:20vw;
			height:5vh;
			padding:5px;
			float: right;
		}
		.buttonContainer{
			padding-top: 1em;
			text-align:center;
		}
		input[type=submit]{
			width:20vw;
			height:5vh;
			display:inline-block;
			color:#2196f3;
			background-color:white;
			border:none;
			font-size:17px;
			font-weight:bold;
			padding:5px;
		}
		
		h1{
			text-decoration: underline;
			color: white;
		}
		.inputs{
			padding-bottom:0em;
		}
		
	
	</style>
</head>
<body>

	<div id="navmain">
<p><a href="index.jsp">HOME</a></p>
<ul>
<li><a href="register.jsp">REGISTER</a></li>
<li><a href="login.jsp">LOGIN</a></li>
</ul>
</div>

	<div class="container"><br>
		<center>
		<h1>Register</h1><br><br>
		<form action="Controller/forRegister.jsp" method="POST">
			<table align="center">
				<tr>
					<td class="inputs">Fullname 		 <input type="text" name="fullname" placeholder="Fullname"/></td>
				</tr>
				<tr>
					<td class="inputs">Phone 			 <input type="text" name="phone" placeholder="Phone"/></td>
						
				</tr>
				<tr>
					<td class="inputs">Email 			 <input type="text" name="email" placeholder="Email"/></td>
				</tr>
				<tr>
					<td class="inputs">Password 		 <input type="password" name="pass" placeholder="Password"/></td>
				</tr>
				<tr>
					<td class="inputs">Confirm Password  <input type="password" name="conpass" placeholder="Confirm Password"/></td>
				</tr>
				<tr>
					<td class="inputs">Gender 
						<input type="radio" name="gender" value="male"> Male
						<input type="radio" name="gender" value="female"> Female
					</td>
				</tr>
				<tr>
					<td class="inputs">Date 			 <input type="text" name="date" placeholder="yyyy/MM/dd"/></td>
				</tr>
				<tr>
					<td class="inputs">Address 			 <input type="text" name="address" placeholder="Address"/></td>
				</tr>
				<tr>
					<td>Photo  <input type="file" name="fileupload" value="fileupload" id="fileupload"></td>
				</tr>
		
				<tr style>
					<td><br><%
					if(request.getParameter("error")!=null){
					out.print(request.getParameter("error"));
				}
					%></td>
				</tr>
				<tr>
					<td class="buttonContainer"><input type="submit" value="Register"/></td>
				</tr>
		</table>
		</form>
		</center>
	</div>

	<div id="footer">
	<h2>2016&copy;PT Bluejack Store 16.1</h2>
	</div>

</body>
</html>