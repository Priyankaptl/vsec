<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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

        .hdrow {
            text-align: center;
            color: White;
            background-color: #110c58;
            height: 30px;
        }

        .gridview {
            width: 50%;
            background-color: white;
            margin: 0px auto;
        }

        .scrolling {
            position: absolute;
        }

        .gvWidthHight {
            overflow: scroll;
            /*height: 250px;*/
            width: 600px;
        }

        .col-lg-3 {
            margin-top: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="breadcrumb box-title">Add Gallery Images</h3>
                            </div>
                            <hr />
                            <div class="box-body">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Literal ID="lt_msg" runat="server"></asp:Literal>
                                            </div>


                                            <div class="col-lg-12" style="background: rgba(242, 242, 242, 1.00); border: 2px solid #f2f2f2;">
                                                <div class="row" style="margin-left: 10px; margin-right: 10px">

                                                    <div class="col-md-3 col-lg-3">

                                                        <label>Enter Events</label><br />

                                                        <asp:TextBox ID="Events" Style="width: 100%" CssClass="form-control txt" runat="server" placeholder="Enter Events ..." />
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <label>Events date </label>
                                                        <br />


                      <asp:TextBox ID="TxtDob" Style="width: 100%" CssClass="form-control txt" runat="server" placeholder="Enter date & days..."></asp:TextBox>

                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <label>Upload  Photos </label>
                                                        <br />
                                                        <asp:FileUpload ID="FuImage" runat="server" CssClass="form-control" />
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">

                                                        <label>Upload  Photos </label>
                                                        <br />
                                                        <asp:FileUpload ID="FuImage1" runat="server" CssClass="form-control" />

                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <label>Upload  Photos </label>
                                                        <br />
                                                        <asp:FileUpload ID="FuImage2" runat="server" CssClass="form-control" />

                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <label>Upload  Photos </label>
                                                        <br />
                                                        <asp:FileUpload ID="FuImage3" runat="server" CssClass="form-control" />

                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <label>Upload  Photos </label>
                                                        <br />
                                                        <asp:FileUpload ID="FuImage4" runat="server" CssClass="form-control" />
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">

                                                        <label>Upload  Photos </label>
                                                        <br />
                                                        <asp:FileUpload ID="FuImage5" runat="server" CssClass="form-control" />

                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <label>Upload  Photos </label>
                                                        <br />
                                                        <asp:FileUpload ID="FuImage6" runat="server" CssClass="form-control" />
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <br />
                                                        <asp:Button ID="btnSaveFile" Text="Save" runat="server" OnClick="btnSaveFile_Click" CssClass="form-control btn btn-success" />

                                                    </div>
                                                </div>

                                                <br />
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:PostBackTrigger ControlID="btnSaveFile" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                            <div class="col-lg-4"></div>
                        </div>
                    </div>
                </div>
            </div>
            <br />

            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 gvWidthHight">
                        <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" CssClass="gridview" OnPageIndexChanging="gv1_PageIndexChanging" PageSize="10" AllowPaging="true">
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlbleid" runat="server" Text="Sr.No" Width="40px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbleid" runat="server" Text='<%# Eval("id") %> '></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlbleCom" runat="server" Text="Events" Width="150"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblCom" runat="server" Text='<%# Eval("events") %>'></asp:Label>
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCom" runat="server" Text='<%# Eval("events") %>' Width="150"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlbledate" runat="server" Text="Date/time" Width="100"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("eventsdate") %>'></asp:Label>
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="inputDate" runat="server" Text='<%# Eval("eventsdate") %>' Width="200"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
              <asp:Label ID="hlblimg" runat="server" Text="Image" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
       <img src="Images/Gallery/<%# Eval("photo") %>" style="height: 70px; width: 80px; margin-left: 10px" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu1" runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
            <asp:Label ID="hlblimg" runat="server" Text="Image 2" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
      <img src="Images/Gallery/<%# Eval("photo1") %>" style="height: 70px; width: 80px; margin-left: 10px" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu2" runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
            <asp:Label ID="hlblimg" runat="server" Text="Image 3" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <img src="Images/Gallery/<%# Eval("photo2") %>" style="height: 70px; width: 80px; margin-left: 10px" />
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu3" runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlblimg" runat="server" Text="Image 4" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <img src="Images/Gallery/<%# Eval("photo3") %>" style="height: 70px; width: 80px; margin-left: 10px" />
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu4" runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlblimg" runat="server" Text="Image 5" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <img src="Images/Gallery/<%# Eval("photo4") %>" style="height: 70px; width: 80px; margin-left: 10px" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu5" runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlblimg" runat="server" Text="Image 6" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <img src="Images/Gallery/<%# Eval("photo5") %>" style="height: 70px; width: 80px; margin-left: 10px" />
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu6" runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlblimg" runat="server" Text="Image 7" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <img src="Images/Gallery/<%# Eval("photo6") %>" style="height: 70px; width: 80px; margin-left: 10px" />
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu7" runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />

                                    <HeaderTemplate>
                                        <asp:Label ID="Label3" runat="server" Text="Action" Width="150px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                                        <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
                                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

        </section>
    </div>

</asp:Content>

