<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="career.aspx.cs" Inherits="career" %>

  

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <style>
        table tr:nth-child(odd),
        table tr:nth-child(even) {
            background-color: #fff;
        }

        .column {
            border: 1px solid #efefef;
            padding: 0px 20px;
            text-align: left;
        }

        input, textarea {
            border: none !important;
            outline: none !important;
        }

        .lbl {
            text-align: left !important;
        }

        .btn {
            border-radius: 10px;
        }

        @media only screen and (max-width: 767px) {
            .column {
                margin-top: 10px;
            }
        }
    </style>

    <style>
        table {
          border-collapse: collapse;
          border-spacing: 0;
          width: 100%;
          border: 1px solid #ddd;
        }

        table tr th {
            background: #fff;
            color: #07294D;
            text-align: center;
            font-weight: bold;
        }

        th, td {
          text-align: left;
          width: 200px;
          padding: 8px;
          border: 1px solid #efefef;
        }

        tr:nth-child(even){background-color: #f2f2f2}
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
                        <li class="active">Career</li>
                    </ol>
                </div>
            </div>
            <!-- About Image Section End -->

            <div class="gdlr-core-pbf-wrapper " style="padding: 100px 20px 30px 20px;">
                <div class="gdlr-core-pbf-background-wrap"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">

                        <div class="gdlr-core-pbf-element">
                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 60px;">
                                <div class="gdlr-core-title-item-title-wrap clearfix">
                                    <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="text-transform: none; color: #07294D;">Brighten Your Career
                                    </h3>
                                </div>
                                <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 20px;">Explore for Opportunities Here.
                                </span>
                            </div>
                        </div>


                        <div class="row  con">
                            <div class="col-sm-1"></div>

                            <div class="col-sm-10">

                                <div class="row">
                                    <div class="col-lg-4 column">
                                        <asp:Label runat="server" ID="label13" Text="Post Applied for:" CssClass="lbl"></asp:Label>
                                    </div>

                                    <div class="col-lg-8 column">
                                        <asp:TextBox runat="server" ID="post" class="form-control" />

                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Post can not be blank" ControlToValidate="post" ForeColor="Red"></asp:RequiredFieldValidator>  
                                    </div>

                                    <div class="col-lg-12 column">
                                        <h5 style="text-align: center; padding: 10px 0px; height: 30px; color: #07294D; vertical-align: middle;">PERSONAL INFORMATION</h5>
                                    </div>

                                    <div class="col-lg-4 column">
                                        <asp:Label runat="server" ID="label3" Text="Name(In Block Letters)" CssClass="lbl"></asp:Label>
                                    </div>

                                    <div class="col-lg-8 column">
                                        <asp:TextBox runat="server" ID="name" class="form-control" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name can not be blank" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator> 
                                    </div>

                                    <div class="col-lg-4 column">
                                        <asp:Label runat="server" ID="label4" Text="Date of Birth" CssClass="lbl"></asp:Label>
                                    </div>

                                    <div class="col-lg-8 column">
                                    <%--    <asp:TextBox runat="server" ID="dob" TextMode="DateTime" class="form-control" />--%>

                                        <asp:TextBox ID="dob" Style="width: 100%" runat="server" ></asp:TextBox>
                                    </div>

                                    <div class="col-lg-4 column">
                                        <asp:Label runat="server" ID="label5" Text="Residential Address" CssClass="lbl"></asp:Label>
                                    </div>

                                    <div class="col-lg-8 column">
                                        <asp:TextBox runat="server" ID="address" TextMode="MultiLine" class="form-control" />
                                    </div>

                                    <div class="col-lg-4 column">
                                        <asp:Label runat="server" ID="label6" Text="Contact Number(s)" CssClass="lbl"></asp:Label>
                                    </div>

                                    <div class="col-lg-8 column">
                                        <asp:TextBox runat="server" ID="mobile" class="form-control" />

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="mobile" ForeColor="Red"></asp:RequiredFieldValidator>  
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  
                                    </div>

                                    <div class="col-lg-4 column">
                                        <asp:Label runat="server" ID="label7" Text="Email Address" CssClass="lbl"></asp:Label>
                                    </div>

                                    <div class="col-lg-8 column">
                                        <asp:TextBox runat="server" ID="email" TextMode="Email" class="form-control" />

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>  
  
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
  
                                    </div>

                                    <div class="col-lg-8 column">
                                        <p class="pt-2" style="text-align: center; font-weight: bold; color: #07294D;">Are you an ex-student of Dr. Virendra Swarup Education Centre? (Y/N)</p>
                                    </div>

                                    <div class="col-lg-4 column">
                                        <asp:TextBox runat="server" ID="student" class="form-control" />
                                    </div>

                                </div>

                          

                                <div class="row mt-5">
                                    <div class="col-lg-12 column">
                                        <h5 style="text-align: center; padding: 10px 0px; height: 30px; color: #07294D; vertical-align: middle;">Academic Qualifications</h5>
                                    </div>

                                  <%--  <div class="col-lg-12">--%>
                                       <div class="container" style="width:100%; height: 100%; overflow-x: scroll;">
                                        <div class="row">
                                            <div class="col-lg-2 column">
                                                <asp:Label runat="server" ID="label2" Text="" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:Label runat="server" ID="label1" Text="Marks %"  CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:Label runat="server" ID="label12" Text="Board/ University" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:Label runat="server" ID="label14" Text="School/College" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-3 column">
                                                <asp:Label runat="server" ID="label15" Text="Subjects/Specialization If any" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-1 column">
                                                <asp:Label runat="server" ID="label16" Text="Year" CssClass="lbl"></asp:Label>
                                            </div>
                                        </div>
                                  

                                  
                                        <div class="row">
                                            <div class="col-lg-2 col-sm-2 column text-center">
                                                <asp:Label runat="server" ID="label8" Text="X" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 col-sm-2  column">
                                                <asp:TextBox runat="server" ID="Xmarks" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 col-sm-2 column">
                                                <asp:TextBox runat="server" ID="Xboard" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 col-sm-2 column">
                                                <asp:TextBox runat="server" ID="Xschool" class="form-control" />
                                            </div>

                                            <div class="col-lg-3 col-sm-3 column">
                                                <asp:TextBox runat="server" ID="Xsubject" class="form-control" />
                                            </div>

                                            <div class="col-lg-1 col-sm-1 column">
                                                <asp:TextBox runat="server" ID="Xyear" class="form-control" />
                                            </div>
                                        </div>
                                    
                                        <div class="row">
                                            <div class="col-lg-2 column text-center">
                                                <asp:Label runat="server" ID="label9" Text="XII" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="marks1" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="board2" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="school3" class="form-control" />
                                            </div>

                                            <div class="col-lg-3 column">
                                                <asp:TextBox runat="server" ID="subject4" class="form-control" />
                                            </div>

                                            <div class="col-lg-1 column">
                                                <asp:TextBox runat="server" ID="year5" class="form-control" />
                                            </div>
                                        </div>
                                  

                                   
                                        <div class="row">
                                            <div class="col-lg-2 column text-center">
                                                <asp:Label runat="server" ID="label10" Text="Graduation" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="Graduation" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="Graduation1" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="Graduation2" class="form-control" />
                                            </div>

                                            <div class="col-lg-3 column">
                                                <asp:TextBox runat="server" ID="Graduation3" class="form-control" />
                                            </div>

                                            <div class="col-lg-1 column">
                                                <asp:TextBox runat="server" ID="Graduation4" class="form-control" />
                                            </div>
                                        </div>
                                   
                                        <div class="row">
                                            <div class="col-lg-2 column text-center">
                                                <asp:Label runat="server" ID="label11" Text="Post Graduation" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtPost" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtPost1" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtPost2" class="form-control" />
                                            </div>

                                            <div class="col-lg-3 column">
                                                <asp:TextBox runat="server" ID="txtPost3" class="form-control" />
                                            </div>

                                            <div class="col-lg-1 column">
                                                <asp:TextBox runat="server" ID="txtPost4" class="form-control" />
                                            </div>
                                        </div>
                                  
                                        <div class="row">
                                            <div class="col-lg-2 column text-center">
                                                <asp:Label runat="server" ID="label17" Text="B.Ed/M.Ed" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtbed" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtbed1" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtbed2" class="form-control" />
                                            </div>

                                            <div class="col-lg-3 column">
                                                <asp:TextBox runat="server" ID="txtbed3" class="form-control" />
                                            </div>

                                            <div class="col-lg-1 column">
                                                <asp:TextBox runat="server" ID="txtbed4" class="form-control" />
                                            </div>
                                        </div>
                               

                              
                                        <div class="row">
                                            <div class="col-lg-2 column text-center">
                                                <asp:Label runat="server" ID="label18" Text="Any Other Qualification" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txt_Qualification1" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txt_Qualification2" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txt_Qualification3" class="form-control" />
                                            </div>

                                            <div class="col-lg-3 column">
                                                <asp:TextBox runat="server" ID="txt_Qualification4" class="form-control" />
                                            </div>

                                            <div class="col-lg-1 column">
                                                <asp:TextBox runat="server" ID="txt_Qualification5" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row mt-5">
                                    <div class="col-lg-12 column">
                                        <h5 style="text-align: center; padding: 10px 0px; height: 30px; color: #07294D; vertical-align: middle;">Work Experience (leave blank if you are a fresher)</h5>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="col-lg-4 column">
                                                <asp:Label runat="server" ID="label19" Text="Name of Institution" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:Label runat="server" ID="label20" Text="From Month/Year" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:Label runat="server" ID="label21" Text="To Month/Year" CssClass="lbl"></asp:Label>
                                            </div>

                                            <div class="col-lg-4 column">
                                                <asp:Label runat="server" ID="label22" Text="Subject(s) & Classes Taught" CssClass="lbl"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="col-lg-4 column">
                                                <asp:TextBox runat="server" ID="txtInstitution" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtfromMonthYear" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txttoMonthYear" class="form-control" />
                                            </div>

                                            <div class="col-lg-4 column">
                                                <asp:TextBox runat="server" ID="txtSubjectnew" class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="col-lg-4 column">
                                                <asp:TextBox runat="server" ID="txtInstitution1" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtfromMonthYear2" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txttoMonthYear3" class="form-control" />
                                            </div>

                                            <div class="col-lg-4 column">
                                                <asp:TextBox runat="server" ID="txtSubjectnew4" class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="col-lg-4 column">
                                                <asp:TextBox runat="server" ID="txtInstitution5" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txtfromMonthYear6" class="form-control" />
                                            </div>

                                            <div class="col-lg-2 column">
                                                <asp:TextBox runat="server" ID="txttoMonthYear7" class="form-control" />
                                            </div>

                                            <div class="col-lg-4 column">
                                                <asp:TextBox runat="server" ID="txtSubjectnew8" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                               

                                 <div class="row mt-5">
                                     
                                    <div class="col-lg-4 column">
                                        <asp:Label runat="server" ID="label23" Text="Upload Resume (Size less than 5 mb )" CssClass="lbl"></asp:Label>
                                    </div>

                                    <div class="col-lg-8 column">
                                        <asp:FileUpload runat="server" ID="resume" />
    
                                    <h5 style="color:red">Resume Upload Required </h5>

                                    </div>


                                </div>

                                <div class="col-lg-12 mt-5">
                                    <center>
                                        <asp:Button  ID="button" runat="server" Text="Submit Application" CssClass="btn" Onclick="button_Click1" />
                                    </center>
                                    
                                </div>

                            </div>

                            <div >
                          

                         
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

