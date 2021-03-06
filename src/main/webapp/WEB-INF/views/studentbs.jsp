<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Studennt Page</title>

	  <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/animate.min.css">


    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/select2.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery-ui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/unicorn.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- NAVBAR -->
<div id="myNavbar" class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">

        <div class="navbar-header">

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

             <a class="navbar-brand" href="#">STUDENT AWS ECS DEMO</a>

        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#myheader">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#features">Career Summary</a></li>
                <li><a href="#professionalexperience">Work Experience</a></li>
                <li><a href="#education">Education</a></li>
                <li><a href="#techskills">Skills</a></li>
                <li><a href="#domainknowledge">Domain Knowledge</a></li>
                <li><a href="BINIT_DATTA.docx">Get Resume</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>

    </div>
</div>

<!-- END NAVBAR -->

<!-- HEADER person -->

<div class="header" id="myheader">
    <div class="container">
        <div class="row">

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 wow fadeInLeft">
                <h1>Welcome</h1>

                <p>I am One Person, with Multiple IT Skills. However, my multiple skills, all of them, roll up to one : solving businesss problems by building
                    IT systems using cutting edge technology, within cost and time budget. That was my mission for the past 20 years and it would
                    remain so for the future. I have honed that one skill through years of working with
                    teams and individuals. My projects, which are in multiple major business verticals, span across the globe and uses cutting edge technologies.
                    </p>

                <ul class="list-inline">
                    <li><a href="#professionalexperience" class="btn btn-trans btn-md">See Work Experience</a></li>
                    <li><a href="#domainknowledge" class="btn btn-trans btn-md">See Domain Experience</a></li>
                </ul>

            </div>

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 wow fadeInRight" align="center">

               <!-- <img class="img-responsive" src="img/logos/img022.jpg"/> -->
                <img class="img-responsive" src="<%=request.getContextPath()%>img/logos/binit-profile-01.jpg"/>
            </div>

        </div>
    </div>
</div>

<!-- END HEADER -->

<c:url var="addAction" value="/student/add" ></c:url>

<div class="container">
 <div class="container-fluid">
	<div class="row">
		<div class="col-xs-10">
			<div class="col-md-10 col-md-offset-2">
				<div class="widget-box">
					<div>
						  <div class="widget-title">
								<span class="icon">
									<i class="fa fa-align-justify"></i>									
								</span>
								<h5>Add Student</h5>
						 </div>
					</div>
					<div clsss="login-center">
							<form:form action="${addAction}" commandName="student" class="form-horizontal">
								 <c:if test="${!empty student.firstName}">
										 
										 <div class="form-group">
											 <form:label path="id">
													<spring:message text="ID"/>
											  </form:label>
											 <div  class="col-sm-5 col-md-5 col-lg-6">
													<form:input path="id" readonly="true" size="8"  disabled="true" />
													<form:hidden path="id" />
											  </div>
										  </div>
								  	</c:if>
								  <div class="form-group">
									  <label for="firstname" class="col-sm-5 col-md-5 col-lg-3 control-label">First Name</label>
									 <div  class="col-sm-5 col-md-5 col-lg-6">
											<form:input path="firstName" />
									  </div>
								  </div>
								  <div class="form-group">
									  <label for="firstname" class="col-sm-5 col-md-5 col-lg-3 control-label">Last Name</label>
									 <div  class="col-sm-5 col-md-5 col-lg-6">
									 	<form:input path="lastName" />
									  </div>
								  </div>
 								  <div class="form-group">
									  <label for="firstname" class="col-sm-5 col-md-5 col-lg-3 control-label">Roll Number</label>
									 <div  class="col-sm-5 col-md-5 col-lg-6">
										<form:input path="rollNumber" />
									  </div>
								  </div>
							 	  <div class="form-group">
									  <label for="firstname" class="col-sm-5 col-md-5 col-lg-3 control-label">Date Of Birth</label>
									 <div  class="col-sm-5 col-md-5 col-lg-6">
											<form:input path="dob" />
									  </div>
								  </div>
								   <div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<c:if test="${empty student.firstName}">
												<input type="submit"
													value="<spring:message text="Add Student"/>" />
											</c:if>
										</div>
								  </div> 
								</form:form>
						</div>
					</div>	 <!-- <div class="widget-box"> -->
				</div> 	<!-- <div class="widget-content nopadding"> -->
			</div> 	<!-- <div class="col-xs-12"> -->
		</div> <!--<div class="row"> -->
	</div> 	<!--<div class="container-fluid">-->
</div> 	 <!-- container -->


<br>

<h3>Student List</h3>
<c:if test="${!empty listStudents}">
<table class="table table-bordered table-striped table-hover">
	<tr>
		<th width="80">Student ID</th>
		<th width="120">Student First Name</th>
		<th width="120">Student Last Name</th>
		<th width="120">Students RollNumber</th>
		<th width="120">Students DOB</th>		
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listStudents}" var="student">
		<tr>
			<td>${student.id}</td>
			<td>${student.firstName}</td>
			<td>${student.lastName}</td>
			<td>${student.rollNumber}</td>			
			<td>${student.dob}</td>
			<td><a href="<c:url value='/edit/${student.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${student.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
