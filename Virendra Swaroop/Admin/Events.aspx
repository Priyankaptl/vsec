<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Admin_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

     <style>
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
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="box">
                        <div class="box-header">
                            <h5 class="breadcrumb box-title">Add Achievements</h5>
                        </div>
                        <hr />
                        <div class="box-body">
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Literal ID="lt_msg" runat="server"></asp:Literal>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-lg-4"></div>
                                                <div class="col-lg-4" style="background: rgba(242, 242, 242, 1.00); border: 2px solid #f2f2f2; margin-top: 20px; padding-top: 20px;">

                                                    <label>Upload Images:-</label><br />
             <asp:FileUpload ID="FuImage" multiple="multiple" runat="server" CssClass="form-control" />
                                      <asp:UpdatePanel ID="UpdFileUpload" runat="server">


                                                        <ContentTemplate>
                                                            <br />
                                                            <label>Title</label>

                                                            <asp:TextBox runat="server" ID="title" TextMode="MultiLine" CssClass="form-control txt" placeholder="Enter Description..."></asp:TextBox>


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
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>

            <br />
  

            <div class="container-fluid" >
                <div class="row">
                    <div class="col-lg-12">
                        <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" CssClass="gridview" OnPageIndexChanging="gv1_PageIndexChanging" PageSize="10" AllowPaging="true">
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlbleid" runat="server" Text="Sr.No" Width="50px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbleid" runat="server" Text='<%# Eval("id") %> '></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow"  />
                                    <HeaderTemplate>
                                        <asp:Label  ID="hlbledate" runat="server" Text="Title" Width="500"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="inputDate" runat="server" Text='<%# Eval("Title") %>' Width="500"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="hlblimg" runat="server" Text="Image" Width="100px"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                  <img src="<%# Eval("Photo") %>" style="height:70px; width: 80px; margin-left:10px" />
                                       
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="fu1" runat="server" />

                                       
                                    </EditItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField>
                                    <HeaderStyle CssClass="hdrow" />
                                    <HeaderTemplate>
                                        <asp:Label ID="Label3" runat="server" Text="Action" Width="130px"></asp:Label>
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

