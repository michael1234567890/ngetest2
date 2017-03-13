<%@include file = "../helper/connect.jsp"%>
<html>
<head>
	<title>Member BlueJack Store</title>
	<link rel="stylesheet" type="text/css" href="modif1.css">
	<style type="text/css">
		ul{
			list-style: none;
		}
		.product_table{
			border:solid 1px black;
			max-width: 250px;
		}
		.product_td{
			padding:0.5em;
			border-bottom: solid 1px rgb(0, 0, 128);
		}
		.product_block{
			padding:0;
		}
		.product_list{
			margin: 0px auto;
		}
		body{
			text-align:center;
		}
		.inline{
			display: inline-block;
			width: 250px;
			max-height: 250px;
			margin-bottom: 0.5em;
		}
		.add_cart{
			border:0;
			padding:0.5em 2em;
			border-radius: 0.2em;
			color:white;
			background-color: #2196f3;
			color: black;
		}
		.button_page{
			border:0;
			padding:0.5em 0.5em;
			border-radius: 0.2em;
			color:white;
			background-color: #2196f3;
		}
		a{
			text-decoration: none;
		}
		.quan{
			color: red;
		}
	</style>
</head>
<body>
	<%
		String query = "select * from user_member";

		String search = request.getParameter("search");

		String pages = request.getParameter("pages");
		int pageNum = (pages == null) ? 0 : Integer.parseInt(pages);

		int limit = 5;
		int offset = limit * pageNum;

		if(search != null){
			query += " where fullname_member like '%" + search + "%'";
		}

		if(page != null){
			query += " limit "+limit+" offset "+offset;
		}
		System.out.println(query);
		ResultSet rs = st.executeQuery(query);
	%>
		<div id="navmain">
<p><a href="login_member.jsp">HOME</a></p>
<p><a href="product_member.jsp">PRODUCT</a></p>
<p><a href="member.jsp">MEMBER</a></p>
<p><a href="#">TRANSACTION</a></p>
<ul>
<li><a href="#">CART</a></li>
<li><a href="profile.jsp">PROFILE</a></li>
<li><a href="Controller/forLogout.jsp">LOGOUT</a></li>
</ul>
</div>

<div id="maincontent">
<br>
<h1>Product List</h1><br>
<form action="member.jsp" method="get">
<center><input type="text" name="search" placeholder="Search Member"><input type="submit" value="GO!!"></center><br>
</form>
</div>

<div class="wrapper">
<div class = "product_list">
		<ul>
			<%
				while(rs.next()){
			%>
			<li class = "inline">
				<div class = "product_table">
					<ul class = "product_block">
						<img src="<%=rs.getString(9)%>" width="248px" height="120tx" align="left">
						<li class = "product_td"><b><%=rs.getString(2)%></b></li>
						<li class = "product_td">Phone  :<%=rs.getString(3)%></li>
						<li class = "product_td">Email :<%=rs.getString(4)%></li>
						<li class = "product_td">Gender  :<%=rs.getString(6)%></li>
						<li class = "product_td">Dob :<%=rs.getString(7)%></li>
						<li class = "product_td">Address :<%=rs.getString(8)%></li>
					</ul>
				</div>
			</li>
			<%
				}
			%>
		</ul>
	</div>
</div>

<div id="pagenumber">
	<br><br><center>
		<%
			String query2 = "select count(productId) from product_list";
			ResultSet rs2 = stmt.executeQuery(query2);

			rs2.next();

			int pageCount = Integer.parseInt(rs2.getString(1));

			for(int i = 0; i < (pageCount / limit) + 1; i++){
		%>
			<a href="product.jsp?pages=<%=i%>">
				<button class="button_page"><%=(i+1)%></button>
			</a>
		<%
			}
		%>
		</center>
	</div>

<div id="footer">
	<h2>2016&copy;PT Bluejack Store 16.1</h2>
</div>


</body>
</html>