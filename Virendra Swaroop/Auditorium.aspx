<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Auditorium.aspx.cs" Inherits="Auditorium" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- About Image Section start-->
    <div class="Aboutusimg">
        <div class="Aboutusbreadcrumb">
            <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                <li class="active">Infrastructure </li>
                <li class="active">Auditoriums </li>
            </ol>
        </div>
    </div>
    <!--About Section start -->

    <div class="container-fluid">
        <div class="row p-5">
            <div class="col-lg-6 ">
                <img src="images/Infrastucture/Auditorium/audit%20(1).jpeg" />
            </div>
            <div class="col-lg-6">
                <p class="para">
                    At our school, Dr. Virendra Swarup Education Centre in Kidwai Nagar, we boast four expansive halls that play a pivotal role in hosting a variety of significant events. Among these, one hall stands out with its comprehensive Audio/Visual amenities, accommodating over 150 individuals, making it an ideal venue for crucial occasions like conferences, workshops, and Board Examinations.

                     <br /><br />
Similarly, another hall is well-appointed with Audio/Visual facilities, offering a versatile learning environment that can be easily adapted to support activities requiring movement, hands-on exploration, collaborative building, social interaction, and overall developmental pursuits.

                     <br /><br />
The remaining two halls serve as venues for both Intra School and Inter School competitions, including debates and subject declamations. Additionally, they host cultural events such as SPICMACAY and events like Story Enactment for Primary School students and Exhibitions. Notably, one of these halls doubles as an indoor games area during inclement weather, providing an alternative when outdoor games are not feasible.

                    <br />
                </p>
            </div>
            <div class="card-deck mt-3 pt-3">
                 <div class="col-lg-4">
                    <div class="card">
                        <img class="card-img-top" src="images/Infrastucture/Auditorium/audit%20(4).jpeg" alt="Card image cap" />
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="card">
                        <img class="card-img-top" src="images/Infrastucture/Auditorium/audit%20(2).jpeg" alt="Card image cap" />
                    </div>
                </div>
                
                <div class="col-lg-4">
                    <div class="card">
                        <img class="card-img-top" src="images/Infrastucture/Auditorium/audit%20(3).jpeg" alt="Card image cap" />
                    </div>
                </div>

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

