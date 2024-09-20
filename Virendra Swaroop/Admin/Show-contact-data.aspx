<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Show-contact-data.aspx.cs" Inherits="Admin_Show_contact_data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function deleteconfirm() {
            var a = confirm("Are you sure you want to delete data?");
            if(a==true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    </script>


    <style>
        table{
            width: 80%;
            text-align: center;
        }

        table tr{
            height: 40px;
        }

        table tr th{
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="ml-5">
        <h1> All Contact Form Data</h1>
        <br />

        <asp:GridView runat="server" ID="gridview" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />

                <%--Backend Mobile Field--%>
                <asp:TemplateField HeaderText="Mobile">
                    <ItemTemplate>
                        <a href='tel: <%# Eval("Mobile") %>'> <%# Eval("Mobile") %> </a>
                    </ItemTemplate>
                </asp:TemplateField>

                <%--<asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />--%>

                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Msg" HeaderText="Message" SortExpression="Msg" />

                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="editbtn" OnClick="editbtn_Click" CommandArgument='<%# Eval("id") %>' Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="deletebtn" OnClick="deletebtn_Click" CommandArgument='<%# Eval("id") %>' OnClientClick="return deleteconfirm()" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>
    </section>
    

</asp:Content>

