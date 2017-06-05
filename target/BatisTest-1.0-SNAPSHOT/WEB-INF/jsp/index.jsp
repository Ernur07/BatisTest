<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>


    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HelloWorld</title>

    <!-- Bootstrap Core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/startbootstrap-freelancer/3.3.7/css/freelancer.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        function doAjaxPost() {
        // get the form values
        var data = {};
        data["name"]=$('#name').val();
        data["id"]= "1";
        

        $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/BatisTest/index.htm",
        data: JSON.stringify(data) ,
        dataType: "json",
        success: function(response){
        // we have the response
        $('#info').html(response["msg"]);
        $('#name').val('');
        },
        error: function(e){
        alert('Error: ' + e);
        }
        });
        }
        
        function doAjaxPost2() {
        // get the form values
        var data = {};
        data["name"]="Ernur";
        data["id"]= "2";
        

        $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/BatisTest/index.htm",
        data: JSON.stringify(data) ,
        dataType: "json",
        success: function(response){
        // we have the response
        $('#info').html(response["msg"]);
        $('#name').val('');
        },
        error: function(e){
        alert('Error: ' + e);
        }
        });
        }
        
        </script>
</head>

<body id="page-top" class="index">
<div id="skipnav"><a href="#maincontent">Skip to main content</a></div>

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Alimkhanov Ernur</a>
            </div>

        </div>
        <!-- /.container-fluid -->
    </nav>

    



    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 id="info"></h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
     
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="name">Enter new keyword</label>
                                <input type="text" class="form-control" placeholder="Enter new keyword" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>

                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button  class="btn btn-success btn-lg" onclick="doAjaxPost()" >Change</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button class="btn btn-success btn-lg" onclick="doAjaxPost2()">Show KeyWord</button>
                            </div>
                        </div>
                    
                </div>
            </div>
        </div>
    </section>




    <!-- Bootstrap Core JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->


</body>

</html>
