<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<title>ログイン画面</title>


		<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js" type="text/javascript"></script>

		<style type="text/css">
			.{ }

			.form
			{
				margin:0;
			}

			.LABEL
			{
				color:red;
				margin:0 auto;
				display:block;
				text-align:center;
			}

			body {
				/* background-color:#C0C0C0; */
				margin:0;
			}

			.BACKGROUND
			{
				background-color:WHITE;
				width:1012px;
				min-height:100%;
				margin:0 auto;
			}


			.TEXTBOX
			{
				width:100%;
				height:30px;
				margin-bottom:5px;
				border-color:#69A4D8;
				border:2px #69A4D8 solid;
				border-radius:5px;
			}



			.LEFT
			{
				float:left;
			}

			.RIGHT
			{
				float:right;
			}

			.BUTTON
			{
				background-color:#69A4D8;
				border:2px #69A4D8 solid;
		        width:100%;
				color:#fff;
				border-radius:5px;
			}

			.TEXTAREA
			{
				resize:none;
				width:500px;
				height:250px;
				margin:0 auto;
				display:block;
		        border-color:#69A4D8;
			}

			.CONTAINER1
			{
				padding-top:100px;
				width:100%
			}

			.CONTAINER2
			{
				width:250px;
				margin:0 auto;
			}

			.CONTAINER3{
				width:100%;
			}

			.CHECKBOX{
			}

			#h2{
				display:none;
			}


		</style>

	</head>
	<body>
		<h1>Success!!!!!!!!</h1>
		<div class="col-xs-6">
			<input type="button" class="BUTTON" value="戻る" style="width:180px;" onclick="location.href='/OfficeSystem_Hibernate/Login'">
		</div>
	</body>
</html>