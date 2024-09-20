<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/bootstrap.min.css' type='text/css' media='all' />


    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />


    <style>
            input {
                height: 50px;
                margin-top: 10px;
            }

            .contact{
                background: #fffbfb;
            }

            .contact .gdlr-core-column-20 .gdlr-core-pbf-column-content-margin .gdlr-core-pbf-column-content{
                background-image: url(images/contactbg.jpg);
            }
        

            .contact .gdlr-core-pbf-element {
                border: 1px solid #efefef;
                /*border: 1px solid #726969;*/
                height: 220px;
                padding: 50px 20px;
            }

            .contact .gdlr-core-pbf-element h3 {
                text-align: center;
                color: #FFBC09;
                font-size: 24px;
                font-weight: 700;
                text-transform: capitalize;
            }

            .contact .gdlr-core-pbf-element p {
                text-align: center;
                padding-top: 20px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">

            <div class="Aboutusimg">
                <div class="Aboutusbreadcrumb">
                    <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                        <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                        <li class="active">Contact Us</li>
                    </ol>
                </div>
            </div>

            <div class="gdlr-core-pbf-wrapper contact">
                <div class="gdlr-core-pbf-background-wrap"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js"  style="padding-bottom: 50px;">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">

                        <div class="gdlr-core-pbf-column gdlr-core-column-20 gdlr-core-column-first" >
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 0px 20px 0px 20px;">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                            <div class="gdlr-core-title-item-title-wrap clearfix">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Principal's meeting time:-</h3>
                                                <br />

                                                <p class="gdlr-core-skin-title " style="font-size: 20px;">
                                                    Monday- Thursday
                                                    <br />
                                                    9:00 AM - 10:00AM
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="gdlr-core-pbf-column gdlr-core-column-20">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 0px 20px 0px 20px;">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix ">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Location</h3>
                                            <ul>
                                                <li class=" gdlr-core-skin-divider gdlr-core-with-hover">
                                                    <span class="gdlr-core-icon-list-icon-wrap">
                                                        <i class="gdlr-core-icon-list-icon-hover fa fa-map-marker" style="font-size: 30px;"></i>
                                                        <i class="gdlr-core-icon-list-icon fa fa-map-marker" style="font-size: 40px; width: 40px;"></i>
                                                    </span>
                                                    <div class="gdlr-core-icon-list-content-wrap">
                                                        <span class="gdlr-core-icon-list-content" style="font-size: 18px; text-align: center">435-A, H2-Block,
                                                            Kidwai Nagar,
                                                            Kanpur-208011</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="gdlr-core-pbf-column gdlr-core-column-20">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 0px 20px 0px 20px;">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">

                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix ">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Get In Touch</h3>
                                            <ul style="padding-left: 40px;">

                                                <li class=" gdlr-core-skin-divider gdlr-core-with-hover">
                                                    <span class="gdlr-core-icon-list-icon-wrap">
                                                        <i class="gdlr-core-icon-list-icon-hover fa fa-envelope-o" style="font-size: 30px;"></i>
                                                        <i class="gdlr-core-icon-list-icon fa fa-envelope-o" style="font-size: 30px; width: 40px;"></i>
                                                    </span>
                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content" style="font-size: 20px;">contact@vsec.in</span></div>
                                                </li>

                                                <li class=" gdlr-core-skin-divider gdlr-core-with-hover"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon-hover fa fa-phone" style="font-size: 16px;"></i><i class="gdlr-core-icon-list-icon fa fa-phone" style="font-size: 30px; width: 40px;"></i></span>
                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content" style="font-size: 20px;">0512-2641352/53/54</span></div>
                                                </li>
                                            </ul>
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

    <div class="gdlr-core-pbf-wrapper " style="padding: 0px;">
        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                <div class="gdlr-core-pbf-element">
                    <div class="gdlr-core-wp-google-map-plugin-item gdlr-core-item-pdlr gdlr-core-item-pdb " style="padding-bottom: 0px;">

                        <div style="overflow: hidden; width: 100%; position: relative;">

                            <iframe style="width: 100%; height: 480px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3572.7887076881575!2d80.3293185!3d26.4302943!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399c4704df4f0115%3A0x3bb04d22310b29c3!2sDr.%20Virendra%20Swarup%20Education%20Centre!5e0!3m2!1sen!2sin!4v1677636444384!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
                            <div style="position: absolute; width: 80%; bottom: 20px; left: 0; right: 0; margin-left: auto; margin-right: auto; color: #000;">
                            </div>
                            <style>
                                #gmap_canvas img {
                                    max-width: none !important;
                                    background: none !important
                                }
                            </style>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>



    <%--<div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">

            <div class="Aboutusimg">
                <div class="Aboutusbreadcrumb">
                    <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                        <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                        <li class="active">Contact</li>
                    </ol>
                </div>
            </div>

            <div class="gdlr-core-pbf-wrapper ">
                <div class="gdlr-core-pbf-background-wrap" style="background-color: #f5f5f5;"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                        <div class="gdlr-core-pbf-column gdlr-core-column-40 gdlr-core-column-first">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 0px 20px 0px 20px;">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 25px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 32px; font-weight: 700; color: #07294D;">Leave us your information</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-contact-form-7-item gdlr-core-item-pdlr gdlr-core-item-pdb ">
                                            <div role="form" class="wpcf7" id="wpcf7-f1979-p1977-o1" lang="en-US" dir="ltr">
                                                <div class="screen-reader-response"></div>
                                                <div class="quform-elements">
                                                    <div class="quform-element">
                                                        <p class="mb-0 mt-0">
                                                            Your Name
                                                                <br>
                                                            <span class="wpcf7-form-control-wrap your-name">
                                                                <asp:TextBox runat="server" ID="name" name="Name" size="40" class="input1" aria-required="true" aria-invalid="false" />

                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>

                                                            </span>
                                                        </p>
                                                    </div>

                                                    <div class="quform-element">
                                                        <p class="mb-0 mt-0">
                                                            Your Mobile
                                                                <br>
                                                            <span class="wpcf7-form-control-wrap your-name">
                                                                <asp:TextBox runat="server" ID="mobile" name="Mobile" size="40" class="input1" aria-required="true" aria-invalid="false" />

                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mobile is Required" ForeColor="Red" ControlToValidate="mobile"></asp:RequiredFieldValidator>

                                                            </span>
                                                        </p>
                                                    </div>

                                                    <div class="quform-element">
                                                        <p class="mb-0 mt-0">
                                                            Your Email
                                                                <br>
                                                            <span class="wpcf7-form-control-wrap your-email">
                                                                <asp:TextBox runat="server" ID="email" name="Email" size="40" class="input1" aria-required="true" aria-invalid="false" />

                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>

                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Format Invalid" ControlToValidate="email" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>

                                                            </span>
                                                        </p>
                                                    </div>

                                                    <div class="quform-element">
                                                        <p class="mb-0 mt-0">
                                                            Your Message
                                                                <br>
                                                            <span class="wpcf7-form-control-wrap your-message">
                                                                <asp:TextBox runat="server" ID="message" name="message" class="input1 mt-3" aria-invalid="false" TextMode="MultiLine" />
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <p>
                                                        
                                                        <div class="quform-submit">
                                                            <div class="quform-submit-inner ">
                                                                <asp:Button runat="server" ID="btn" Text="Send" CssClass=" btn btn-block submit-button" OnClick="btn_Click" />
                                                            </div>
                                                            <div class="quform-loading-wrap"><span class="quform-loading"></span></div>
                                                        </div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="gdlr-core-pbf-column gdlr-core-column-20">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 0px 20px 0px 20px;">
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 0px; margin-bottom: 0px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 28px; font-weight: 700; color: #07294D;">Get In Touch </h3>
                                                <br />
                                                <br />
                                                <p class="gdlr-core-skin-title " style="font-size: 20px;">
                                                    <span class="font-weight-bold">Principle's meeting time:-</span><br />
                                                    Mon- Thurday
                                                    <br />
                                                    9:00 AM - 10:00AM
                                                </p>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix ">
                                            <ul>
                                                <li class=" gdlr-core-skin-divider gdlr-core-with-hover"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon-hover fa fa-map-marker" style="font-size: 16px;"></i><i class="gdlr-core-icon-list-icon fa fa-map-marker" style="font-size: 18px; width: 16px;"></i></span>
                                                    <div class="gdlr-core-icon-list-content-wrap">
                                                        <span class="gdlr-core-icon-list-content" style="font-size: 16px;">435-A, H2-Block,
                                                        <br />
                                                            Kidwai Nagar,
                                                        <br />
                                                            Kanpur-208011</span>
                                                    </div>
                                                </li>

                                                <li class=" gdlr-core-skin-divider gdlr-core-with-hover"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon-hover fa fa-envelope-o" style="font-size: 16px;"></i><i class="gdlr-core-icon-list-icon fa fa-envelope-o" style="font-size: 16px; width: 16px;"></i></span>
                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content" style="font-size: 16px;">contact@vsec.in</span></div>
                                                </li>

                                                <li class=" gdlr-core-skin-divider gdlr-core-with-hover"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon-hover fa fa-phone" style="font-size: 16px;"></i><i class="gdlr-core-icon-list-icon fa fa-phone" style="font-size: 16px; width: 16px;"></i></span>
                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content" style="font-size: 16px;">0512-2641352/53/54</span></div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 25px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 28px; font-weight: 700; color: #07294D;">Map</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-wp-google-map-plugin-item gdlr-core-item-pdlr gdlr-core-item-pdb " style="padding-bottom: 0px;">
                                            <div style="overflow: hidden; width: 100%; position: relative;">

                                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3572.7887076881575!2d80.3293185!3d26.4302943!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399c4704df4f0115%3A0x3bb04d22310b29c3!2sDr.%20Virendra%20Swarup%20Education%20Centre!5e0!3m2!1sen!2sin!4v1677636444384!5m2!1sen!2sin" width="300" height="300" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                                                <div style="position: absolute; width: 80%; bottom: 20px; left: 0; right: 0; margin-left: auto; margin-right: auto; color: #000;">
                                                </div>
                                                <style>
                                                    #gmap_canvas img {
                                                        max-width: none !important;
                                                        background: none !important;
                                                    }
                                                </style>
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
    </div>--%>


    <script type='text/javascript' src='JS/jquery/jquery.js'></script>
    <script type='text/javascript' src='JS/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js'></script>
    <script type='text/javascript' src='plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js'></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.video.min.js"></script>


    <script type='text/javascript' src='plugins/goodlayers-core/plugins/combine/script.js'></script>
    <script type='text/javascript' src='plugins/goodlayers-core/include/js/page-builder.js'></script>
    <script type='text/javascript' src='JS/jquery/ui/effect.min.js'></script>
    <script type='text/javascript' src='JS/plugins.min.js'></script>

</asp:Content>

