<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="download.aspx.cs" Inherits="download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />

    <link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap_css" />
    <script src="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>


    <style type="text/css">
        body {
            overflow-x: hidden;
        }

        .table-bordered {
            border: 1px solid #dddddd;
            border-collapse: separate;
            border-left: 0;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
        }

        .table {
            width: 100% !important;
            margin-bottom: 20px;
            background-color: transparent;
            border-collapse: collapse;
            border-spacing: 0;
            display: table;
            text-align: center;
        }

        .table tr{
            height: 50px;
        }
        
        tbody tr th{
            font-weight: bold;
        }

        .table tr th{
            text-align: center;  
        }

        .table tr td{
            text-align: center;
            padding-top: 15px;   
        }

        thead {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }

		.fee-amt a {
			color: #07294D;
		}

        @media only screen and (max-width: 767px){
            .Aboutusbreadcrumb {
                position: absolute;
                top: 35%;
                 left: 3%; 
            }

            body {
                padding: 0px;
            }

            .topbar{
                padding: 0px;
            }
        }
        
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="home page-template-default page page-id-2039 gdlr-core-body woocommerce-no-js tribe-no-js kingster-body kingster-body-front kingster-full  kingster-with-sticky-navigation  kingster-blockquote-style-1 gdlr-core-link-to-lightbox" style="background: #f9f8f8;">
        <!-- About Image Section start-->
        <div class="Aboutusimg">
            <div class="Aboutusbreadcrumb">
                <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                   <li><a href="Default.aspx">Home</a></li>
                   <li class="active">Examination Syllabus</li>
                </ol>
            </div>     
        </div>
        <!--About Section start -->

        <div class="col-lg-12 col-md-6 animation animated fadeInUp" data-animation="fadeInUp" data-animation-delay="0.3s" style="animation-delay: 0.3s; opacity: 1;">
            <div class="icon_box icon_box_style1 box_shadow1 text-center">
                <div class="icon_box_content">
                    <h5 class="mt-5" style="color: #FFBC09;">Examination Syllabus</h5>

                     <div class="table-responsive" style="margin-top: 20px; margin-bottom: 20px; ">

                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                             <Columns>
                                 <asp:BoundField DataField="Name" HeaderText="File Name" ItemStyle-Width="900px" />
                                 <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="View">
                                     <ItemTemplate>
                                         <asp:LinkButton ID="lbnkVidTtile1" runat="Server" CssClass="bodytext" Text="View" CommandArgument='<%#Eval("id") %>' Onclick="lbnkVidTtile1_Click" />

                                     </ItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Download">
                                     <ItemTemplate>

                                      <%-- <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" onclick="lnkDownload_Click" 
                                             CommandArgument='<%# Eval("id") %>' ItemStyle-Width="450px"></asp:LinkButton>--%>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                         </asp:GridView>
                    </div>



                </div>
            </div>
        </div>

    </div>


</asp:Content>

