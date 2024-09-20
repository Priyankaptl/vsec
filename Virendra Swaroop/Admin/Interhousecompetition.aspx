<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Interhousecompetition.aspx.cs" Inherits="Admin_Interhousecompetition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
                            <h3 class="breadcrumb box-title">Add Events</h3>
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



                                     <div style="background-color: lightgray; border-radius: 10px 10px;width:700px; margin-left:200px">

            <br />
                                         <div class="row">
                                        
                                              <div class="col-md-1 col-lg-1">
                                                  </div>
                                             <div class="col-md-5 col-lg-5">
                                                 <asp:TextBox ID="title" Style="width: 100%" CssClass="form-control txt" runat="server" placeholder="competition title..." />
                                             </div>

                                             <div class="col-md-5 col-lg-5">
                                                 <asp:TextBox ID="date" CssClass="form-control" runat="server" placeholder="enter the date..." />
                                                    <div class="col-md-1 col-lg-1">
       </div>
                                             </div>
                                             </div>

                                         <div style="height:15px"></div>

                                             <div class="row">
                                                      <div class="col-md-1 col-lg-1">
                                                          </div>

                                                 <div class="col-md-5 col-lg-5">
                                                     <asp:TextBox ID="month" CssClass="form-control" runat="server" placeholder="enter the month..." />
                                                 </div>

                                             <div class="col-md-5 col-lg-5">
                                                 <asp:TextBox ID="day" CssClass="form-control" runat="server" placeholder="enter the day..." />
                                             </div>
                                          
                                                 <div class="col-md-1 col-lg-1">
    </div>
                                            
                                         </div>

                                             <div style="height:15px"></div>

                                           <div style="height:20px; width:100px;margin-left:300px">
                                          <asp:Button ID="btnSaveFile" Text="Save" runat="server" OnClick="btnSaveFile_Click" CssClass="form-control btn btn-success" /><br />
                                               </div>
                                           <div style="height:25px"></div>
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
          <div class="col-lg-12" style="overflow: auto; height: 100%;">
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
                                        <asp:Label  ID="hlbleCom" runat="server" Text="Competition" Width="300"></asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblCom" runat="server" Text='<%# Eval("Competition") %>'></asp:Label>
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCom" runat="server" Text='<%# Eval("Competition") %>' Width="300"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>



                      <asp:TemplateField>
                          <HeaderStyle CssClass="hdrow"  />
                          <HeaderTemplate>
                              <asp:Label  ID="hlbledate" runat="server" Text="Date" Width="150"></asp:Label>
                          </HeaderTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                          </ItemTemplate>

                          <EditItemTemplate>
                              <asp:TextBox ID="inputDate" runat="server" Text='<%# Eval("Date") %>' Width="150"></asp:TextBox>
                          </EditItemTemplate>
                      </asp:TemplateField>



                       <asp:TemplateField>
     <HeaderStyle CssClass="hdrow"  />
     <HeaderTemplate>
         <asp:Label  ID="hlblemonth" runat="server" Text="Month" Width="180"></asp:Label>
     </HeaderTemplate>
     <ItemTemplate>
         <asp:Label ID="lblmonth" runat="server" Text='<%# Eval("Month") %>'></asp:Label>
     </ItemTemplate>

     <EditItemTemplate>
         <asp:TextBox ID="txtmonth" runat="server" Text='<%# Eval("Month") %>' Width="180"></asp:TextBox>
     </EditItemTemplate>
 </asp:TemplateField>
                     
                      
                       <asp:TemplateField>
     <HeaderStyle CssClass="hdrow"  />
     <HeaderTemplate>
         <asp:Label  ID="hlbleDay" runat="server" Text="Day" Width="180"></asp:Label>
     </HeaderTemplate>
     <ItemTemplate>
         <asp:Label ID="lblday" runat="server" Text='<%# Eval("Day") %>'></asp:Label>
     </ItemTemplate>

     <EditItemTemplate>
         <asp:TextBox ID="txtday" runat="server" Text='<%# Eval("Day") %>' Width="300"></asp:TextBox>
     </EditItemTemplate>
 </asp:TemplateField>



                      <asp:TemplateField>
                          <HeaderStyle CssClass="hdrow" />
                          <HeaderTemplate>
                              <asp:Label ID="lblAA" runat="server" Text="Action" Width="130px"></asp:Label>
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

