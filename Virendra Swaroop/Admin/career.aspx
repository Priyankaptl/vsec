<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="career.aspx.cs" Inherits="Admin_career" EnableEventValidation="false" %>




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
        #btn2
        {
            margin :25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
    <asp:Button  ID="btn2" runat="server" OnClick="btn2_Click" Text="Export Data to Excel" CssClass="m-4"  />
 
    
    <div class="container-fluid">
        <div class="row">
          
            <div class="col-lg-12" style="overflow: auto; height: 100%;">
                 
                <asp:GridView ID="gv5" runat="server" AutoGenerateColumns="false" OnRowDeleting="gv1_RowDeleting" CssClass="gridview" OnRowDataBound="gv2_RowDataBound" PageSize="10" AllowPaging="true">
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
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblePost" runat="server" Text="Post" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPost" runat="server" Text='<%# Eval("Post") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtPost" runat="server" Text='<%# Eval("Post") %>' Width="150"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblename" runat="server" Text="Name" Width="150"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("Name") %>' Width="150"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleEmail" runat="server" Text="Email" Width="150"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("Email") %>' Width="150"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblemobile" runat="server" Text="Mobile" Width="120"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblmobile" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtmobile" runat="server" Text='<%# Eval("Mobile") %>' Width="120"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleresume" runat="server" Text="Resume" Width="80"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>

                                <asp:Label ID="lblResume" runat="server" Text='<%# Eval("Resume") %>'></asp:Label>
                                <%--   <asp:Button ID="btnDownload" runat="server" Text="Download" Onclick="btnDownload_Click" />--%>

                                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="btnDownload_Click"
                                    ItemStyle-Width="450px"></asp:LinkButton>
                                <asp:HiddenField ID="Reid" runat="server" Value='<%# Eval ("id") %>' />
                            </ItemTemplate>


                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblemarks" runat="server" Text="Marks" Width="50"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblmarks" runat="server" Text='<%# Eval("Marks") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtmarks" runat="server" Text='<%# Eval("Marks") %>' Width="50"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleboard" runat="server" Text="Board" Width="50"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblboard" runat="server" Text='<%# Eval("Board") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtboard" runat="server" Text='<%# Eval("Board") %>' Width="50"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleschool" runat="server" Text="School" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblschool" runat="server" Text='<%# Eval("School") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtschool" runat="server" Text='<%# Eval("School") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleSubject" runat="server" Text="Subjects" Width="80"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("Subjects") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtSubjects" runat="server" Text='<%# Eval("Subjects") %>' Width="80"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleyear" runat="server" Text="Year" Width="50"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblyear" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtyear" runat="server" Text='<%# Eval("Year") %>' Width="50"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleXIImarks" runat="server" Text="XII marks" Width="60"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblXIImarks" runat="server" Text='<%# Eval("XIImarks") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtXIImarks" runat="server" Text='<%# Eval("XIImarks") %>' Width="60"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleXIIboard" runat="server" Text="XII board" Width="60"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblXIIboard" runat="server" Text='<%# Eval("XIIboard") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtXIIboard" runat="server" Text='<%# Eval("XIIboard") %>' Width="60"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleXIIschool" runat="server" Text="XII school" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblXIIschool" runat="server" Text='<%# Eval("XIIschool") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtXIIschool" runat="server" Text='<%# Eval("XIIschool") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleXIIyear" runat="server" Text="XII year" Width="60"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblXIIyear" runat="server" Text='<%# Eval("XIIyear") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtXIIyear" runat="server" Text='<%# Eval("XIIyear") %>' Width="60"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleGraduation1" runat="server" Text="Graduation" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblGraduation1" runat="server" Text='<%# Eval("Graduation1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtGraduation1" runat="server" Text='<%# Eval("Graduation1") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleGraduation2" runat="server" Text="Graduation" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblGraduation2" runat="server" Text='<%# Eval("Graduation2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtGraduation2" runat="server" Text='<%# Eval("Graduation2") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleGraduation3" runat="server" Text="Graduation" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblGraduation3" runat="server" Text='<%# Eval("Graduation3") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtGraduation3" runat="server" Text='<%# Eval("Graduation3") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleGraduation4" runat="server" Text="Graduation" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblGraduation4" runat="server" Text='<%# Eval("Graduation4") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtGraduation4" runat="server" Text='<%# Eval("Graduation4") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleGraduation5" runat="server" Text="Graduation" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblGraduation5" runat="server" Text='<%# Eval("Graduation5") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtGraduation5" runat="server" Text='<%# Eval("Graduation5") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblePost1" runat="server" Text="Post" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPost1" runat="server" Text='<%# Eval("Post1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtPost1" runat="server" Text='<%# Eval("Post1") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblePost2" runat="server" Text="Post" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPost2" runat="server" Text='<%# Eval("Post2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtPost2" runat="server" Text='<%# Eval("Post2") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblePost3" runat="server" Text="Post" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPost3" runat="server" Text='<%# Eval("Post3") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtPost3" runat="server" Text='<%# Eval("Post3") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblePost4" runat="server" Text="Post" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPost4" runat="server" Text='<%# Eval("Post4") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtPost4" runat="server" Text='<%# Eval("Post4") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlblePost5" runat="server" Text="Post" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPost5" runat="server" Text='<%# Eval("Post5") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtPost5" runat="server" Text='<%# Eval("Post5") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleBEdMEd1" runat="server" Text="BEdMEd1" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblBEdMEd1" runat="server" Text='<%# Eval("BEdMEd1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtBEdMEd1" runat="server" Text='<%# Eval("BEdMEd1") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleBEdMEd2" runat="server" Text="BEdMEd1" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblBEdMEd2" runat="server" Text='<%# Eval("BEdMEd2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtBEdMEd2" runat="server" Text='<%# Eval("BEdMEd2") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleBEdMEd3" runat="server" Text="BEdMEd1" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblBEdMEd3" runat="server" Text='<%# Eval("BEdMEd3") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtBEdMEd3" runat="server" Text='<%# Eval("BEdMEd3") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleBEdMEd4" runat="server" Text="BEdMEd1" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblBEdMEd4" runat="server" Text='<%# Eval("BEdMEd4") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtBEdMEd4" runat="server" Text='<%# Eval("BEdMEd4") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleBEdMEd5" runat="server" Text="BEdMEd1" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblBEdMEd5" runat="server" Text='<%# Eval("BEdMEd5") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtBEdMEd5" runat="server" Text='<%# Eval("BEdMEd5") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleAnyOther1" runat="server" Text="Any Other" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAnyOther1" runat="server" Text='<%# Eval("AnyOther1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtAnyOther1" runat="server" Text='<%# Eval("AnyOther1") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleAnyOther2" runat="server" Text="AnyOther2" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAnyOther2" runat="server" Text='<%# Eval("AnyOther2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtAnyOther2" runat="server" Text='<%# Eval("AnyOther2") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleAnyOther3" runat="server" Text="AnyOther" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAnyOther3" runat="server" Text='<%# Eval("AnyOther3") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtAnyOther3" runat="server" Text='<%# Eval("AnyOther3") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleAnyOther4" runat="server" Text="AnyOther" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAnyOther4" runat="server" Text='<%# Eval("AnyOther4") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtAnyOther4" runat="server" Text='<%# Eval("AnyOther4") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleAnyOther5" runat="server" Text="AnyOther" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAnyOther5" runat="server" Text='<%# Eval("AnyOther5") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtAnyOther5" runat="server" Text='<%# Eval("AnyOther5") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleInstitution" runat="server" Text="Institution" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblInstitution" runat="server" Text='<%# Eval("Institution") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtInstitution" runat="server" Text='<%# Eval("Institution") %>' Width="300"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleFromYear" runat="server" Text="From Year" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblFromYear" runat="server" Text='<%# Eval("FromYear") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtFromYear" runat="server" Text='<%# Eval("FromYear") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleToyear" runat="server" Text="To year" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblToyear" runat="server" Text='<%# Eval("Toyear") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtToyear" runat="server" Text='<%# Eval("Toyear") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleClasssubject" runat="server" Text="Class subject" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblClasssubject" runat="server" Text='<%# Eval("Classsubject") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtClasssubject" runat="server" Text='<%# Eval("Classsubject") %>' Width="300"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleInstitution1" runat="server" Text="Institution" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblInstitution1" runat="server" Text='<%# Eval("Institution1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtInstitution1" runat="server" Text='<%# Eval("Institution1") %>' Width="300"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleFromYear1" runat="server" Text="From Year" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblFromYear1" runat="server" Text='<%# Eval("FromYear1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtFromYear1" runat="server" Text='<%# Eval("FromYear1") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleToyear1" runat="server" Text="To year" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblToyear1" runat="server" Text='<%# Eval("Toyear1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtToyear1" runat="server" Text='<%# Eval("Toyear1") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleClasssubject1" runat="server" Text="Class subject" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblClasssubject1" runat="server" Text='<%# Eval("Classsubject1") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtClasssubject1" runat="server" Text='<%# Eval("Classsubject1") %>' Width="300"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleInstitution2" runat="server" Text="Institution" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblInstitution2" runat="server" Text='<%# Eval("Institution2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtInstitution2" runat="server" Text='<%# Eval("Institution2") %>' Width="300"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleFromYear2" runat="server" Text="From Year" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblFromYear2" runat="server" Text='<%# Eval("FromYear2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtFromYear2" runat="server" Text='<%# Eval("FromYear2") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleToyear2" runat="server" Text="To year" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblToyear2" runat="server" Text='<%# Eval("Toyear2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtToyear2" runat="server" Text='<%# Eval("Toyear2") %>' Width="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="hlbleClasssubject2" runat="server" Text="Class subject" Width="100"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblClasssubject2" runat="server" Text='<%# Eval("Classsubject2") %>'></asp:Label>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:TextBox ID="txtClasssubject2" runat="server" Text='<%# Eval("Classsubject2") %>' Width="300"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderStyle CssClass="hdrow" />
                            <HeaderTemplate>
                                <asp:Label ID="lblAA" runat="server" Text="Action" Width="130px"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <%-- <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />--%>
                                <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%--<asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />--%>
                                <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </div>






</asp:Content>

