<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<%@page import="model.registration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

*{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    box-sizing: border-box;
}

.banner video{
    position: fixed;
    right: 0;
    bottom: 0;
    z-index: -1;
}
@media(min-aspect-ratio: 16/9){
    .banner video{
        width: 100%;
        height: auto;
    }
}
body {
	margin: 0;
	color: black;
	font: 600 16px/18px ;
	background-size: cover;
    background-position: center;
/*    background-image:url(https://static.vecteezy.com/system/resources/previews/037/288/559/non_2x/ai-generated-palm-leaf-isolated-on-sunny-blue-rippled-water-surface-summer-beach-holidays-background-concept-with-copy-space-photo.jpg) ;   
 */}
*{
    font-family:'Times New Roman', Times, serif;
   }
.login-box {
border-radius: 0px 50% ;
	width: 100%;
	margin: 10px;
	max-width: 480px;
	min-height: 500px;
	position: relative;
	box-shadow: 0px 0px 10px 10px rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
	backdrop-filter: blur(15px);
}

.login-snip {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 50px 70px 50px 70px;
}

.login-snip .login, .login-snip .sign-up-form {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(180deg);
	backface-visibility: hidden;
	transition: all .4s linear;
}

.login-snip .sign-in, .login-snip .sign-up, .login-space .group .check {
	display: none;
}

.login-snip .tab, .login-space .group .label, .login-space .group .button
	{
	text-transform: uppercase;
}

.login-snip .tab {
	font-size: 22px;
	margin-right: 15px;
	padding-bottom: 5px;
	margin: 0 15px 10px 0;
	display: inline-block;
	border-bottom: 2px solid transparent;
}

.login-snip .sign-in:checked+.tab, .login-snip .sign-up:checked+.tab {
	color: #fff;
	border-color: #1161ee;
}

.login-space {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-space .group {
	margin-bottom: 15px;
}

.login-space .group .label, .login-space .group .input, .login-space .group .button
	{
	width: 100%;
	color: black;
	font-weight: bold;
	display: block;
}

.login-space .group .input, .login-space .group .button {
	border: none;
	padding: 15px 20px;
	border-radius: 25px;
	background: rgba(255, 255, 255, .1);
}

.login-space .group input[data-type="password"] {
	text-security: circle;
	-webkit-text-security: circle;
}

.login-space .group .label {
	color: #fff;
	font-size: 12px;
}

.login-space .group .button {
	background: #1161ee;
}

.login-space .group label .icon {
	width: 15px;
	height: 15px;
	border-radius: 2px;
	position: relative;
	display: inline-block;
	background: rgba(255, 255, 255, .1);
}

.login-space .group label .icon:before, .login-space .group label .icon:after
	{
	content: '';
	width: 10px;
	height: 2px;
	background: #fff;
	position: absolute;
	transition: all .2s ease-in-out 0s;
}

.login-space .group label .icon:before {
	left: 3px;
	width: 5px;
	bottom: 6px;
	transform: scale(0) rotate(0);
}

.login-space .group label .icon:after {
	top: 6px;
	right: 0;
	transform: scale(0) rotate(0);
}

.login-space .group .check:checked+label {
	color: #fff;
}

.login-space .group .check:checked+label .icon {
	background: #1161ee;
}

.login-space .group .check:checked+label .icon:before {
	transform: scale(1) rotate(45deg);
}

.login-space .group .check:checked+label .icon:after {
	transform: scale(1) rotate(-45deg);
}

.login-snip .sign-in:checked+.tab+.sign-up+.tab+.login-space .login {
	transform: rotate(0);
}

.login-snip .sign-up:checked+.tab+.login-space .sign-up-form {
	transform: rotate(0);
}

.button {
	border-radius:30px;
	padding:10px;
	width:150px;
	border:none;
}
.button:hover{
border:2px solid black;
}

*, :after, :before {
	box-sizing: border-box
}

.clearfix:after, .clearfix:before {
	content: '';
	display: table
}

.clearfix:after {
	clear: both;
	display: block
}

a {
	color: inherit;
	text-decoration: none
}

.hr {
	height: 2px;
	margin: 60px 0 50px 0;
	background: black;
}

.foot {
	text-align: center;
}

.card {
	width: 500px;
	left: 100px;
}

::placeholder {
	color: black;
}

.error {
	color: red;
}

input {
	display: block;
}

#msg {
	color: green;
	width: 75%;
	font-size: 18px;
	font-family: sans-serif;
	padding: 5px;
}
</style>
<script>
<script>
//jQuery.validator.addMethod( name, method [, message ] )
//
//value---> "current value of the validated element".
//elememt---> " element to be validated ".
jQuery.validator.addMethod("checkemail", function (value, element) {
return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
});
jQuery(document).ready(function ($) {
$("#addevent").validate({image name cost details category
rules: {
image: {
required: true
},
name: {
required: true
},
cost: {
required: true
},
details: {
required: true
},
category: {
required: true
}
},
messages: {
image: {
required: "Please add event image"
},
name: {
required: "Please enter event name."
},
cost: {
required: "Please enter event cost."
},
details: {
required: "Please enter event details"
},
category: {
required: "Please enter event category"
}
}
});
});
</script>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="banner">
	<video autoplay loop muted>
                <source src="https://videos.pexels.com/video-files/11918060/11918060-sd_640_360_25fps.mp4" type="video/mp4">
            </video>
    </div>
	<center>
		<form method="POST" id="login" action="register">
			<%
			if (session.getAttribute("uname") != null) {
			%>
			<div class="row">
				<div class="col-md-6 mx-auto p-0">
					<div class="card">
						<div class="login-box">
							<div class="login-snip">
								<%
								if (request.getAttribute("status") != null) {
								%>
								<div id="msg">
									<%=request.getAttribute("status")%></div>
								<%
								}
								%>
								<br /> <input id="tab-1" type="radio" name="tab" class="sign-in"
									checked><label for="tab-1" class="tab">Add</label> <input
									id="tab-2" type="radio" name="tab" class="sign-up"><label
									for="tab-2" class="tab">Delete</label>
								<div class="login-space">
									<div class="login">
										<br>
										<div class="group">
											<label for="user" class="label">Party Hall Name</label> <input
												id="user" type="text" name="phname" class="input"
												placeholder="Enter Party Hall Name">
										</div>
										<div class="group">
											<label for="user" class="label">Party Hall Address</label> <input
												id="user" type="text" name="phadd" class="input"
												placeholder="Enter Party Hall Address">
										</div>
										
											<input type="submit" class="button" name="addloc" value="Add">
									</div>
									
									<div class="sign-up-form">
										<div class="group">
										<br>
											<label for="user" class="label">Party Hall Name</label> <input
												id="user" type="text" class="input" name="rphname"
												placeholder="Enter Party Hall Name">
										</div>								
											<input type="submit" class="button" name="delloc" value="Delete">										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<%}%>
	</center>
</body>
</html>