<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="edit-gallery.aspx.cs" Inherits="Admin_edit_gallery" %>

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

        .tbl {
            width: 400px;
        }

        .status {
            font-weight: bold;
            font-size: 17px;
        }
    </style>
    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="breadcrumb box-title">View Gallery Images</h3>
                            <ol class="breadcrumb pull-right">
                                <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>&nbsp;Dashboard</a></li>
                                <li class="active">View Gallery Images</li>
                            </ol>
                        </div>
                        <hr />
                        <%--<div class="box-body">--%>
                             <div class="box-body no-padding">
                                    <div class="mailbox-controls">
                                        <div class="table-responsive mailbox-messages">
                            <div class="table-responsive mailbox-messages">
                                <table id="example1" class="table table-hover table-striped dataTable">
                                    <thead>
                                        <tr>
                                            <th>S_No.</th>
                                            
                                            <th>Images Category</th>
                                            <th>Gallery Images</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="RpFeedBack" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="mailbox-name"><%# Container.ItemIndex + 1 %></td>

                                                   
                                                    <td class="mailbox-subject">
                                                        <%# Eval("media") %>
                                                    </td>
                                                    <td class="mailbox-name">
                                                        <asp:Image ID="Image1" Width="100px" Height="50px" ImageUrl='<%#Eval("photo") %>' runat="server" />
                                                    </td>
                                                  
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                                <!-- /.table -->
                            </div>
                                            </div>
                                        </div>
                                 </div>
                        <%--</div>--%>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
    </div>
</asp:Content>

