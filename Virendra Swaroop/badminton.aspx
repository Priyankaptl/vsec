<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="badminton.aspx.cs" Inherits="badminton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .para{
            font-size: 17px;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- About Image Section start-->
    <div class="Aboutusimg">
        <div class="Aboutusbreadcrumb">
            <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                <li class="active">Infrastructure </li>
                <li class="active">Badminton </li>
            </ol>
        </div>
    </div>
    <!--About Section start -->

    <div class="container-fluid">
        <div class="row p-5">
            <div class="col-lg-6 pt-2">
                <img src="images/Sports/Badminton/badminton.jpg" />
            </div>
            <div class="col-lg-6">
                <p class="para">
                    Badminton is a racket sport played by either two opposing players (singles) or two opposing pairs (doubles), who take positions on opposite halves of a rectangular court that is divided by a net. Players score points by striking a shuttlecock with their racket so that it passes over the net and lands in their opponents' half of the court. A rally ends once the shuttlecock has struck the ground, and the shuttlecock may only be struck once by each side before it passes over the net.
                    <br /><br />

                    Since 1992, badminton has been an Olympic sport with five events: men's and women's singles, men's and women's doubles, and mixed doubles, in which each pair is a man and a woman. At high levels of play, the sport demands excellent fitness: players require aerobic stamina, agility, strength, speed, and precision. It is also a technical sport, requiring good motor coordination and the development of sophisticated racket movements.

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


