<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="alumniform.aspx.cs" Inherits="alumniform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
       input {
            height: 50px;
            margin-top: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">

             <fieldset>

                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="text-center mt-5" style="font-size: 32px ;font-weight: 700; color: #07294D; text-align: center;"> Alumni Form </h2>
                        </div>
                    </div>

                    <div class="row mb-5">

                        <div class="col-lg-2"></div>

                        <div class="col-lg-8">
                        
                            <div class="form-group">
                                <label for="name">Name</label>
                                <asp:TextBox runat="server" ID="name" class="form-control" placeholder="Enter Your Name"/>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Full Name Required" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label for="passingyear">Year of passing Class XII.</label>
                         <asp:TextBox runat="server" ID="passingyear" class="form-control" placeholder="Enter Your Passing Year"/>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Passing Year" ForeColor="Red" ControlToValidate="passingyear"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label for="currentjob">Current Designation</label>
                           <asp:TextBox runat="server" ID="currentjob" class="form-control" placeholder="Enter Your Designation"/>

                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your designation" ForeColor="Red" ControlToValidate="currentjob"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label for="photo"> Your Picture </label>
                              <asp:FileUpload runat="server" ID="photo" class="form-control" placeholder="Upload Your Picture" />

                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Photo Required" ForeColor="Red" ControlToValidate="photo"></asp:RequiredFieldValidator>
                                
                            </div>

                            <asp:Button runat="server" ID="btn" Text="Submit" CssClass="btn btn-block submit-button" OnClick="btn_Click" />

                        </div>

                        <div class="col-lg-2"></div>

                    </div>

                </div>

            </fieldset>
             
        </div>
    </div>
</asp:Content>

