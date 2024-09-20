<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="schoolactivity.aspx.cs" Inherits="schoolactivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />


    <style type="text/css">
        body {
            overflow-x: hidden;
        }

        /*Cards CSS*/
        .gallery-img {
            position: relative;
        }

        .galley-img img {
            height: 300px;
            width: 100%;
            margin-top: 25px;
			
        }

        .text-block {
            color: #fff;
            width: 50%;
            bottom: 20px;
            font-weight: 100;
            font-size: 15px;
            text-transform: uppercase;
            position: absolute;
        }

        .text-block h3 {
            font-size: 15px;
            margin-top: 6px;
           /* background: #1e2841;*/     
            /*background: #0a1b46a6;*/         
            padding: 10px;
            color: #fff;
			background-color: #00000085;
			margin-bottom: 0px!important;
        }

        .text-block a {
            font-size: 14px;
            margin-bottom: 0px;
            background: #f9b381;
            font-weight: bold;
            color: #fff;
        }

            .text-block a:hover {
                color: #fff;
            }

        .event {
            margin-top: 50px;
            margin-bottom: 60px;
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="home page-template-default page page-id-2039 gdlr-core-body woocommerce-no-js tribe-no-js kingster-body kingster-body-front kingster-full  kingster-with-sticky-navigation  kingster-blockquote-style-1 gdlr-core-link-to-lightbox">

        <!-- About Image Section start-->
        <div class="Aboutusimg">
            <div class="Aboutusbreadcrumb">
                <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                   <li style="margin-top:5px;"><a href="Default.aspx">Home</a></li>
                   <li class="active">School Activities </li>
                </ol>
            </div>
        </div>
        <!--About Section start -->

        <div class="container event">
            <div class="row">

                 <div class="col-md-4 galley-img">
				    <div class="galley-img">
					    <img src="images/tour/tour.jpeg" alt="" class="img-fluid">
					    <div class="text-block">
						    <h3> <i class="fa fa-picture-o" aria-hidden="true"></i> School Trip</h3>
					        <a class="hvr-sweep-to-right" href="schooltrip.aspx" style="float:left;  padding:5px 10px;">View Gallery <i class="fa fa-angle-double-right" aria-hidden="true"></i>
					        </a>
					    </div>
				    </div>
			    </div>

                <div class="col-md-4 galley-img">
				    <div class="galley-img">
					    <img src="images/winners/Udhbhav_Utsav2.JPG" alt="" class="img-fluid">
					    <div class="text-block">
						    <h3><i class="fa fa-picture-o" aria-hidden="true"></i> Udhbhav Utsav</h3>
					    <a class="hvr-sweep-to-right" href="udhbhav.aspx" style="float:left;padding:5px 10px;">View Gallery <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					    </div>
				    </div>
			    </div>
			
				<div class="col-md-4 galley-img">
				    <div class="galley-img">
					    <img src="images/spicmacay/(1470).JPG" alt="" class="img-fluid" />
					    <div class="text-block">
						    <h3><i class="fa fa-picture-o" aria-hidden="true"></i> Spicmacay</h3>
					    <a class="hvr-sweep-to-right" href="spicamacay.aspx" style="float:left;padding:5px 10px;">View Gallery <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					    </div>
				    </div>
			    </div>
			
				<div class="col-md-4 galley-img">
				    <div class="galley-img">
					    <img src="images/temp_pics/DSC_0910.JPG" alt="" class="img-fluid">
					    <div class="text-block">
						    <h3><i class="fa fa-picture-o" aria-hidden="true"></i> Sports Day</h3>
					    <a class="hvr-sweep-to-right" href="Sports.aspx" style="float:left;padding:5px 10px;">View Gallery <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					    </div>
				    </div>
			    </div>
                
			
				<div class="col-md-4 galley-img">
				    <div class="galley-img">
					    <img src="images/more/IMG-20200621-WA0010.jpg" alt="" class="img-fluid">
					    <div class="text-block">
						    <h3><i class="fa fa-picture-o" aria-hidden="true"></i> Annual Fiesta </h3>
					        <a class="hvr-sweep-to-right" href="annualfiesta.aspx" style="float:left;padding:5px 10px;">View Gallery <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					    </div>
				    </div>
			    </div>
			
				<div class="col-md-4 galley-img">
				    <div class="galley-img">
					    <img src="images/more/Blood%20donation%20camp.JPG" alt="" class="img-fluid">
					    <div class="text-block">
						    <h3><i class="fa fa-picture-o" aria-hidden="true"></i> Health Camp</h3>
					         <a class="hvr-sweep-to-right" href="healthcamp.aspx" style="float:left;padding:5px 10px;">View Gallery <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					    </div>
				    </div>
			    </div>
			
				<div class="col-md-4 galley-img">
				    <div class="galley-img">
					    <img src="images/more/IMG-20200621-WA0009.jpg" alt="" class="img-fluid">
					    <div class="text-block">
						    <h3><i class="fa fa-picture-o" aria-hidden="true"></i> Yoga Day</h3>
					         <a class="hvr-sweep-to-right" href="yogaday.aspx" style="float:left;padding:5px 10px;">View Gallery <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					    </div>
				    </div>
			    </div>

                
            </div>
        </div>

   </div>
</asp:Content>


