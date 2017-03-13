<%@include file = "../helper/connect.jsp"%>
<html>
<head>
	<title>Profile BlueJack Store</title>
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
			margin-top: 5px;
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

<%
		String id =(String) session.getAttribute("User") ;
		ResultSet rs = st.executeQuery("select * from user_member where email_member='"+id+"'");
		rs.next();

%>

<div id="navmain">
<p><a href="login_member.jsp">HOME</a></p>
<p><a href="product.jsp">PRODUCT</a></p>
<p><a href="member.jsp">MEMBER</a></p>
<p><a href="#">TRANSACTION</a></p>
<ul>
<li><a href="profile.jsp">PROFILE</a></li>
<li><a href="Controller/forLogout.jsp">LOGOUT</a></li>
</ul>
</div>

	<div class="container"><br>
		<center>
		<h1>Profile</h1><br><br>
		<form>
			<table align="center">
				<center><img src="<%=rs.getString(9)%>" width="248px" height="120tx"></center><br>
				<tr>
					<td class="inputs">Fullname 		 <input type="text" name="fullname" placeholder="<%=rs.getString(2)%>"/></td>
				</tr>
				<tr>
					<td class="inputs">Phone 			 <input type="text" name="phone" placeholder="<%=rs.getString(3)%>"/></td>
						
				</tr>
				<tr>
					<td class="inputs">Email 			 <input type="text" name="email" placeholder="<%=rs.getString(4)%>"/></td>
				</tr>
				<tr>
					<td class="inputs">Gender 			 <input type="text" name="gender" placeholder="<%=rs.getString(6)%>"/></td>
				</tr>
				<tr>
					<td class="inputs">DOB 			 	<input type="text" name="dob" placeholder="<%=rs.getString(7)%>"/></td>
				</tr>
				<tr>
					<td class="inputs">Address 			 <input type="text" name="address" placeholder="<%=rs.getString(8)%>"/></td>
				</tr>
		
						<tr>
					<td class="buttonContainer"><input type="submit" value="Update Profile"/></td>
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