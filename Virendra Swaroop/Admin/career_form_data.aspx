<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="career_form_data.aspx.cs" Inherits="Admin_career_form_data" %>

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
            width: 100%;
            text-align: center;
        }

        table tr{
            height: 40px;
        }

        table td {
            padding: 20px;
        }

        table tr th{
            font-weight: bold;
            padding: 20px;
        }

        .scrollmenu {
            overflow: auto;
            white-space: nowrap;
        }
         

        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="scrollmenu pl-5" style="padding-bottom: 300px;">
        <h1> Job Application Data</h1>
        <br />

        <asp:GridView runat="server" ID="gridview" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

                <%--Backend Mobile Field--%>
                <asp:TemplateField HeaderText="Mobile">
                    <ItemTemplate>
                        <a href='tel: <%# Eval("Mobile") %>'> <%# Eval("Mobile") %> </a>
                    </ItemTemplate>
                </asp:TemplateField>

                <%--<asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />--%>

                <asp:BoundField DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Reference" HeaderText="Reference" SortExpression="Reference" />
                <asp:BoundField DataField="Resume" HeaderText="Resume" SortExpression="Resume" />

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [career] WHERE [id] = @id" InsertCommand="INSERT INTO [career] ([Name], [Email], [Mobile], [Organization], [Designation], [Experience], [Address], [City], [State], [Position], [Reference], [Resume]) VALUES (@Name, @Email, @Mobile, @Organization, @Designation, @Experience, @Address, @City, @State, @Position, @Reference, @Resume)" SelectCommand="SELECT * FROM [career]" UpdateCommand="UPDATE [career] SET [Name] = @Name, [Email] = @Email, [Mobile] = @Mobile, [Organization] = @Organization, [Designation] = @Designation, [Experience] = @Experience, [Address] = @Address, [City] = @City, [State] = @State, [Position] = @Position, [Reference] = @Reference, [Resume] = @Resume WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Organization" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Reference" Type="String" />
                <asp:Parameter Name="Resume" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Organization" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Reference" Type="String" />
                <asp:Parameter Name="Resume" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </section>

</asp:Content>

