﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DashboadMain.aspx.cs" Inherits="Admin_DashboadMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
    body{
    margin-top:20px;
    background:#FAFAFA;
}
.order-card {
    color: #fff;
}

.bg-c-blue {
    background: linear-gradient(45deg,#4099ff,#73b4ff);
}

.bg-c-green {
    background: linear-gradient(45deg,#2ed8b6,#59e0c5);
}

.bg-c-yellow {
    background: linear-gradient(45deg,#FFB64D,#ffcb80);
}

.bg-c-pink {
    background: linear-gradient(45deg,#FF5370,#ff869a);
}


.card {
    border-radius: 5px;
    -webkit-box-shadow: 0 1px 2.94px 0.06px rgba(4,26,55,0.16);
    box-shadow: 0 1px 2.94px 0.06px rgba(4,26,55,0.16);
    border: none;
    margin-bottom: 30px;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}

.card .card-block {
    padding: 25px;
}

.order-card i {
    font-size: 26px;
}

.f-left {
    float: left;
}

.f-right {
    float: right;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
  <div class="row">
        <div class="col-md-4 col-xl-3">
            <div class="card bg-c-blue order-card">
                <div class="card-block">
                    <h6 class="m-b-20">Special Moments</h6>
                    <h2 class="text-right"><i class="fa fa-cart-plus f-left"></i><span>4</span></h2>
                   <%-- <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>--%>
                </div>
            </div>
        </div>
        
        <div class="col-md-4 col-xl-3">
            <div class="card bg-c-green order-card">
                <div class="card-block">
                    <h6 class="m-b-20">Dashboard Gallery</h6>
                    <h2 class="text-right"><i class="fa fa-rocket f-left"></i><span>6</span></h2>
                   <%-- <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>--%>
                </div>
            </div>
        </div>
        
        <div class="col-md-4 col-xl-3">
            <div class="card bg-c-yellow order-card">
                <div class="card-block">
                    <h6 class="m-b-20">Photo Gallery</h6>
                    <h2 class="text-right"><i class="fa fa-refresh f-left"></i><span>1 & 7 Max</span></h2>
                   <%-- <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>--%>
                </div>
            </div>
        </div>
        
        <div class="col-md-4 col-xl-3">
            <div class="card bg-c-pink order-card">
                <div class="card-block">
                    <h6 class="m-b-20">Achievers</h6>
                    <h2 class="text-right"><i class="fa fa-credit-card f-left"></i><span>2</span></h2>
                   <%-- <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>--%>
                </div>
            </div>
        </div>
	</div>
        </div>
</asp:Content>

