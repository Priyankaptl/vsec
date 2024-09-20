 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="download.aspx.cs" Inherits="Admin_download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    #customers {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 22px;
            text-align: left;
            background-color: #7072e6;
            color: white;
        }
</style>



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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-header">
                        <h5 class="breadcrumb box-title">Add Syllabus</h5>
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
                                                 <label>Title</label>

 <asp:TextBox runat="server" ID="title" TextMode="MultiLine" CssClass="form-control txt" placeholder="Enter Description..."></asp:TextBox>
                                                </br>


                                                <asp:Label ID="lbl1" runat="server" Text="Pdf Upload" />


                                                <br />
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <asp:UpdatePanel ID="UpdFileUpload" runat="server">


                                                    <ContentTemplate>
                                                        <br />
                                                       
                                                      
                                                        <asp:Button ID="btnSaveFile" Text="Save" runat="server"  CssClass="form-control btn btn-success" OnClick="btnSaveFile_Click" /><br />
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
 

   
                <div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" CssClass="gridview" OnPageIndexChanging="gv1_PageIndexChanging" PageSize="10" AllowPaging="true">
                <columns>
                    <asp:TemplateField  >
                        <headerstyle cssclass="hdrow" />
                        <headertemplate>
                            <asp:Label ID="hlbleid" runat="server" Text="Sr.No" Width="50px"></asp:Label>
                        </headertemplate>
                        <itemtemplate>
                            <asp:Label ID="lbleid" runat="server" Text='<%# Eval("id") %> '></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>


                    <asp:TemplateField>
                        <HeaderStyle CssClass="hdrow" />
                        <HeaderTemplate>
                            <asp:Label ID="hlblename" runat="server" Text="Upload Pdf Name" Width="300"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("name") %>' Width="300"></asp:TextBox>

                        </EditItemTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField>
                        <headerstyle cssclass="hdrow" />
                        <headertemplate>
                            <asp:Label ID="hlblimg" runat="server" Text="Image" width="350px"></asp:Label>
                        </headertemplate>
                        <itemtemplate >
                         
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContentType") %>'></asp:Label>

                      
                        </itemtemplate>
                        <edititemtemplate>
                            <asp:FileUpload ID="fu1" runat="server" />
                        </edititemtemplate>
                    </asp:TemplateField>


                    <asp:TemplateField>
                        <headerstyle cssclass="hdrow" />

                        <headertemplate>
           <asp:Label ID="Label3" runat="server" Text="Action" width="120px"></asp:Label>
               </headertemplate>
                        <itemtemplate>
                            <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                            <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
                        </itemtemplate>
                        <edititemtemplate>
                            <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
                            <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" />
                        </edititemtemplate>
                    </asp:TemplateField>
                </columns>
            </asp:GridView>
        </div>
    </div>
</div>





    </section>




</div>





</asp:Content>

