<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="branches.aspx.cs" Inherits="branches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />

    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/fontawesome.min.css" integrity="sha512-cHxvm20nkjOUySu7jdwiUxgGy11vuVPE9YeK89geLMLMMEOcKFyS2i+8wo0FOwyQO/bL8Bvq1KMsqK4bbOsPnA==" crossorigin="anonymous" referrerpolicy="no-referrer" />--%>

    <%--Bootstrap Link--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    

     <style type="text/css">
        body {
            overflow-x: hidden;
        }
    </style>

    <style>

        .card {
            /*height: 360px;*/
            box-shadow: 4px 5px 5px grey;
            margin-top: 50px;
        }

        .card img {
            height: 300px;
            width: 600px;
            box-shadow: 4px 5px 5px grey;
        }

        .card-body {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 0px !important;
            background: #f3f1f1;
            /*color: #fff;*/
        }

        .card-body p {
            padding: 30px 3px;
            font-size: 16px;
            line-height: 28px;
            /*background-color: #f3f1f1;*/
        }

        .card-body p span {
            padding: 0px 20px;
        }

        .card-body p span a {
            color: grey;
        }

        .card-body p span a:hover {
           color: #f9b381;
        }

        .row {
            margin-top: 75px;
        }

        .sp{
            font-weight: bold;
            display: block;
            text-align: center !important;
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
                   <%--<li class="active">About Us </li>--%>
                   <li class="active">Our Branches </li>
                </ol>
            </div>
        </div>
        <!--About Section start -->

        <div class="kingster-page-wrapper" id="kingster-page-wrapper">
            <div class="gdlr-core-page-builder-body">

                <div class="gdlr-core-pbf-wrapper " style="padding: 50px 20px 30px 20px;">
                    <div class="gdlr-core-pbf-background-wrap"></div>
                    <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                        <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">

                            <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="text-transform: none ;  color: #07294D; padding-bottom: 20px; border-bottom: 5px solid #07294D;">
                                               VSEC Family
                                            </h3>
                                        </div>
                                       <%-- <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption">
                                            A school assembly is a gathering of all or part of a school for purposes, such as <br />special programs or communicating information basis.
                                        </span>--%>
                                    </div>
                                </div>

                            <!-- Card Section Start-->
                            <div class="product_section">
                                <div class="container">

                                    <div class="row" style="margin-top:0px;">
                                        <div class="card-deck">

                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                       <img class="card-img-top" src="images/branches/Sharda%20Nagar.JPG" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 21px; color: #07294D;"> 
                                                                Dr. VSEC- Sharda Nagar 
                                                            </span> 
                                                     

                                                            <%--<span class="sp"> 
                                                                Affiliated To CISCE Board 
                                                            </span> --%>
                                                            <br /> <br />

                                                            <span> 
                                                                <i class="fa fa-phone"></i>&nbsp; 
                                                                0512- 2580800, 2592422 
                                                            </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href="https://vsecsharda.in/" target="_blank">vsecsharda.in </a>
                                                                
                                                            </span>  
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; 
                                                                vsec_sharda@yahoo.com 
                                                            </span>          
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                       <img class="card-img-top" src="images/branches/Avadhpuri.JPG" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 23px; color: #07294D;"> Dr. VSEC- Avadhpuri </span> 
                                                            <span class="sp"> Affiliated To CISCE Board </span> <br />
                                                            <span><i class="fa fa-phone"></i>&nbsp;  0512- 2581711, 9721211411 </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href="https://www.vsecavadhpuri.com/" target="_blank"> 
                                                                    vsecavadhpuri.com 
                                                                </a>
                                                            </span>  
                                                            <br />

                                                            <span><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; vsec_avadhpuri@gmail.com </span>          
                                                        </p> 
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                       <img class="card-img-top" src="images/branches/Shyam%20Nagar%20(Jr.%20WIng).jpg" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 20px; color: #07294D;"> 
                                                                Shyam Nagar Jr.
                                                            </span> 

                                                            <span class="sp"> 
                                                                Affiliated To CBSE Board 
                                                            </span> 
                                                            <br />

                                                            <span> 
                                                                <i class="fa fa-phone"></i>&nbsp; 
                                                                8765850691 
                                                            </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; 
                                                                vsecshyam@rediffmail.com 
                                                            </span>   
                                                            
                                                            <span>
                                                                <%--<i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href=" https://www.vsecsn.com/" target="_blank">vsecsn.com </a>--%>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </span>
                                                            <br />       
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div>    

                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                       <img class="card-img-top" src="images/branches/Shyam%20Nagar%20(Sr.%20Wing).jpg" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 20px; color: #07294D;"> 
                                                                Shyam Nagar Sr.
                                                            </span> 

                                                            <span class="sp"> 
                                                                Affiliated To CBSE Board 
                                                            </span> 
                                                            <br />

                                                            <span> 
                                                                <i class="fa fa-phone"></i>&nbsp; 
                                                                0512- 2427255, 8765850691 
                                                            </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href=" https://www.vsecsn.com/" target="_blank">vsecsn.com </a>
                                                                </span>
                                                            <br />
    
                                                            <span>
                                                                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; 
                                                                vsecshyam@rediffmail.com 
                                                            </span>          
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div>    

                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                        <img class="card-img-top" src="images/branches/Panki.JPG" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 23px; color: #07294D;"> 
                                                                Dr. VSEC- Panki
                                                            </span> 

                                                            <span class="sp"> 
                                                                Affiliated To CBSE Board 
                                                            </span> 
                                                            <br />

                                                            <span> 
                                                                <i class="fa fa-phone"></i>&nbsp; 
                                                                7991528939 
                                                            </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href="http://www.vsecpanki.co.in/" target="_blank">vsecpanki.co.in </a>
                                                                
                                                            </span>  
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; 
                                                                vsec_panki@rediffmail.com 
                                                            </span>          
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                        <img class="card-img-top" src="images/branches/farrukhabad.JPG" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 23px; color: #07294D;"> Dr. VSEC- Farrukhabad </span>     
                                                            <span class="sp"> Affiliated To CBSE Board </span> <br />
                                                            <span><i class="fa fa-phone"></i>&nbsp;   8004933796 </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href="https://vsecfbd.org/" target="_blank"> 
                                                                    vsecfbd.org
                                                                </a>
                                                            </span>  
                                                            <br />

                                                            <span><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; dr.vsecfbd@gmail.com </span>          
                                                        </p> 
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                        <img class="card-img-top" src="images/branches/unnao.JPG" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 20px; color: #07294D;"> 
                                                                Dr. VSEC- Unnao
                                                            </span> 

                                                            <span class="sp"> 
                                                                Affiliated To CBSE Board 
                                                            </span> 
                                                            <br />

                                                            <span> 
                                                                <i class="fa fa-phone"></i>&nbsp; 
                                                                0515-2833066, 7310434005 
                                                            </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href="https://vsecunnao.com/" target="_blank">vsecunnao.com</a>
                                                                </span>
                                                            <br />
    
                                                            <span>
                                                                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; 
                                                                vseca.unnao@gmail.com 
                                                            </span>          
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div> 
                                            
                                            <div class="col-sm-4"> 
                                                <div class="card"> 
                                                    <div class="card-body">
                                                        <img class="card-img-top" src="images/branches/N-Block.JPG" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 20px; color: #07294D;"> 
                                                                Dr. VSEC- N-Block
                                                            </span> 

                                                            <span class="sp"> 
                                                                Affiliated To CBSE Board 
                                                            </span> 
                                                            <br />

                                                            <span> 
                                                                <i class="fa fa-phone"></i>&nbsp; 
                                                                0512-3559239, 9118323891 
                                                            </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href="https://vsecnblock.com/" target="_blank">vsecnblock.com</a>
                                                                </span>
                                                            <br />
    
                                                            <span>
                                                                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; 
                                                                vsecnblock@gmail.com 
                                                            </span>          
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div>           
                                            
                                            <div class="col-sm-4">
                                                <div class="card"> 
                                                    <div class="card-body">
                                                        <img class="card-img-top" src="images/branches/Jajmau.JPG" alt="Card image cap" />
                                                        <p>
                                                            <span class="sp" style="font-size: 20px; color: #07294D;"> 
                                                                Dr. VSEC- Jajmau
                                                            </span> 

                                                            <span class="sp"> 
                                                                Affiliated To CBSE Board 
                                                            </span> 
                                                            <br />

                                                            <span> 
                                                                <i class="fa fa-phone"></i>&nbsp; 
                                                                9935332220, 8173921292 
                                                            </span> 
                                                            <br />

                                                            <span>
                                                                <i class="fa fa-globe" aria-hidden="true"></i>&nbsp; 
                                                                <a href="https://vsecjajmau.com/" target="_blank">vsecjajmau.com</a>
                                                                </span>
                                                            <br />
    
                                                            <span>
                                                                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; 
                                                                vsecjajmau@gmail.com
                                                            </span>          
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div> 
                                           
                                        </div>
                                    </div>

                                </div>
                             </div>
                             <!-- Card Section End-->

                        </div>
                    </div>
               </div>
            
            </div>
        </div>


    </div>

    <script type='text/javascript' src='js/jquery/jquery.js'></script>
    <script type='text/javascript' src='js/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='plugins/goodlayers-core/plugins/combine/script.js'></script>
    <script type='text/javascript'>
        var gdlr_core_pbf = {
            "admin": "",
            "video": {
                "width": "640",
                "height": "360"
            },
            "ajax_url": "#"
        };
    </script>
    <script type='text/javascript' src='plugins/goodlayers-core/include/js/page-builder.js'></script>
    <script type='text/javascript' src='js/jquery/ui/effect.min.js'></script>
    <script type='text/javascript'>
        var kingster_script_core = {
            "home_url": "Default.aspx"
        };
    </script>
    <script type='text/javascript' src='js/plugins.min.js'></script>
</asp:Content>

