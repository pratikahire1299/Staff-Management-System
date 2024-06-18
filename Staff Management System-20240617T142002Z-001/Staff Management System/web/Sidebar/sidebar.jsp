<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
                                       <meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
                    
                       <style type="text/css">
                           #head_bar{
    background-color:darkblue;
    box-sizing: border-box;
    height:40px;
    padding-bottom:20px;
}
.navi .active a {
    border-left: 5px solid #5584ff;
    padding-left: 15px;
}
.circle-tile {
    margin-bottom: 15px;
    text-align: center;
}
.circle-tile-heading {
    border: 3px solid rgba(255, 255, 255, 0.3);
    border-radius: 100%;
    color: #FFFFFF;
    height: 80px;
    margin: 0 auto -40px;
    position: relative;
    transition: all 0.3s ease-in-out 0s;
    width: 80px;
}
.circle-tile-heading .fa {
    line-height: 80px;
}
.circle-tile-content {  
    padding-top: 50px;
}
.circle-tile-number {
    font-size: 26px;
    font-weight: 700;
    line-height: 1;
    padding: 5px 0 15px;
}
.circle-tile-description {
    text-transform: uppercase;
}
.circle-tile-footer {
    background-color: rgba(0, 0, 0, 0.1);
    color: rgba(255, 255, 255, 0.5);
    display: block;
    padding: 5px;
    transition: all 0.3s ease-in-out 0s;
}
.circle-tile-footer:hover {
    background-color: rgba(0, 0, 0, 0.2);
    color: rgba(255, 255, 255, 0.5);
    text-decoration: none;
}
.circle-tile-heading.dark-blue:hover {
    background-color: #2E4154;
}
.circle-tile-heading.green:hover {
    background-color: #138F77;
}
.circle-tile-heading.orange:hover {
    background-color: #DA8C10;
}
.circle-tile-heading.blue:hover {
    background-color: #2473A6;
}
.circle-tile-heading.red:hover {
    background-color: #CF4435;
}
.circle-tile-heading.purple:hover {
    background-color: #7F3D9B;
}
.tile-img {
    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.9);
}

.dark-blue {
    background-color: #34495E;
}
.green {
    background-color: #16A085;
}
.blue {
    background-color: #2980B9;
}
.orange {
    background-color: #F39C12;
}
.red {
    background-color: #E74C3C;
}
.purple {
    background-color: #8E44AD;
}
.dark-gray {
    background-color: #7F8C8D;
}
.gray {
    background-color: #95A5A6;
}
.light-gray {
    background-color: #BDC3C7;
}
.yellow {
    background-color: #F1C40F;
}
.text-dark-blue {
    color: #34495E;
}
.text-green {
    color: #16A085;
}
.text-blue {
    color: #2980B9;
}
.text-orange {
    color: #F39C12;
}
.text-red {
    color: #E74C3C;
}
.text-purple {
    color: #8E44AD;
}
.text-faded {
    color: rgba(255, 255, 255, 0.7);
}

.navi a:hover {

    border-left: 5px solid #5584ff;
    display: block;
    padding-left: 15px;
}
.navi a {
    border-bottom: 1px solid #0d172e;
    border-top: 1px solid #0d172e;
    color: #ffffff;
    display: block;
  
    font-weight: 400;
    padding: 22px 14px;
    text-decoration: none;
}

.circle-logo {
    margin: 0 auto;
    max-width: 30px !important;
    text-align: center;
}
.hidden-xs{
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

                       </style>
    </head>
    <body>
                    <div class="col-lg-3 navi" style="background-color:black; display:block; height:100%;">
                        <ul class="nav nav-pills nav-stacked">
                            <li align="center"><img src="images/Employee.png" height="140px" width="140px" class="center-block"></li>
                            <li><a href="admindashboard.jsp" style="color:white; font-size:20px;"><span class="glyphicon glyphicon-home" aria-hidden="true" style="margin-right:10px;"></span>Home</a></li>
                            <li class="dropdown"><a data-toggle="collapse"  href="#collapse1"  style="color:white; font-size:20px;"><span class="glyphicon glyphicon-th-list" style="margin-right:10px;"></span>Departments<span class="glyphicon glyphicon-collapse-down pull-right" style="margin-left:10px;"></span></a>
                                <ul id="collapse1" style="list-style-type:none; font-size:14px;">
                                    <li><a href="staffinfo.jsp?deno=1"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Computer Technology</a></li>
                                    <li><a href="staffinfo.jsp?deno=2"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Information Technology</a></li>
                                    <li><a href="staffinfo.jsp?deno=3"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Electronics and Telecommunication(1st Shift)</a></li>
                                    <li><a href="staffinfo.jsp?deno=4"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Electronics and Telecommunication(2nd Shift)</a></li>
                                    <li><a href="staffinfo.jsp?deno=5"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Plastic Engineering</a></li>
                                    <li><a href="staffinfo.jsp?deno=6"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Electrical Engineering</a></li>
                                    <li><a href="staffinfo.jsp?deno=7"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Mechanical Engineering(1st Shift)</a></li>
                                    <li><a href="staffinfo.jsp?deno=8"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Mechanical Engineering(2st Shift)</a></li>
                                    <li><a href="staffinfo.jsp?deno=9"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Civil Engineering(1st Shift)</a></li>
                                    <li><a href="staffinfo.jsp?deno=10"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Civil Engineering(2st Shift)</a></li>
                                    <li><a href="staffinfo.jsp?deno=11"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Automobile Engineering</a></li>                                    
                                    <li><a href="staffinfo.jsp?deno=12"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Dress Designing and Garments Manufacturing</a></li>
                                    <li><a href="staffinfo.jsp?deno=13"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Interior Designing and Decoration</a></li>
                                </ul>
                            </li>
                            <li><a href="newuser.jsp"  style="color:white; font-size:20px;"><i class="fa fa-user-plus" style="margin-right:10px;"></i>Add a New</a></li>
                            <li><a href="logout.jsp"  style="color:white;">Logout</a>  </li>
                           </ul>
                </div>
    </body>
</html>
