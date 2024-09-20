<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Photo-gallery.aspx.cs" Inherits="Admin_Photo_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .btn {
            display: inline-block;
            padding: 0px 6px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
        }
    </style>

    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="breadcrumb box-title">Add Gallery Images</h3>
                            <ol class="breadcrumb pull-right">
                                <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>&nbsp;Dashboard</a></li>
                                <li class="active">Add Gallery Images</li>
                            </ol>
                        </div>
                        <hr />
                        <div class="box-body">
<%--                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <asp:Literal ID="lt_msg" runat="server"></asp:Literal>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4" style="background: rgba(242, 242, 242, 1.00); border: 2px solid #f2f2f2; margin-top: 20px; padding-top: 20px; margin-left:500px;">
                                                <asp:UpdatePanel ID="UpdFileUpload" runat="server">
                                                    <ContentTemplate>
                                                        <asp:DropDownList ID="DDlCategory" Style="width: 100%" CssClass="form-control txt" runat="server">
                                                            <asp:ListItem Value=" Selected disabled hidden">--Select Category--</asp:ListItem>
                                                            <asp:ListItem Value="Photo Gallery">Photo </asp:ListItem>
                                                            <asp:ListItem Value="News & Media">Video</asp:ListItem>
                                                            <asp:ListItem Value="Awards & Achevement">Awards & Achevement</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br />
                                                        <label>Choose Multiple Images:-</label><br />
                                                        <asp:FileUpload ID="FuImage" multiple="multiple" runat="server" CssClass="form-control" />
                                                        <asp:TextBox ID="TxtDescription" Visible="false" CssClass="form-control" runat="server" placeholder="Description..." TextMode="MultiLine" Height="100px" Width="100%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:Button ID="btnSaveFile" Text="Save" runat="server" OnClick="btnSaveFile_Click" CssClass="form-control btn btn-success" /><br />
                                                        <br />
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:PostBackTrigger ControlID="btnSaveFile" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
                      
           
</asp:Content>

