<html>
<head>
	<title>Login BlueJack Store</title>
	<link rel="stylesheet" type="text/css" href="modif1.css">
	<style>
		body{
			background-color:white;
			color:#33B5E5;
		}
		.container{
			box-shadow:10px 10px 25px black;
			margin: 0 auto;
			width:25%;
			border:1px;
			background-color:#2196f3;
			padding:15px;
			margin-top: 50px;
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
		.remember{
			color: white;
		}
		.question{
			float: right;
			font-size: 14px;
			padding-top: 3em;
		}
		.question a{
			color: white;
		}
		h1{
			text-decoration: underline;
			color: white;
		}
		.inputs{
			padding-bottom:1em;
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
		<h1>Login</h1><br><br>
		<form action="Controller/forLogin.jsp" method="POST">
			<table align="center">
				<tr>
					<td class="inputs"><input type="text" name="email" placeholder="Email"/></td>
				</tr>
				<tr>
					<td class="inputs"><input type="password" name="password" placeholder="Password"/></td>
				</tr>
				<tr>
					<td class="remember"><input type="checkbox" name="rememberme">  Remember me</td>
				</tr>
				<tr>
					<td><br><%
					if(request.getParameter("error")!=null){
					out.print(request.getParameter("error"));
				}
					%></td>
				</tr>
				<tr>
					<td class="question"><a href="register.jsp">Dont have an account? Register Here!</a></td>
				</tr>
	
				<tr>
					<td class="buttonContainer"><input type="submit" value="Login"/></td>
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