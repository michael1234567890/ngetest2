<%@include file = "../helper/connect.jsp"%>
<html>
<head>
	<title>Update Product</title>
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
		.button_update{
			border:0;
			padding:0.5em 2em;
			border-radius: 0.2em;
			color:white;
			background-color: green;
		}
		.button_delete{
			border:0;
			padding:0.5em 2em;
			border-radius: 0.2em;
			color:white;
			background-color: red;
		}
		a{
			text-decoration: none;
		}
		.insert_table>form>table{
			margin:0px auto;
		}
		.table_container{
			width:80%;
			height:auto;
			margin:0px auto;
		}
	</style>
</head>
<body>
	<div>
		<h3>Update product</h3>
	</div>
	<%
		int id= Integer.parseInt(request.getParameter("id"));
		String query="Select * from product_list where productId = "+id;
		System.out.print(query);
		ResultSet rs = st.executeQuery(query);
		rs.next();
	%>
	<div class="table_container">
		<div class = "insert_table">
			<form action = "Controller/forUpdateproduct.jsp" method = "post">
				<table>
					<tr>
						<td colspan = "3"><input type = "text" name = "id" value = "<%=rs.getString(1)%>" hidden></td>
					</tr>
					<tr>
						<td>Name</td>
						<td>:</td>
						<td><input type = "text" name = "name" placeholder = "<%=rs.getString(2)%>"></td>
					</tr>
					<tr>
						<td>Price</td>
						<td>:</td>
						<td><input type = "text" name = "price" placeholder = "<%=rs.getString(3)%>"></td>
					</tr>
					<tr>
						<td>Weight</td>
						<td>:</td>
						<td><input type = "text" name = "weight" placeholder = "<%=rs.getString(4)%>"></td>
					</tr>
					<tr>
						<td>Stock</td>
						<td>:</td>
						<td><input type = "text" name = "stock" placeholder = "<%=rs.getString(5)%>"></td>
					</tr>
					<tr>
						<td>Photo</td>
						<td>:</td>
						<td><input type = "file" name = "photo" placeholder = "<%=rs.getString(7)%>"></td>
					</tr>
					<tr>
						<td colspan = "3"style = "text-align:center">
							<input type = "submit" value = "Update Product">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
