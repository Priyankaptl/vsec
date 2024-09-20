<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Infirmary.aspx.cs" Inherits="Infirmary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .para{
            /*color: black;*/
            text-align: justify;
            font-size: 17px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <!-- About Image Section start-->
    <div class="Aboutusimg">
        <div class="Aboutusbreadcrumb">
            <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                <li class="active">Infrastructure </li>
                <li class="active">Infirmary </li>
            </ol>
        </div>
    </div>
    <!--About Section start -->

    <div class="container-fluid">
        <div class="row p-5">
            <div class="col-lg-6">
                <img src="images/Infrastucture/infirmary.JPG" />
            </div>
            <div class="col-lg-6 pt-3">
                <p class="para">
                    Our school, Dr. Virendra Swarup Education Centre, Kidwai Nagar, pays special attention to the health and well-being of our students. We have an Infirmary room that is well equipped with beds, oxygen kits, a wheelchair and a stretcher and is ably managed by a qualified and compassionate Nurse.
                    <br /><br />

                    Students or school staff who might suddenly fall ill or are accidently injured in the school campus, are looked after by the Nurse and given adequate first aid. 
                     <br /><br />
                    Each student’s medical card is carefully maintained, which helps in tracking the child’s physical growth.
                    <br />
                </p>
            </div>
            
        </div>
    </div>

    <script>
        $(document).ready(function () {

            $(".filter-button").click(function () {
                var value = $(this).attr('data-filter');

                if (value == "all") {
                    //$('.filter').removeClass('hidden');
                    $('.filter').show('1000');
                }
                else {
                    //            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
                    //            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
                    $(".filter").not('.' + value).hide('3000');
                    $('.filter').filter('.' + value).show('3000');

                }
            });

            if ($(".filter-button").removeClass("active")) {
                $(this).removeClass("active");
            }
            $(this).addClass("active");

        });
    </script>
    <script type='text/javascript' src='js/jquery/jquery.js'></script>
    <script type='text/javascript' src='js/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='plugins/goodlayers-core/plugins/combine/script.js'></script>
    <script type='text/javascript'>
        var gdlr_core_pbf = {
            "admin": "",
            "video": {
                "width": "640",
                "height": "360"
            },
            "ajax_url": "#"
        };
    </script>
    <script type='text/javascript' src='plugins/goodlayers-core/include/js/page-builder.js'></script>
    <script type='text/javascript' src='js/jquery/ui/effect.min.js'></script>
    <script type='text/javascript'>
        var kingster_script_core = {
            "home_url": "Default.aspx"
        };
    </script>
    <script type='text/javascript' src='js/plugins.min.js'></script>

</asp:Content>

