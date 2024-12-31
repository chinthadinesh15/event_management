<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.event"%>
<%@page import="model.location"%>
<%@page import="model.registration"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book an Event</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <style>
    
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
font-family: Serif;
	margin: 0;
	color: white;
	font: 600 16px/18px ;
	background-size: cover;
    background-position: center;
/*    background-image:url(https://static.vecteezy.com/system/resources/previews/037/288/559/non_2x/ai-generated-palm-leaf-isolated-on-sunny-blue-rippled-water-surface-summer-beach-holidays-background-concept-with-copy-space-photo.jpg) ;   
 */}
 .login-box {
/* border-radius: 0px 50% ; */
	width: 100%;
	 margin: 8px;
	max-width: 500px;
	min-height: 750px;
	position: relative;
	box-shadow: 0px 0px 10px 10px rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
	backdrop-filter: blur(15px);
}
        td input{
            display:block;
        }
       
        .errmsg{
            background: black;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
        }
        .error{   
            color:red;
        }
        .btn{
           border:1px solid white;
           border-radius:20px;
           color:white;
           }
           .btn:hover{
           border:2px solid white;
           color:rgb(125, 249, 255);	
           box-shadow: 0 0 5px rgb(125, 249, 255),
    					0 0 25px rgb(125, 249, 255),
    					0 0 50px rgb(125, 249, 255),
    					0 0 100px rgb(125, 249, 255);
           }

    </style>
    <script>
    $(function(){
        var dtToday = new Date();
     
        var month = dtToday.getMonth() + 1;
        var day = dtToday.getDate();
        var year = dtToday.getFullYear();
        if(month < 10)
            month = '0' + month.toString();
        if(day < 10)
         day = '0' + day.toString();
        var maxDate = year + '-' + month + '-' + day;
        $('#inputdate').attr('min', maxDate);
    });




        //            jQuery.validator.addMethod( name, method [, message ] )
//            
// value---> "current value of the validated element".
//elememt---> " element to be validated ".

        jQuery.validator.addMethod("checkemail", function (value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        });
        jQuery(document).ready(function ($) {
            $("#bookevent").validate({
                rules: {
                    name: {
                        required: true
                    },
                    email: {
                        required: true,
                        checkemail: true
                    },
                    pno: {
                        required: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    address: {
                        required: true
                    },
                    edate: {
                        required: true,
                    }
                },
                messages: {
                    name: {
                        required: "Please enter the name."
                    },
                    email: {
                        required: "Please enter the email.",
                        email: "Please enter valid email id"
                    },
                    pno: {
                        required: "Please enter the number.",
                        minlength: "Please enter the  10 digit number .",
                        maxlength: "more than 10 digits."
                    },
                    address: {
                        required: "Please select party hall .",
                    },
                    edate: {
                        required: "Please select the date.",
                    }
                }
            });
        });
    </script>
    <body>
        <%@include file="Header.jsp"%>
        <div class="banner">
	<video autoplay loop muted>
                <source src="https://videos.pexels.com/video-files/20203969/20203969-uhd_2560_1440_30fps.mp4">
            </video>
    </div>
    <center>
        <%
        if (request.getAttribute("status") != null) {
        %>
        <h1 class="errmsg"> <%=request.getAttribute("status")%></h1>
        <%
        }
        %>
        <br>
        <%
        if (session.getAttribute("uname") != null) {
                                registration reg = new registration(session);
                                event s = reg.getEventFormInfo(request.getParameter("event_id"));
                                ArrayList<location> mydata = reg.getlocinfo();
                		Iterator<location> itr = mydata.iterator();
        %>
        
        <form action='register' method='POST' id="bookevent">
            <div class="container">
                <div class="login-box">
                <font color: "light-blue" size="5"><br>
        <h2> Book an Event</h2>
        </font>
                    <div class="form-group col-md-6">
                        <label >Name</label>
                        <input  type="text" class="form-control"  name="name" value="<%=session.getAttribute("uname")%>">
                    </div>
                    <div class="form-group col-md-6">
                        <label >Phone Number</label>
                        <input type="number" class="form-control"  name="pno" value="<%=session.getAttribute("phone")%>">
                    </div>
                    <div class="form-group col-md-6">
                        <label >Email</label>
                        <input type="email" class="form-control"  name="email" value="<%=session.getAttribute("email")%>">
                    </div>
                    <div class="form-group col-md-6">
                        <label >Select Party_Hall</label>
                        <select id="qtn" name="address" class="form-control" >
                        <option value="">Select Party Hall</option>
                        <% while (itr.hasNext()) {
							location l = itr.next();
						%>
                        <option value="<%=l.getLoc_id()%>"><%=l.getPhname() %></option>
               			<%} %>
                      </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label >Event Name</label>
                        <input type="text" class="form-control"  name="ename" value="<%=s.getEvent_name()%>" readonly>
                    </div>
                    <div class="form-group col-md-6">
                        <label >Event cost</label>
                        <input type="number" class="form-control"  name="ecost" value="<%=s.getEvent_cost()%>" readonly>
                    </div>
                    <div class="form-group col-md-6">
                        <label >Date of Event</label>
                        <input type="date" class="form-control"  name="edate" value="" id="inputdate">
                    </div>
                    <input type="hidden" name="event_id" value="<%=request.getParameter("event_id")%>"> 
                    <button type="submit" class="btn" name="bookevent1">Book Now</button>
                </div>
           </div>
        </form>
        <%}%> 
    </center>

</body>
</html>