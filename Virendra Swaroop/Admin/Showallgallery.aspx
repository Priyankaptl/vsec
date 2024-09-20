<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Showallgallery.aspx.cs" Inherits="Admin_Showallgallery" %>

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

        .tbl {
            width: 100%;
        }

        .status {
            font-weight: bold;
            font-size: 17px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="breadcrumb box-title">View Gallery Images</h3>
                            
                        </div>
                        <%--<div class="box-body">--%>
                             <div class="box-body no-padding">
                                    <div class="mailbox-controls">
                                        <div class="table-responsive mailbox-messages">
                            <div class="table-responsive mailbox-messages">
                                <table id="example1" class="table table-hover table-striped dataTable">
                                    <thead>
                                        <tr>
                                            <th>Media</th>
                                            <th>Photo</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="RpFeedBack" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="mailbox-subject">
                                                        <%# Eval("media") %>
                                                    </td>
                                                    <td class="mailbox-name">
                                                        <asp:Image ID="Image1" Width="100px" Height="50px" ImageUrl='<%#Eval("photo") %>' runat="server" />
                                                    </td>
                                                    <td class="mailbox-date">
                                                        <button type='button' class='btn btn-danger Delete' title='Delete' value="<%# Eval("id") %>"><i class='fa fa-trash-o'></i></button>
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
                <div class="col-sm-1"></div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
    </div>
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript">
        //Delete event handler.  
        $(".Delete").on("click", function () {
            if (confirm("Do you want to delete this row?")) {
                var Patient = $(this).val();
                //alert(Patient);
                $.ajax({
                    type: "POST",
                    url: "Edit_Photo_gallery.aspx/DeletePatient",
                    data: '{PId:"' + Patient + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        window.location.href = 'Edit_Photo_gallery.aspx';
                    }
                });
            }

            return false;
        });
    </script>

</asp:Content>

