<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="alumni_data.aspx.cs" Inherits="Admin_alumni_data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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


    
             <div class="container-fluid" >
            <div class="row">
                <div class="col-lg-12" style="overflow: auto; height: 100%;">
                    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" CssClass="gridview" OnPageIndexChanging="gv1_PageIndexChanging" PageSize="50" AllowPaging="true">
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
                                    <asp:Label  ID="hlblename" runat="server" Text="Name" Width="250"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </ItemTemplate>

                                <EditItemTemplate>
                                    <asp:TextBox ID="inputname" runat="server" Text='<%# Eval("Name") %>' Width="250"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderStyle CssClass="hdrow" />
                                <HeaderTemplate>
                                    <asp:Label ID="hlbledes" runat="server" Text="Designation" Width="250"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbldes" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                                </ItemTemplate>

                                <EditItemTemplate>
                                    <asp:TextBox ID="inputDes" runat="server" Text='<%# Eval("designation") %>' Width="250"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderStyle CssClass="hdrow" />
                                <HeaderTemplate>
       <asp:Label ID="hlbleyear" runat="server" Text="Passing Year" Width="250"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
       <asp:Label ID="lblyear" runat="server" Text='<%# Eval("PassingYear") %>'></asp:Label>
                                </ItemTemplate>

                                <EditItemTemplate>
                                  
 <asp:TextBox ID="inputyear" runat="server" Text='<%# Eval("PassingYear") %>' Width="150"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                           
                            <asp:TemplateField>
                                <HeaderStyle CssClass="hdrow" />
                                <HeaderTemplate>
              <asp:Label ID="hlblimg" runat="server" Text="Image" Width="100px"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                 <img src="Images/Alumni/<%# Eval("Photo") %>" style="height: 70px; width: 80px; margin-left:10px" />
                                  
                                  
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:FileUpload ID="fu1" runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField>
                                <HeaderStyle CssClass="hdrow" />
                                <HeaderTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="Action" Width="80px"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                  <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                                   
                                        <%--<asp:CheckBox ID="SelectCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="SelectCheckBox_OnCheckedChanged"    />

                                    <asp:CheckBox ID="SelectCheck" runat="server" AutoPostBack="true" OnCheckedChanged="SelectCheck_CheckedChanged"   />--%>
           
                                    
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
                                  

                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderStyle CssClass="hdrow" />
                                <HeaderTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="Show" Width="50px"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <asp:CheckBox ID="SelectCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="SelectCheckBox_OnCheckedChanged" />
                                </ItemTemplate>

                            </asp:TemplateField>



                            <asp:TemplateField>
                                <HeaderStyle CssClass="hdrow" />
                                <HeaderTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="Hide" Width="50px"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>

                                      <asp:CheckBox ID="SelectCheck" runat="server" AutoPostBack="true" OnCheckedChanged="SelectCheck_CheckedChanged"   />
                                </ItemTemplate>

                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>



</asp:Content>

