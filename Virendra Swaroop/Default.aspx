<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Abel');

        * {
            font-family: Poppins;
        }

        /*About Start*/
        .gdlr-core-body .gdlr-core-button.gdlr-core-button-transparent, .gdlr-core-body {
            background: #07294D;
        }

        .gdlr-core-button.gdlr-core-button-transparent:hover {
            border: 2px solid #07294D;
            color: #07294D;
        }

        .gdlr-core-left-align .gdlr-core-text-box-item-content {
            font-size: 16px;
            text-transform: none;
            color: #000;
            text-align: justify;
            padding-top: 15px;
        }

        .about h4 {
            width: 100%;
            margin: 0px auto;
            color: #fff;
            padding: 10px 0px;
            text-align: center;
            font-size: 25px;
        }

        .about h6 a {
            width: 100%;
            color: #ffc107 !important;
            text-align: center;
        }

        .heading {
            background: #07294D;
            width: 100%;
            height: 50px;
            margin: 50px auto;
            position: relative;
        }


            .heading:before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                border-top: 45px solid #efefef;
                border-right: 50px solid #07294D;
                width: 0;
                height: 50px;
            }

            .heading:after {
                content: '';
                position: absolute;
                top: 0;
                right: 0;
                border-bottom: 45px solid #efefef;
                border-left: 50px solid #07294D;
                width: 0;
                height: 50px;
            }


        P {
            color: #837d7d;
            font-size: 16px;
        }

        .sp {
            bottom: 50px;
            border-bottom: 5px solid #07294D;
        }

        .spp {
            bottom: -50px;
            border-top: 5px solid #07294D;
        }


        @media only screen and (max-width: 767px) {
            .about h4 {
                width: 100%;
                font-size: 14px;
                padding-bottom: 10px;
                padding: 10px 20px;
            }

            .heading:before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                border-top: 50px solid #efefef;
                border-right: 10px solid #07294D;
                height: 54px;
            }

            .heading:after {
                content: '';
                position: absolute;
                top: 0;
                right: 0;
                border-bottom: 50px solid #efefef;
                border-left: 10px solid #07294D;
                height: 54px;
            }

            .heading {
                margin: 20px auto;
                height: 54px;
            }

            .sp {
                display: none;
            }
        }

        .block {
            text-align: center;
            margin-bottom: 50px;
        }

        .about-profile {
            box-shadow: 3px 2px 5px grey;
        }
        /*About End*/

        /*Sticky Start*/
        #feedback2 {
            position: fixed;
            right: -12px;
            top: 50%;
            z-index: 999;
            transform: rotate(-90deg);
            -webkit-transform: rotate(-90deg);
            -moz-transform: rotate(-90deg);
            -o-transform: rotate(-90deg);
            margin-right: -75px;
            letter-spacing: 3px;
        }

            #feedback2 a {
                font-family: CerebriSans;
                display: block;
                background: #FFBC09;
                padding: 0px 25px 5px 25px;
                text-align: center;
                color: #07294D;
                font-size: 20px;
                font-weight: 700;
                text-decoration: none;
            }

                #feedback2 a span {
                    letter-spacing: 5px;
                }
        /*Sticky End*/

        /*Notice Start*/
        .tg-tickerbox {
            /*width: 100%;*/
            /*float: left;*/
            padding: 10px 0;
            position: relative;
            border-bottom: 1px solid #ddd;
        }

            .tg-tickerbox span {
                float: left;
                color: #fff;
                padding: 0 10px;
                font-size: 12px;
                background: #07294D;
                line-height: 28px;
            }

        .tg-ticker {
            width: auto;
            overflow: hidden;
            padding: 0 0 0 75px;
        }

        .tg-widget, .tg-widgettitle, .tg-widgetcontent {
            width: 100%;
            float: left;
        }

        .tg-widgettitle {
            background-color: #00beff;
            margin: 0 0 15px;
            background: #f7f7f7;
            padding: 12px 20px;
        }

            .tg-widgettitle h3 {
                margin: 0;
                font-size: 16px;
                line-height: 16px;
            }

        .pad-all ul li {
            list-style-type: none;
            /*border: 1px solid red;*/
            padding: 10px 10px 10px 0px;
            border-bottom: 1px dotted #07294D;
        }

            .pad-all ul li a {
                color: #07294D;
            }
        /*News End*/

        /* achievement carousel start */
        .profile-circle {
            box-shadow: 6px 4px 8px grey;
            margin: 10px auto;
            border-radius: 100%;
            background-color: aqua;
            box-shadow: 3px 2px 5px grey;
            border-radius: 100%;
            background-color: aqua;
            width: 251px;
            height: 20px;
            height: 259px !important;
            margin-left: 63px;
            margin-top: 70px;
            margin-bottom: 25px;
        }




        .block {
            text-align: center;
            margin-bottom: 50px;
        }

        .gdlr-core-event-item-list.gdlr-core-style-grid .gdlr-core-event-item-title {
            font-size: 19px;
            margin-bottom: 14px;
            font-weight: bold;
        }

        .gdlr-core-page-builder-body p {
            margin-top: 0px;
            font-size: inherit;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }

        blockquote {
            quotes: none;
            padding: 8px 17px 15px;
            font-size: 17px;
            margin-bottom: 35px;
            font-style: italic;
            margin-top: 35px;
            border-left-width: 2px;
            border-left-style: solid;
        }

        .carousel-indicators li {
            position: relative;
            -webkit-box-flex: 0;
            -ms-flex: 0 1 auto;
            flex: 0 1 auto;
            width: 10px;
            height: 10px;
            border-radius: 50%;
            margin-right: 3px;
            margin-left: 3px;
            text-indent: -999px;
            margin-top: 10px;
            background-color: rgb(159 148 148 / 50%);
        }

        .kingster-page-wrapper .gdlr-core-page-builder-body #feedback2 a:hover {
            /* color: #60c988; */
            background: #07294D !important;
            color: #FFBC09 !important;
        }

        .modal {
            z-index: 9999999;
            margin-top: 10px;
            background: none;
        }

            .modal span {
                color: red;
                font-size: 32px;
            }

        .modal-body img {
            width: 100%;
        }

        .close {
            opacity: 999;
            font-size: 30px;
        }

        .modal-backdrop {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 0 !important;
            background-color: #000;
        }

        .modal {
            position: fixed;
            top: -38px;
            /* right: 0; */
            left: -150px !important;
            bottom: 0;
            left: 0;
            z-index: 1050;
            display: none;
            overflow: hidden;
            outline: 0;
        }

        .modal-content {
            /* width: 680px; */
            width: 620px;
        }

        .modal-body {
            padding: 0px !important;
        }

        @media only screen and (max-width: 767px) {
            .modal {
                position: fixed;
                top: 0px;
                right: 0;
                left: 0 !important;
                bottom: 0;
                left: 0;
                z-index: 99999;
                display: none;
                overflow: hidden;
                outline: 0;
            }

            .modal-content {
                width: 100%;
            }

            .modal-body {
                padding: 0px !important;
            }

            .kingster-mobile-header {
                padding-top: 0px;
                padding-bottom: 15px;
                z-index: 1 !important;
                position: relative;
                box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.1);
                -webkit-box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.1);
            }

            body.kingster-body-front .kingster-container {
                max-width: 500px;
                padding-left: 0px;
                padding-right: 0px;
            }
        }
    </style>
    <%--achievement carousel end--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" onload="op();">
    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">
            <!-- Enquiry Tag Start -->
            <div id="feedback2">
                <a href="admission_query_form.aspx" target="_blank" aria-label="left-align">
                    <span class="pt-3">ADMISSIONS</span>
                </a>
            </div>
            <!-- Enquiry Tag End -->

            <%--Banner Section--%>
            <section>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/banner/banner4.jpg" class="d-block w-100" />
                        </div>
                        <div class="carousel-item">
                            <img src="images/banner/banner.jpeg" class="d-block w-100" />
                        </div>
                        <div class="carousel-item">
                            <img src="images/banner/banner1.jpeg" class="d-block w-100" />
                        </div>
                        <div class="carousel-item">
                            <img src="images/banner/banner2.jpeg" class="d-block w-100" />
                        </div>
                        <div class="carousel-item">
                            <img src="images/banner/banner3.jpeg" class="d-block w-100" />
                        </div>
                    </div>
                </div>
            </section>
            <%--Banner Section--%>

            <%--Marque Start--%>
            <div class="tg-tickerbox">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <span>News & Update:</span>
                            <div id="tg-ticker" class="tg-ticker owl-carousel">
                                <div class="item">
                                    <div class="tg-description" id ="aadd">
                                        <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();" class="marquee-div">
                                            <asp:Repeater ID="Repeater2" runat="server">
    <ItemTemplate>
                                           <%-- <a href="download.aspx" >--%>
                                     <a href="https://vresults.infinityfreeapp.com">
                                          <b style="color: red;"> <%# Eval("Detalias") %><b style="font-size: 15px; color: #07294D;"></a>
                                           
        </ItemTemplate>
                                                </asp:Repeater>
                                        </marquee>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--Marque End--%>

            <%--About Us Start--%>
            <div class="gdlr-core-pbf-wrapper about" style="padding: 40px 0px 40px 0px;">
                <div class="gdlr-core-pbf-background-wrap" style="background: #efefef;"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">

                        <div class="gdlr-core-pbf-element">
                            <div class="gdlr-core-blog-item gdlr-core-item-pdb clearfix  gdlr-core-style-blog-widget">
                                <div class="gdlr-core-block-item-title-wrap  gdlr-core-left-align gdlr-core-item-mglr" id="div_1dd7_46">
                                    <div class="gdlr-core-block-item-title-inner clearfix" style="border-bottom: 5px solid #FFBC09; padding-bottom: 15px;">
                                        <h3 class="gdlr-core-block-item-title" id="h3_1dd7_10">About Dr. Virendra Swarup Education Centre</h3>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="gdlr-core-pbf-column gdlr-core-column-24 gdlr-core-column-first">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 20px;">
                                            <div id="carouselIndicators" class="carousel slide" data-ride="carousel">
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                                                    <li data-target="#carouselIndicators" data-slide-to="1"></li>
                                                    <li data-target="#carouselIndicators" data-slide-to="2"></li>
                                                    <li data-target="#carouselIndicators" data-slide-to="3"></li>
                                                    <li data-target="#carouselIndicators" data-slide-to="4"></li>
                                                </ol>
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <div class="about-profile">
                                                            <img src="images/About-bg/about1.jpg" />
                                                        </div>
                                                    </div>

                                                    <div class="carousel-item">
                                                        <div class="about-profile">
                                                            <img src="images/About-bg/about2.jpg" />
                                                        </div>
                                                    </div>

                                                    <div class="carousel-item">
                                                        <div class="about-profile">
                                                            <img src="images/About-bg/about3.jpg" />
                                                        </div>
                                                    </div>

                                                    <div class="carousel-item">
                                                        <div class="about-profile">
                                                            <img src="images/About-bg/about4.jpg" />
                                                        </div>
                                                    </div>

                                                    <div class="carousel-item">
                                                        <div class="about-profile">
                                                            <img src="images/About-bg/about5.jpg" />
                                                        </div>
                                                    </div>

                                                </div>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="gdlr-core-pbf-column gdlr-core-column-36">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 15px;">
                                            <div class="gdlr-core-text-box-item-content">
                                                <p>
                                                    Dr. Virendra Swarup Education Centre has been established under the aegis of Dr. Virendra Swarup, who was a parliamentarian of great repute. His dream of educating thousands came true via the inception of Dr. Virendra Swarup Educational Foundation in the year 1989 - at Kanpur. 
                                                    <br />
                                                    <br />
                                                    Dr. Virendra Swarup was the Head and ‘Kuladhipati’ of the famous 'Dayanand Shiksha Sansthan' that has more than 25 educational institutions, running throughout the State of Uttar Pradesh. Dr Swarup's exceptional focus towards education translated into a dozen Post Graduate Colleges and several Intermediate Colleges at Kanpur. His qualities of unwavering courage and commitment to excellence continue to guide and inspire us. 
                                                </p>
                                                <div class="gdlr-core-button-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                                    <a class="gdlr-core-button  gdlr-core-button-transparent gdlr-core-button-no-border" href="About.aspx" id="gdlr-core-button-id-44682">
                                                        <span class="gdlr-core-content">Read More</span>
                                                        &nbsp;<img src="images/About-bg/arrow%202.png" style="height: 10px; width: 20px;" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <%--About Us End--%>

            <%--News & Update--%>
            <div class="gdlr-core-pbf-wrapper news" id="div_1dd7_44" style="background: #efefef;">
                <div class="gdlr-core-pbf-background-wrap"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">

                        <div class="gdlr-core-pbf-column gdlr-core-column-first">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" id="div_1dd7_45" data-sync-height="height-2" style="height: 600px !important;">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-blog-item gdlr-core-item-pdb clearfix  gdlr-core-style-blog-widget">
                                            <div class="gdlr-core-blog-item-holder gdlr-core-js-2 clearfix" data-layout="fitrows">
                                                <%--First Section--%>
                                                <div class="gdlr-core-item-list-wrap gdlr-core-column-20">
                                                    <div class="gdlr-core-item-list-inner gdlr-core-item-mglr">
                                                        <div class="gdlr-core-blog-grid ">
                                                            <div class="tg-widget tg-widgetnoticeboard">
                                                                <div class="tg-widgettitle" style="background-color: #07294D; color: #FFBC09;">
                                                                    <h3 class="white text-center" style="color: #FFBC09;">EVENTS</h3>
                                                                </div>
                                                                <div class="tg-widgetcontent" style="background-image: url('images/back.jpg');">
                                                                    <marquee behavior="scroll" direction="up" scrollamount="2" class="pad-all" onmouseover="this.stop()" onmouseout="this.start()" style="height: 480px;">
                                                                        <ul>
                                                                            <asp:Repeater ID="RPNoticeBoard" runat="server">
                                                                                <ItemTemplate>
                                                                                    <li>
                                                                                        <a href="Inter-house-competition.aspx" target="_blank">
                                                                                            <img src="Images/new_red.gif" />
                                                                                            <%# Eval("Competition") %>
                                                                                    </li>
                                                                                </ItemTemplate>
                                                                            </asp:Repeater>

                                                                        </ul>
                                                                    </marquee>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <%--First Section--%>

                                                <%--Seconnd Section--%>
                                                <div class="gdlr-core-item-list-wrap gdlr-core-column-20">
                                                    <div class="gdlr-core-item-list-inner gdlr-core-item-mglr">
                                                        <div class="gdlr-core-blog-grid ">
                                                            <div class="tg-widget tg-widgetnoticeboard">
                                                                <div class="tg-widgettitle" style="background-color: #07294D;">
                                                                    <h3 class="white text-center" style="color: #FFBC09;">ACHIEVEMENTS</h3>
                                                                </div>
                                                                <div class="tg-widgetcontent" style="background-image: url('images/back.jpg');">
                                                                    <marquee behavior="scroll" direction="up" scrollamount="2" class="pad-all" onmouseover="this.stop()" onmouseout="this.start()" style="height: 480px;">
                                                                        <ul>
                                  <asp:Repeater ID="achievement1" runat="server">
                                                                                <ItemTemplate>
                                                                                    <li>
                                                                                        <img src="Images/new_red.gif" />
                                                                                        <%# Eval("Title") %>                                                                </li>
                                                                                </ItemTemplate>
                                                                            </asp:Repeater>

                                                                        </ul>
                                                                    </marquee>


                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <%--Second Section--%>

                                                <%--third Section--%>
                                                <div class="gdlr-core-item-list-wrap gdlr-core-column-20">
                                                    <div class="gdlr-core-item-list-inner gdlr-core-item-mglr">
                                                        <div class="gdlr-core-blog-grid ">
                                                            <div class="tg-widget tg-widgetnoticeboard">
                                                                <div class="tg-widgettitle" style="background-color: #07294D;">
                                                                    <h3 class="white text-center" style="color: #FFBC09;">ACHIEVERS</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-12 col-md-12 col-sm-12">


                                                        <div id="achievement" class="carousel slide" data-ride="carousel">
                                                            <ol class="carousel-indicators">
                                                                <li data-target="#achievement" data-slide-to="0" class="active"></li>
                                                                <li data-target="#achievement" data-slide-to="1"></li>

                                                            </ol>

                                                            <div class="carousel-inner">
                                                                <div class="carousel-item active">
                                                                    <asp:Repeater ID="achievement2" runat="server">
                                                                        <ItemTemplate>
                                                                            <div>
                                                                                <img src="Admin/<%# Eval("image") %>" class="profile-circle" alt="best medical college" />

                                                                            </div>
                                                                            <blockquote class="block">
                                                                                <p><i class="fa fa-quote-left fa-2x" style="color: rgb(228, 221, 221)"></i>&nbsp; <%# Eval("titile") %> </p>
                                                                            </blockquote>
                                                                        </ItemTemplate>

                                                                    </asp:Repeater>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <a class="carousel-control-prev" href="#achievement" role="button" data-slide="prev">
                                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                            <span class="sr-only">Previous</span>
                                                        </a>
                                                        <a class="carousel-control-next" href="#achievement" role="button" data-slide="next">
                                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                            <span class="sr-only">Next</span>
                                                        </a>
                                                    </div>

                                                </div>
                                                <%--third Section--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>        
            <%--News & Update End--%>

            <%--Event Start--%>
            <div class="gdlr-core-pbf-wrapper about" style="padding: 70px 0px 50px 0px;">
                <div class="gdlr-core-pbf-background-wrap" style="background: #efefef;"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">

                        <div class="gdlr-core-pbf-element">
                            <div class="gdlr-core-blog-item gdlr-core-item-pdb clearfix  gdlr-core-style-blog-widget">
                                <div class="gdlr-core-block-item-title-wrap  gdlr-core-left-align gdlr-core-item-mglr" id="div_1dd7_46">
                                    <div class="gdlr-core-block-item-title-inner clearfix" style="border-bottom: 5px solid #FFBC09; padding-bottom: 15px;">
                                        <h3 class="gdlr-core-block-item-title" id="h3_1dd7_10">Special Moments</h3>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="container-fluid gdlr-core-event-item-holder clearfix">
                            <div class="row ">
                                <asp:Repeater ID="Summer1" runat="server">
                                    <ItemTemplate>

                                        <div class="col-lg-3 gdlr-core-event-item-thumbnail">
                                            <img src="Admin/<%# Eval("Images") %>" width="900" height="500" alt="" />

                                            <h6 class="gdlr-core-event-item-titless text-center mt-2">
                                                <a href="photo_gallery.aspx"><%# Eval("Name") %></a>
                                            </h6>
                                        </div>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                        </div>
                    </div>


                </div>
            </div>
            <%--Event End--%>

            <%--Facilities Start--%>
            <div class="gdlr-core-pbf-wrapper" style="padding: 80px 0px 40px 0px;">
                <div class="gdlr-core-pbf-background-wrap" style="background-image: url('../images/background.svg');"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">

                        <div class="gdlr-core-pbf-element">
                            <div class="gdlr-core-blog-item gdlr-core-item-pdb clearfix  gdlr-core-style-blog-widget">
                                <div class="gdlr-core-block-item-title-wrap  gdlr-core-left-align gdlr-core-item-mglr" id="div_1dd7_46">
                                    <div class="gdlr-core-block-item-title-inner clearfix" style="border-bottom: 5px solid #FFBC09; padding-bottom: 15px;">
                                        <h3 class="gdlr-core-block-item-title" id="h3_1dd7_10">Facilities</h3>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="gdlr-core-pbf-wrapper " id="div_983a_9" style="padding-left: 50px; padding-right: 50px;">
                            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                    <div class="gdlr-core-pbf-column gdlr-core-column-5 gdlr-core-column-first">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image  gdlr-core-image-item-style-rectangle" id="div_983a_12" style="background: #FFBC09; padding: 20px; border-radius: 50%;">
                                                            <img src="images/icon/playground.png" />
                                                            <%--<img src="images/col-icon-4.png" alt="" width="40" height="43" title="col-icon-3" />--%>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_983a_13">
                                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_1">Playground</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="gdlr-core-pbf-column gdlr-core-column-5">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image  gdlr-core-image-item-style-rectangle" id="div_983a_12" style="background: #FFBC09; padding: 20px; border-radius: 50%;">
                                                            <img src="images/icon/auditorium.png" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_983a_13">
                                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_1">Auditoriums</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="gdlr-core-pbf-column gdlr-core-column-5">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image  gdlr-core-image-item-style-rectangle" id="div_983a_12" style="background: #FFBC09; padding: 20px; border-radius: 50%;">
                                                            <img src="images/icon/biology.png" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_983a_13">
                                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_1">Biology Lab</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="gdlr-core-pbf-column gdlr-core-column-5">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image  gdlr-core-image-item-style-rectangle" id="div_983a_12" style="background: #FFBC09; padding: 20px; border-radius: 50%;">
                                                            <img src="images/icon/chemistry.png" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_983a_13">
                                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_1">Chemistry Lab</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="gdlr-core-pbf-column gdlr-core-column-5">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image  gdlr-core-image-item-style-rectangle" id="div_983a_12" style="background: #FFBC09; padding: 20px; border-radius: 50%;">
                                                            <img src="images/icon/computer.png" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_983a_13">
                                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_1">Computer Labs</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="gdlr-core-pbf-column gdlr-core-column-5">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image  gdlr-core-image-item-style-rectangle" id="div_983a_12" style="background: #FFBC09; padding: 20px; border-radius: 50%;">
                                                            <img src="images/icon/library.png" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_983a_13">
                                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_1">Library</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="gdlr-core-pbf-column gdlr-core-column-5">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image  gdlr-core-image-item-style-rectangle" id="div_983a_12" style="background: #FFBC09; padding: 20px; border-radius: 50%;">
                                                            <img src="images/icon/physics.png" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_983a_13">
                                                        <div class="gdlr-core-title-item-title-wrap clearfix">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_1">Physics Lab</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <%--Facilities End--%>

            <%--Gallery Start--%>
            <div class="gdlr-core-pbf-wrapper about" style="padding: 70px 0px 50px 0px;">
                <div class="gdlr-core-pbf-background-wrap" style="background: #efefef;"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">

                       
                        <div class="gdlr-core-block-item-title-wrap  gdlr-core-left-align gdlr-core-item-mglr" style="margin-bottom: 37px;">
                            <div class="gdlr-core-block-item-title-inner clearfix">
                                <h3 class="gdlr-core-block-item-title" style="font-size: 24px; font-style: normal; text-transform: none; letter-spacing: 0px; color: #163269;">Gallery</h3>
                                <div class="gdlr-core-block-item-title-divider" style="font-size: 24px; border-bottom-color: #FFBC09; border-bottom-width: 5px;"></div>
                            </div>
                            <a class="gdlr-core-block-item-read-more" href="photo_gallery.aspx" target="_self" style="color: #FFBC09;">View All Gallery</a>
                        </div>
                        <div class="gdlr-core-pbf-section">
                            <div class="gdlr-core-pbf-section-container gdlr-core-container clearfix">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-portfolio-item gdlr-core-item-pdb clearfix  gdlr-core-portfolio-item-style-grid-no-space gdlr-core-item-pdlr" style="padding-bottom: 10px;">

                                        <div class="gdlr-core-portfolio-item-holder gdlr-core-js-2 clearfix owl-carousel owl-theme" data-layout="fitrows">

                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>

                                                    <div class="gdlr-core-item-list  gdlr-core-column-42 item">
                                                        <div class="gdlr-core-portfolio-grid  gdlr-core-left-align gdlr-core-style-normal">
                                                            <div class="gdlr-core-portfolio-thumbnail gdlr-core-media-image  gdlr-core-style-title-icon">
                                                                <div class="gdlr-core-portfolio-thumbnail-image-wrap  gdlr-core-zoom-on-hover">
                                                                    <img src="Admin/<%# Eval("image") %>" width="100" height="50" alt="" />
                                                                    <span class="gdlr-core-image-overlay  gdlr-core-portfolio-overlay gdlr-core-image-overlay-center-icon gdlr-core-js">
                                                                        <span class="gdlr-core-image-overlay-content">
                                                                            <span class="gdlr-core-portfolio-icon-wrap"><a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/<%# Eval("image") %>" data-lightbox-group="gdlr-core-img-group-1"><i class="gdlr-core-portfolio-icon arrow_expand"></i></a></span></span>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                 
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <%--Gallery End--%>

        </div>
    </div>
    <%--<script>
        $(document).ready(function () {
            $("#modal").modal('show');
        });
    </script>--%>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.0/owl.carousel.js"></script>
    <script type='text/javascript' src='js/jquery/jquery.js'></script>
    <script type='text/javascript' src='js/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js'></script>
    <script type='text/javascript' src='plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js'></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript">
        /*<![CDATA[*/
        function setREVStartSize(e) {
            try {
                e.c = jQuery(e.c);
                var i = jQuery(window).width(),
                    t = 9999,
                    r = 0,
                    n = 0,
                    l = 0,
                    f = 0,
                    s = 0,
                    h = 0;
                if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function (e, f) {
                    f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e)
                }), t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) {
                    var u = (e.c.width(), jQuery(window).height());
                    if (void 0 != e.fullScreenOffsetContainer) {
                        var c = e.fullScreenOffsetContainer.split(",");
                        if (c) jQuery.each(c, function (e, i) {
                            u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u
                        }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
                    }
                    f = u
                } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
                e.c.closest(".rev_slider_wrapper").css({
                    height: f
                })
            } catch (d) {
                console.log("Failure at Presize of Slider:" + d)
            }
        }; /*]]>*/
    </script>
    <script>
        (function (body) {
            'use strict';
            body.className = body.className.replace(/\btribe-no-js\b/, 'tribe-js');
        })(document.body);
    </script>
    <script>
        var tribe_l10n_datatables = {
            "aria": {
                "sort_ascending": ": activate to sort column ascending",
                "sort_descending": ": activate to sort column descending"
            },
            "length_menu": "Show _MENU_ entries",
            "empty_table": "No data available in table",
            "info": "Showing _START_ to _END_ of _TOTAL_ entries",
            "info_empty": "Showing 0 to 0 of 0 entries",
            "info_filtered": "(filtered from _MAX_ total entries)",
            "zero_records": "No matching records found",
            "search": "Search:",
            "all_selected_text": "All items on this page were selected. ",
            "select_all_link": "Select all pages",
            "clear_selection": "Clear Selection.",
            "pagination": {
                "all": "All",
                "next": "Next",
                "previous": "Previous"
            },
            "select": {
                "rows": {
                    "0": "",
                    "_": ": Selected %d rows",
                    "1": ": Selected 1 row"
                }
            },
            "datepicker": {
                "dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
                "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"],
                "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                "monthNamesShort": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                "monthNamesMin": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                "nextText": "Next",
                "prevText": "Prev",
                "currentText": "Today",
                "closeText": "Done",
                "today": "Today",
                "clear": "Clear"
            }
        };
        var tribe_system_info = {
            "sysinfo_optin_nonce": "a32c675aaa",
            "clipboard_btn_text": "Copy to clipboard",
            "clipboard_copied_text": "System info copied",
            "clipboard_fail_text": "Press \"Cmd + C\" to copy"
        };
    </script>
    <script type="text/javascript">
        /*<![CDATA[*/
        function revslider_showDoubleJqueryError(sliderID) {
            var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
            errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
            errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
            errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
            errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";
            jQuery(sliderID).show().html(errorMessage);
        } /*]]>*/
    </script>
    <script type='text/javascript' src='plugins/goodlayers-core/plugins/combine/script.js'></script>
    <script type='text/javascript'>
        var gdlr_core_pbf = {
            "admin": "",
            "video": {
                "width": "640",
                "height": "360"
            },
            "ajax_url": "https:\/\/demo.goodlayers.com\/kingster\/wp-admin\/admin-ajax.php"
        };
    </script>
    <script type='text/javascript' src='plugins/goodlayers-core/include/js/page-builder.js'></script>
    <script type='text/javascript' src='js/jquery/ui/effect.min.js'></script>
    <script type='text/javascript'>
        var kingster_script_core = {
            "home_url": "https:\/\/demo.goodlayers.com\/kingster\/"
        };
    </script>
    <script type='text/javascript' src='js/plugins.min.js'></script>
    <script>
        /*<![CDATA[*/
        var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
        var htmlDivCss = "";
        if (htmlDiv) {
            htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
        } else {
            var htmlDiv = document.createElement("div");
            htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
            document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
        } /*]]>*/
    </script>
    <script type="text/javascript">
        /*<![CDATA[*/
        if (setREVStartSize !== undefined) setREVStartSize({
            c: '#rev_slider_1_1',
            gridwidth: [1380],
            gridheight: [713],
            sliderLayout: 'auto'
        });
        var revapi1, tpj;
        (function () {
            if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad);
            else onLoad();

            function onLoad() {
                if (tpj === undefined) {
                    tpj = jQuery;
                    if ("off" == "on") tpj.noConflict();
                }
                if (tpj("#rev_slider_1_1").revolution == undefined) {
                    revslider_showDoubleJqueryError("#rev_slider_1_1");
                } else {
                    revapi1 = tpj("#rev_slider_1_1").show().revolution({
                        sliderType: "standard",
                        jsFileLocation: "//demo.goodlayers.com/kingster/wp-content/plugins/revslider/public/assets/js/",
                        sliderLayout: "auto",
                        dottedOverlay: "none",
                        delay: 9000,
                        navigation: {
                            keyboardNavigation: "off",
                            keyboard_direction: "horizontal",
                            mouseScrollNavigation: "off",
                            mouseScrollReverse: "default",
                            onHoverStop: "off",
                            touch: {
                                touchenabled: "on",
                                touchOnDesktop: "off",
                                swipe_threshold: 75,
                                swipe_min_touches: 1,
                                swipe_direction: "horizontal",
                                drag_block_vertical: false
                            },
                            arrows: {
                                style: "uranus",
                                enable: true,
                                hide_onmobile: true,
                                hide_under: 1500,
                                hide_onleave: true,
                                hide_delay: 200,
                                hide_delay_mobile: 1200,
                                tmp: '',
                                left: {
                                    h_align: "left",
                                    v_align: "center",
                                    h_offset: 20,
                                    v_offset: 0
                                },
                                right: {
                                    h_align: "right",
                                    v_align: "center",
                                    h_offset: 20,
                                    v_offset: 0
                                }
                            },
                            bullets: {
                                enable: true,
                                hide_onmobile: false,
                                hide_over: 1499,
                                style: "uranus",
                                hide_onleave: true,
                                hide_delay: 200,
                                hide_delay_mobile: 1200,
                                direction: "horizontal",
                                h_align: "center",
                                v_align: "bottom",
                                h_offset: 0,
                                v_offset: 30,
                                space: 7,
                                tmp: '<span class="tp-bullet-inner"></span>'
                            }
                        },
                        visibilityLevels: [1240, 1024, 778, 480],
                        gridwidth: 1380,
                        gridheight: 713,
                        lazyType: "none",
                        shadow: 0,
                        spinner: "off",
                        stopLoop: "off",
                        stopAfterLoops: -1,
                        stopAtSlide: -1,
                        shuffle: "off",
                        autoHeight: "off",
                        disableProgressBar: "on",
                        hideThumbsOnMobile: "off",
                        hideSliderAtLimit: 0,
                        hideCaptionAtLimit: 0,
                        hideAllCaptionAtLilmit: 0,
                        debugMode: false,
                        fallbacks: {
                            simplifyAll: "off",
                            nextSlideOnWindowFocus: "off",
                            disableFocusListener: false,
                        }
                    });
                };
            };
        }()); /*]]>*/
    </script>
    <script>
        /*<![CDATA[*/
        var htmlDivCss = unescape("%23rev_slider_1_1%20.uranus.tparrows%20%7B%0A%20%20width%3A50px%3B%0A%20%20height%3A50px%3B%0A%20%20background%3Argba%28255%2C255%2C255%2C0%29%3B%0A%20%7D%0A%20%23rev_slider_1_1%20.uranus.tparrows%3Abefore%20%7B%0A%20width%3A50px%3B%0A%20height%3A50px%3B%0A%20line-height%3A50px%3B%0A%20font-size%3A40px%3B%0A%20transition%3Aall%200.3s%3B%0A-webkit-transition%3Aall%200.3s%3B%0A%20%7D%0A%20%0A%20%20%23rev_slider_1_1%20.uranus.tparrows%3Ahover%3Abefore%20%7B%0A%20%20%20%20opacity%3A0.75%3B%0A%20%20%7D%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%7B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C%200%29%3B%0A%20%20-webkit-transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20background%3Atransparent%3B%0A%20%20width%3A15px%3B%0A%20%20height%3A15px%3B%0A%7D%0A%23rev_slider_1_1%20.uranus%20.tp-bullet.selected%2C%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%3Ahover%20%7B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C1%29%3B%0A%20%20border%3Anone%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background%3Atransparent%3B%0A%7D%0A%0A%23rev_slider_1_1%20.uranus%20.tp-bullet-inner%20%7B%0A%20%20-webkit-transition%3A%20background-color%200.3s%20ease%2C%20-webkit-transform%200.3s%20ease%3B%0A%20%20transition%3A%20background-color%200.3s%20ease%2C%20transform%200.3s%20ease%3B%0A%20%20top%3A%200%3B%0A%20%20left%3A%200%3B%0A%20%20width%3A%20100%25%3B%0A%20%20height%3A%20100%25%3B%0A%20%20outline%3A%20none%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background-color%3A%20rgb%28255%2C%20255%2C%20255%29%3B%0A%20%20background-color%3A%20rgba%28255%2C%20255%2C%20255%2C%200.3%29%3B%0A%20%20text-indent%3A%20-999em%3B%0A%20%20cursor%3A%20pointer%3B%0A%20%20position%3A%20absolute%3B%0A%7D%0A%0A%23rev_slider_1_1%20.uranus%20.tp-bullet.selected%20.tp-bullet-inner%2C%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%3Ahover%20.tp-bullet-inner%7B%0A%20transform%3A%20scale%280.4%29%3B%0A%20-webkit-transform%3A%20scale%280.4%29%3B%0A%20background-color%3Argb%28255%2C%20255%2C%20255%29%3B%0A%7D%0A");
        var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
        if (htmlDiv) {
            htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
        } else {
            var htmlDiv = document.createElement('div');
            htmlDiv.innerHTML = '<style>' + htmlDivCss + '</style>';
            document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
        } /*]]>*/
    </script>
    <script>
        (function ($) {

            "use strict";


            //Hide Loading Box (Preloader)
            function handlePreloader() {
                if ($('.preloader').length) {
                    $('.preloader').delay(200).fadeOut(500);
                }
            }


            //Update Header Style and Scroll to Top
            function headerStyle() {
                if ($('.main-header').length) {
                    var windowpos = $(window).scrollTop();
                    var siteHeader = $('.main-header');
                    var scrollLink = $('.scroll-to-top');
                    if (windowpos >= 1) {
                        siteHeader.addClass('fixed-header');
                        scrollLink.fadeIn(300);
                    } else {
                        siteHeader.removeClass('fixed-header');
                        scrollLink.fadeOut(300);
                    }
                }
            }

            headerStyle();


            //Submenu Dropdown Toggle
            if ($('.main-header li.dropdown ul').length) {
                $('.main-header li.dropdown').append('<div class="dropdown-btn"><span class="fa fa-angle-down"></span></div>');

                //Dropdown Button
                $('.main-header li.dropdown .dropdown-btn').on('click', function () {
                    $(this).prev('ul').slideToggle(500);
                });

                //Disable dropdown parent link
                $('.main-header .navigation li.dropdown > a,.hidden-bar .side-menu li.dropdown > a').on('click', function (e) {
                    e.preventDefault();
                });
            }

            //Side Content Toggle
            if ($('.main-header .outer-box .nav-btn').length) {
                //Show Form
                $('.main-header .outer-box .nav-btn').on('click', function (e) {
                    e.preventDefault();
                    $('body').addClass('side-content-visible');
                });
                //Hide Form
                $('.hidden-bar .inner-box .cross-icon,.form-back-drop,.close-menu').on('click', function (e) {
                    e.preventDefault();
                    $('body').removeClass('side-content-visible');
                });
                //Dropdown Menu
                $('.fullscreen-menu .navigation li.dropdown > a').on('click', function () {
                    $(this).next('ul').slideToggle(500);
                });
            }

            //Hidden Sidebar
            if ($('.hidden-bar').length) {
                $('.hidden-bar').mCustomScrollbar({
                    theme: "dark"
                });
            }

            // Testimonial Carousel
            if ($('.testimonial-carousel').length) {
                $('.testimonial-carousel').owlCarousel({
                    animateOut: 'slideOutDown',
                    animateIn: 'zoomIn',
                    loop: true,
                    margin: 0,
                    nav: true,
                    smartSpeed: 300,
                    autoplay: 7000,
                    navText: ['<span class="arrow-left"></span>', '<span class="arrow-right"></span>'],
                    responsive: {
                        0: {
                            items: 1
                        },
                        600: {
                            items: 1
                        },
                        800: {
                            items: 1
                        },
                        1024: {
                            items: 1
                        }
                    }
                });
            }


            //Fact Counter + Text Count
            if ($('.count-box').length) {
                $('.count-box').appear(function () {

                    var $t = $(this),
                        n = $t.find(".count-text").attr("data-stop"),
                        r = parseInt($t.find(".count-text").attr("data-speed"), 10);

                    if (!$t.hasClass("counted")) {
                        $t.addClass("counted");
                        $({
                            countNum: $t.find(".count-text").text()
                        }).animate({
                            countNum: n
                        }, {
                            duration: r,
                            easing: "linear",
                            step: function () {
                                $t.find(".count-text").text(Math.floor(this.countNum));
                            },
                            complete: function () {
                                $t.find(".count-text").text(this.countNum);
                            }
                        });
                    }

                }, { accY: 0 });
            }


            //Accordion Box
            if ($('.accordion-box').length) {
                $(".accordion-box").on('click', '.acc-btn', function () {

                    var outerBox = $(this).parents('.accordion-box');
                    var target = $(this).parents('.accordion');

                    if ($(this).hasClass('active') !== true) {
                        $(outerBox).find('.accordion .acc-btn').removeClass('active');
                    }

                    if ($(this).next('.acc-content').is(':visible')) {
                        return false;
                    } else {
                        $(this).addClass('active');
                        $(outerBox).children('.accordion').removeClass('active-block');
                        $(outerBox).find('.accordion').children('.acc-content').slideUp(300);
                        target.addClass('active-block');
                        $(this).next('.acc-content').slideDown(300);
                    }
                });
            }


            //Tabs Box
            if ($('.tabs-box').length) {
                $('.tabs-box .tab-buttons .tab-btn').on('click', function (e) {
                    e.preventDefault();
                    var target = $($(this).attr('data-tab'));

                    if ($(target).is(':visible')) {
                        return false;
                    } else {
                        target.parents('.tabs-box').find('.tab-buttons').find('.tab-btn').removeClass('active-btn');
                        $(this).addClass('active-btn');
                        target.parents('.tabs-box').find('.tabs-content').find('.tab').fadeOut(0);
                        target.parents('.tabs-box').find('.tabs-content').find('.tab').removeClass('active-tab animated fadeIn');
                        $(target).fadeIn(300);
                        $(target).addClass('active-tab animated fadeIn');
                    }
                });
            }


            //Default Masonary
            function defaultMasonry() {
                if ($('.masonry-items-container').length) {

                    var winDow = $(window);
                    // Needed variables
                    var $container = $('.masonry-items-container');

                    $container.isotope({
                        itemSelector: '.masonry-item',
                        masonry: {
                            columnWidth: 2
                        },
                        animationOptions: {
                            duration: 500,
                            easing: 'linear'
                        }
                    });

                    winDow.on('resize', function () {

                        $container.isotope({
                            itemSelector: '.masonry-item',
                            animationOptions: {
                                duration: 500,
                                easing: 'linear',
                                queue: false
                            }
                        });
                    });
                }
            }
            defaultMasonry();

            //Gallery Filters
            if ($('.filter-list').length) {
                $('.filter-list').mixItUp({});
            }

            //LightBox / Fancybox
            if ($('.lightbox-image').length) {
                $('.lightbox-image').fancybox({
                    openEffect: 'fade',
                    closeEffect: 'fade',
                    helpers: {
                        media: {}
                    }
                });
            }

            //Contact Form Validation
            if ($('#contact-form').length) {
                $('#contact-form').validate({
                    rules: {
                        username: {
                            required: true
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        phone: {
                            required: true
                        },
                        message: {
                            required: true
                        }
                    }
                });
            }


            // Scroll to a Specific Div
            if ($('.scroll-to-target').length) {
                $(".scroll-to-target").on('click', function () {
                    var target = $(this).attr('data-target');
                    // animate
                    $('html, body').animate({
                        scrollTop: $(target).offset().top
                    }, 1500);

                });
            }

            if ($('.paroller').length) {
                $('.paroller').paroller({
                    factor: 0.05,            // multiplier for scrolling speed and offset, +- values for direction control  
                    factorLg: 0.05,          // multiplier for scrolling speed and offset if window width is less than 1200px, +- values for direction control  
                    type: 'foreground',     // background, foreground  
                    direction: 'horizontal' // vertical, horizontal  
                });
            }


            if ($('.timer').length) {
                $(function () {
                    $('[data-countdown]').each(function () {
                        var $this = $(this), finalDate = $(this).data('countdown');
                        $this.countdown(finalDate, function (event) {
                            $this.html(event.strftime('%D days %H:%M:%S'));
                        });
                    });
                });

                $('.cs-countdown').countdown('').on('update.countdown', function (event) {
                    var $this = $(this).html(event.strftime('<div class="count-col"><span>%m</span><h6>Months</h6></div> <div class="count-col"><span>%D</span><h6>days</h6></div> <div class="count-col"><span>%H</span><h6>Hours</h6></div> <div class="count-col"><span>%M</span><h6>Minutes</h6></div> <div class="count-col"><span>%S</span><h6>Seconds</h6></div>'));
                });
            }

            if ($('.wow').length) {
                var wow = new WOW(
                    {
                        boxClass: 'wow',      // animated element css class (default is wow)
                        animateClass: 'animated', // animation css class (default is animated)
                        offset: 0,          // distance to the element when triggering the animation (default is 0)
                        mobile: true,       // trigger animations on mobile devices (default is true)
                        live: true       // act on asynchronously loaded content (default is true)
                    }
                );
                wow.init();
            }

            $(window).on('scroll', function () {
                headerStyle();
            });

            $(window).on('load', function () {
                handlePreloader();
                defaultMasonry();
            });

        })(window.jQuery);
    </script>

</asp:Content>

