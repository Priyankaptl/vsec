<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="alumni.aspx.cs" Inherits="alumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        figure {
            border: 1px #cccccc solid;
            padding: 4px;
            margin: 0px;
        }

            figure img {
                height: 450px;
            }

        figcaption {
            background-color: #07294D;
            color: white;
            font-style: italic;
            padding: 2px;
            text-align: center;
        }

        .kingster-body a:hover {
            color: #fff !important;
        }

        .alumni h3 {
            color: #07294D;
            padding-bottom: 20px;
            border-bottom: 6px solid #07294D;
            text-align: left;
            font-size: 30px;
            padding-left: 30px;
            width: 60%;
        }
    </style>

    <style>
        .section-padding {
            padding: 50px 10px;
            background: #efefef;
        }

        .card img {
            border-radius: 50%;
            height: 200px;
            width: 200px;
            margin: 30px auto 0px;
        }

        .card .card-title {
            text-align: center;
            color: #FFBC09;
            font-weight: bold;
            font-size: 22px;
            letter-spacing: 1.5px;
            margin-bottom: 0px;
        }

        .card-text {
            text-align: center;
            font-weight: bold;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">
            <div class="gdlr-core-pbf-wrapper " style="padding: 50px 20px 30px 20px;">
                <div class="gdlr-core-pbf-background-wrap"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">

                        <div class="container-fluid mb-5" style="background: #e6e6e6; border: 2px solid #07294D;">
                            <div class="row pt-3">
                                <div class="col-lg-9 alumni">
                                    <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="">SOME OF OUR ILLUSTRIOUS ALUMNI
                                    </h3>
                                </div>

                                <div class="col-lg-3 alumnus">
                                    <p style="text-transform: none; color: #fff; background: #07294D; width: 60%; margin-top: 12px; padding: 10px; border-radius: 30px; text-align: center; font-weight: bold; color: #FFBC09 !important">
                                        <a href="alumniform.aspx" style="color: #FFBC09 !important;">Alumnus Register</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="gdlr-core-pbf-element">
                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 60px;">
                                <div class="gdlr-core-title-item-title-wrap clearfix">


                                    <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption">Dr. VSEC has carved a niche in the field of education with the unique and holistic learning experience it provides to each of its students...be it academics, sports, drama, music or art , the school hones the talent in its students to the optimum by providing them numerous platforms and opportunities galore. We take pride in our young VSECians, who have completed their learning here and are happy to see them come back to their alma mater as highly respected civil servants, dashing officers in armed forces, dynamic young entrepreneurs, brilliant musicians and well known actors ready to take on the world . May the VSECians carry forward the school's legacy of excellence as we continue to create many more milestones etched in the sands of time...
                                    </span>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="section-padding">
        <div class="container">
            <div class="row">



                <asp:Repeater ID="Alumni1" runat="server">
                      <ItemTemplate>

                <div class="col-lg-4 mb-5">
                    <div class="card">

                        <img class="card-img-top" src="Admin/Images/Alumni/<%# Eval("Photo") %>" alt="Card image cap" />
                        <div class="card-body">
                            <p class="card-title"><%# Eval("Name") %></p>
                            <p class="card-text">
                                <%# Eval("PassingYear") %>
                            <br />
                                <small class="text-muted"><%# Eval("designation") %></small>
                            </p>

                        </div>
                    </div>
                </div>
                          </ItemTemplate>
                          </asp:Repeater>






            </div>
        </div>
    </section>

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

    <script type="text/javascript">
        window.onload = function () {
            document.getElementById("1403317").checked = true;
        }
    </script>

</asp:Content>

