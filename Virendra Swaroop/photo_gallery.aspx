<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="photo_gallery.aspx.cs" Inherits="photo_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .as{
            width:0px;
        }
        /*Cards CSS*/
        .gallery-img {
            position: relative;
        }

        .galley-img img {
            /*height: 300px;*/
            width: 100%;
            margin-top: 25px;
        }

        .text-block {
            color: #fff;
            width: 70%;
            bottom: 20px;
            font-weight: 100;
            font-size: 15px;
            text-transform: uppercase;
            position: absolute;
        }

            .text-block h3 {
                font-size: 15px;
                margin-top: 6px;
                /* background: #07294D;*/
                /*background: #0a1b46a6;*/
                padding: 10px;
                color: #fff;
                background-color: #00000085;
                margin-bottom: 0px !important;
            }

            .text-block a {
                font-size: 14px;
                margin-bottom: 0px;
                background: #FFBC09;
                font-weight: bold;
                color: #fff;
            }

                .text-block a:hover {
                    color: #fff !important;
                }

        .event {
            margin-top: 50px;
            margin-bottom: 60px;
        }
    </style>

    <style>
        .gdlr-core-pbf-element .gdlr-core-title-item .depart_head h3 {
            /*font-size: 20px; 
            font-weight: 600; 
            background: #FFBC09;
            color: white;
            padding: 10px 50px;
            border-radius: 10px;*/

            font-size: 20px;
            font-weight: 600;
            letter-spacing: 0px;
            text-transform: none;
            background: #FFBC09;
            color: white;
            padding: 10px 15px;
            border-radius: 10px;
            margin-right: 20px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- About Image Section start-->
    <div class="Aboutusimg">
        <div class="Aboutusbreadcrumb">
            <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                <li class="active">Photo Gallery</li>
            </ol>
        </div>
    </div>
    <!--About Section start -->

   <%-- <div class="container event">
        <div class="row">

            
        </div>
    </div>--%>

    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">

            <div class="gdlr-core-pbf-sidebar-wrapper" style="padding-top: 50px;">
                <div class="gdlr-core-pbf-sidebar-container gdlr-core-line-height-0 clearfix gdlr-core-js gdlr-core-container">

                  

                    <asp:Repeater ID="datalist1" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>


                            <div class="gdlr-core-pbf-element">
                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                    <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title"><%# Eval("events") %></h3>
                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title"><%# Eval("eventsdate") %></h3>
                                        <div class="gdlr-core-title-item-divider gdlr-core-right gdlr-core-skin-divider" style="font-size: 22px; border-bottom-width: 3px;"></div>
                                    </div>
                                </div>
                            </div>


                            <div class="gdlr-core-pbf-element">
                                <div class="gdlr-core-gallery-item gdlr-core-item-pdb clearfix  gdlr-core-gallery-item-style-scroll gdlr-core-item-pdlr ">
                                    <div class="gdlr-core-sly-slider gdlr-core-js-2">
                                        <ul class="slides">
                                            <li class="gdlr-core-gallery-list gdlr-core-item-mglr">
                                                <div class="gdlr-core-media-image" style="height: 250px;">
                                                    <a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/Images/Gallery/<%# Eval("photo") %>" data-lightbox-group="gdlr-core-img-group-3">
                                          <img src="Admin/Images/Gallery//<%# Eval("photo") %>" width="2000" height="1335" alt="" /><span class="gdlr-core-image-overlay  gdlr-core-gallery-image-overlay gdlr-core-center-align"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"></i></span></a>
                                                </div>
                                            </li>

                                            <li class="gdlr-core-gallery-list gdlr-core-item-mglr">
                                                <div class="gdlr-core-media-image" style="height: 250px;">
                                                    <a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/Images/Gallery//<%# Eval("photo1") %>" data-lightbox-group="gdlr-core-img-group-3">
                                                        <img src="Admin/Images/Gallery//<%# Eval("photo1") %>" width="2000" height="1335" alt="" /><span class="gdlr-core-image-overlay  gdlr-core-gallery-image-overlay gdlr-core-center-align"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"></i></span></a>
                                                </div>
                                            </li>

                                            <li class="gdlr-core-gallery-list gdlr-core-item-mglr">
                                                <div class="gdlr-core-media-image" style="height: 250px;">
                                                    <a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/Images/Gallery//<%# Eval("photo2") %>" data-lightbox-group="gdlr-core-img-group-3">
                                                        <img src="Admin/Images/Gallery//<%# Eval("photo2") %>" width="2000"  height="1335" alt="" /><span class="gdlr-core-image-overlay  gdlr-core-gallery-image-overlay gdlr-core-center-align"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"></i></span></a>
                                                </div>
                                            </li>
                                            <li class="gdlr-core-gallery-list gdlr-core-item-mglr">
                                                <div class="gdlr-core-media-image" style="height: 250px;">
                                                    <a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/Images/Gallery//<%# Eval("photo3") %>" data-lightbox-group="gdlr-core-img-group-3">

                                                        <img src="Admin/Images/Gallery//<%# Eval("photo3") %>" width="2000" height="1335" alt="" /><span class="gdlr-core-image-overlay  gdlr-core-gallery-image-overlay gdlr-core-center-align"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"></i></span></a>
                                                </div>
                                            </li>
                                            <li class="gdlr-core-gallery-list gdlr-core-item-mglr">
                                                <div class="gdlr-core-media-image" style="height: 250px;">
                                                    <a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/Images/Gallery/<%# Eval("photo4") %>" data-lightbox-group="gdlr-core-img-group-3">
                                                        <img src="Admin/Images/Gallery/<%# Eval("photo4") %>" width="2000" height="1335" alt="" /><span class="gdlr-core-image-overlay  gdlr-core-gallery-image-overlay gdlr-core-center-align"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"></i></span></a>
                                                </div>
                                            </li>
                                            <li class="gdlr-core-gallery-list gdlr-core-item-mglr">
                                                <div class="gdlr-core-media-image" style="height: 250px;">
                                                    <a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/Images/Gallery/<%# Eval("photo5") %>" data-lightbox-group="gdlr-core-img-group-3">
                                                        <img src="Admin/Images/Gallery/<%# Eval("photo5") %>" width="2000" height="1335" alt="" /><span class="gdlr-core-image-overlay  gdlr-core-gallery-image-overlay gdlr-core-center-align"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"></i></span></a>
                                                </div>
                                            </li>
                                            <li class="gdlr-core-gallery-list gdlr-core-item-mglr">
                                                <div class="gdlr-core-media-image" style="height: 250px;">
                                                    <a class="gdlr-core-lightgallery gdlr-core-js " href="Admin/Images/Gallery/<%# Eval("photo6") %>" data-lightbox-group="gdlr-core-img-group-3">
                                                        <img src="Admin/Images/Gallery/<%# Eval("photo6") %>" width="2000" height="1335" alt="" /><span class="gdlr-core-image-overlay  gdlr-core-gallery-image-overlay gdlr-core-center-align"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"></i></span></a>
                                                </div>
                                            </li>

                                        </ul>
                                    </div>


                                    <div class="gdlr-core-sly-scroll">
                                        <div class="gdlr-core-sly-scroll-handle"></div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:Repeater>
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


