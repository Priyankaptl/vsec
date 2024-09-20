<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admission_query_form.aspx.cs" Inherits="admission_query_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        table tr td {
            padding: 3px 0px !important;
            background: white;
            border: 1px solid grey;
        }

        input[type=checkbox], input[type=radio] {
            box-sizing: border-box;
            padding: 0;
            background-color: initial;
            cursor: default;
            appearance: auto;
            box-sizing: border-box;
            margin: -6px 3px 0px 5px;
            padding: initial;
            border: initial;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">

            <!-- About Image Section start-->
            <div class="Aboutusimg">
                <div class="Aboutusbreadcrumb">
                    <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                        <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                        <li class="active">Admission Query Form</li>
                    </ol>
                </div>
            </div>
            <!-- About Image Section End -->

            <div class="gdlr-core-pbf-wrapper " style="padding: 50px 20px 30px 20px;">
                <div class="gdlr-core-pbf-background-wrap"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">


                        <div class="row  con">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label11" Text="Father's Name" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="fname" class="form-control" placeholder="Enter Your Father Name" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Father's Name is required" ControlToValidate="fname"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label14" Text="Occupation" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="foccupation" class="form-control" placeholder="Enter Your Father Occupation" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Occupation is required" ControlToValidate="foccupation"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="form-row top-offset-20">
                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label3" Text="Mother's Name" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="mname" class="form-control" placeholder="Enter Your Mother Name" />
                                    </div>

                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label15" Text="Occupation" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="moccupation" class="form-control" placeholder="Enter Your Mother Occupation" />
                                    </div>
                                </div>

                                <div class="form-row top-offset-20">
                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label17" Text="Contact Number" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="number" class="form-control" placeholder="Enter Your Contact Number" TextMode="Number" />
                                    </div>

                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label18" Text="Email Address" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="email" class="form-control" placeholder="Enter Your Email" TextMode="Email" />
                                    </div>
                                </div>

                                <div class="form-row top-offset-20">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" ID="label1" Text="Residential Address" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="address" class="form-control" placeholder="Write Your Full Address" TextMode="MultiLine" />
                                    </div>
                                </div>

                                <div class="form-row top-offset-20">

                                    <div class="form-group col-md-4">
                                        <asp:Label runat="server" ID="label20" Text="Child's Name" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="chils" class="form-control" placeholder="Enter Your Child Name" />
                                    </div>

                                    <div class="form-group col-md-4">
                                        <asp:Label runat="server" ID="label4" Text="DOB" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="dob" class="form-control" TextMode="Date" />
                                    </div>

                                    <div class="form-group col-md-4">
                                        <asp:Label runat="server" ID="label21" Text="Gender" CssClass="lbl"></asp:Label>
                                        <asp:RadioButtonList runat="server" ID="gender" RepeatDirection="Horizontal">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>

                                </div>

                                <div class="form-row top-offset-20">
                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label22" Text="Current School & Board (if applicable)" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="school" class="form-control" placeholder="Enter Your Current School" />
                                    </div>

                                    <div class="form-group col-md-6">
                                        <asp:Label runat="server" ID="label24" Text="Current Class (if applicable)" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="subject" class="form-control" placeholder="Enter Your Current Class" />
                                    </div>
                                </div>

                                <div class="form-row top-offset-20">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" ID="label2" Text="Query Message" CssClass="lbl"></asp:Label>
                                        <asp:TextBox runat="server" ID="msgsdTA" class="form-control" placeholder="Write Your Query here.." TextMode="MultiLine" Rows="5" />
                                    </div>
                                </div>

                                <div class="form-group col-md-12 top-offset-30" style="margin-top: 25px;">
                                    <asp:Button runat="server" ID="btn" class="career_button btn-block mt-4" Text="Submit" Onclick="btn_Click1" />
                                </div>
                            </div>
                            <div class="col-sm-1"></div>
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

