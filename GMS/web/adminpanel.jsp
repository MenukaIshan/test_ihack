<%-- 
    Document   : adminpanel
    Created on : Sep 5, 2015, 6:59:53 PM
    Author     : pivithuru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dashboard</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">



<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			
            <div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="adminpanel.jsp"><span>iHack</span>Admin</a>
			</div>
							
		</div>
        
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		
		<ul class="nav menu">
			<li class="active"><a href="adminpanel.jsp"><span class="glyphicon glyphicon-dashboard"></span> My Profile</a></li>
            <li class="parent ">

				<a href="#">
					<span class="glyphicon glyphicon-list"></span><span href="#sub-item-1"> <span data-toggle="collapse" href="#sub-item-1"> Moderator </span></span><span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li>
						<a class="" href="addmoderate.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> Add Moderator
						</a>
					</li>
					<li>
						<a class="" href="removemoderate.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> Remove Moderator
						</a>
					</li>
					<li>
						<a class="" href="showmoderate.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> Show Moderator
						</a>
					</li>
				</ul>
			</li>
            
            
			
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> <span data-toggle="collapse" href="#sub-item-2"> Groups </span><span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-2">
					<li>
						<a class="" href="showgroups.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> Show Groups
						</a>
					</li>
					<li>
						<a class="" href="CreateUserGroupServlet">
							<span class="glyphicon glyphicon-share-alt"></span> Create Group
						</a>
					</li>
					<li>
						<a class="" href="DeleteUserGroupServlet">
							<span class="glyphicon glyphicon-share-alt"></span> Delete Group
						</a>
					</li>
				</ul>
			</li>
			
			<li role="presentation" class="divider"></li>
			
		</ul>
        
        
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="adminpanel.jsp"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">My Profile</li>
			</ol>
		</div><!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">My Profile</h2>

            <table class="table table-striped"
            style="padding: 100px;">
            <tr><td><b>First Name :</b></td><td></td></tr>
            <tr><td><b>Last Name :</b></td><td></td></tr>
            <tr><td><b>Contact No :</b></td><td></td></tr>
            <tr><td><b>Email :</b></td><td></td></tr>
            </table>
            <br />
            <br />
            <center><button class="btn btn-primary btn-large"><a href="#"><b><font color="white">Update Profile</font> </b></a></button></center>
        
			</div>
		</div>
		</div><!--/.row-->
<!--/.main-->



	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>