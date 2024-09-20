<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inter-house-competition.aspx.cs" Inherits="Inter_house_competition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />

    <link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap_css" />
    <script src="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>


    <style type="text/css">
        body {
            overflow-x: hidden;
        }

        .table-bordered {
            border: 1px solid #dddddd;
            border-collapse: separate;
            border-left: 0;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
        }

        .table {
            width: 100% !important;
            margin-bottom: 20px;
            background-color: transparent;
            border-collapse: collapse;
            border-spacing: 0;
            display: table;
            text-align: center;
        }

        .table tr{
            height: 50px;
        }

        .table tr th{
            text-align: center;  
        }

        .table tr td{
            text-align: center;
            padding-top: 15px;   
        }

        .widget.widget-table .table {
            margin-bottom: 0;
            border: none;
        }

        .widget.widget-table .widget-content {
            padding: 0;
        }

        .widget .widget-header + .widget-content {
            border-top: none;
            -webkit-border-top-left-radius: 0;
            -webkit-border-top-right-radius: 0;
            -moz-border-radius-topleft: 0;
            -moz-border-radius-topright: 0;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        .widget .widget-content {
            padding: 20px 15px 15px;
            background: #FFF;
            border: 1px solid #D5D5D5;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }

        .widget .widget-header {
            position: relative;
            height: 40px;
            line-height: 40px;
            background: #E9E9E9;
            background: -moz-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #fafafa), color-stop(100%, #e9e9e9));
            background: -webkit-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
            background: -o-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
            background: -ms-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
            background: linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
            text-shadow: 0 1px 0 #fff;
            border-radius: 5px 5px 0 0;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1),inset 0 1px 0 white,inset 0 -1px 0 rgba(255,255,255,0.7);
            border-bottom: 1px solid #bababa;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9');
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9')";
            border: 1px solid #D5D5D5;
            -webkit-border-top-left-radius: 4px;
            -webkit-border-top-right-radius: 4px;
            -moz-border-radius-topleft: 4px;
            -moz-border-radius-topright: 4px;
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            -webkit-background-clip: padding-box;
        }

        thead {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }

        .widget .widget-header h3 {
            top: 2px;
            position: relative;
            left: 10px;
            display: inline-block;
            margin-right: 3em;
            font-size: 14px;
            font-weight: 600;
            color: #555;
            line-height: 18px;
            text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.5);
        }

        .widget .widget-header [class^="icon-"], .widget .widget-header [class*=" icon-"] {
            display: inline-block;
            margin-left: 13px;
            margin-right: -2px;
            font-size: 16px;
            color: #555;
            vertical-align: middle;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- About Image Section start-->
    <div class="Aboutusimg">
        <div class="Aboutusbreadcrumb">
            <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                <li><a href="Default.aspx">Home</a></li>
                <li class="active">Inter House Competition </li>
            </ol>
        </div>     
    </div>
    <!--About Section start -->

    <div class="m-5" style="width: 93%; text-align: center;">   
        <div class="widget stacked widget-table action-table">
    				
			<div class="widget-content">
					
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>INTER HOUSE COMPETITIONS</th>
							<th>DATE</th>
                            <th>MONTH</th>
							<th>DAY</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Chess(3-12)</td>
							<td>20th & 21st</td>
                            <td>April</td>
							<td>Thursday & Friday</td>
						</tr>
						<tr>
							<td>Spell Bee Round I(6-8)</td>
							<td>24th</td>
                            <td>April</td>
							<td>Monday</td>
						</tr>
						<tr>
							<td>Declamation(9-10)</td>
							<td>26th</td>
                            <td>April</td>
							<td>Wednesday</td>
						</tr>
						<tr>
							<td>Creative Writing(9-12)</td>
							<td>29th </td>
                            <td>April</td>
							<td>Saturday</td>
						</tr>
						<tr>
							<td>English Debate (11 & 12)</td>
							<td>6th</td>
                            <td>May</td>
							<td>Saturday</td>
						</tr>
						<tr>
							<td>English Declamation (11 & 12)</td>
							<td>13th</td>
                            <td>May</td>
							<td>Saturday</td>
						</tr>
						<tr>
							<td>Spell Bee Round I(6-8)</td>
							<td>24th</td>
                            <td>April</td>
							<td>Monday</td>
						</tr>
						<tr>
							<td>Declamation(9-10)</td>
							<td>26th</td>
                            <td>April</td>
							<td>Wednesday</td>
						</tr>
						<tr>
							<td>Debate Hindi (11 & 12)</td>
							<td>15th </td>
                            <td>July</td>
							<td>Saturday</td>
						</tr>
						<tr>
							<td>Founder’s Day(V)</td>
							<td>25th</td>
                            <td>July</td>
							<td>Tuesday</td>
						</tr>
							
							
						<tr>
							<td>Indian Vocal (9 – 12)</td>
							<td>25th</td>
                            <td>July</td>
							<td>Tuesday</td>
						</tr>
						<tr>
							<td>Dance (6-8)</td>
							<td>15th </td>
                            <td>August</td>
							<td>Tuesday</td>
						</tr>
						<tr>
							<td>Indian Vocal (3-5)</td>
							<td>22nd</td>
                            <td>August</td>
							<td>Tuesday</td>
						</tr>
						<tr>
							<td>Foundation Fest(V)</td>
							<td>1st& 2nd</td>
                            <td>September</td>
							<td>Friday & Saturday</td>
						</tr>
						<tr>
							<td>Hindi Week(M)</td>
							<td>7th to 14th</td>
                            <td>September</td>
							<td>Thursday - Thursday</td>
						</tr>
						<tr>
							<td>Declamation(9-10)</td>
							<td>26th</td>
                            <td>April</td>
							<td>Wednesday</td>
						</tr>
						<tr>
							<td>Debate Hindi (11 & 12)</td>
							<td>15th </td>
                            <td>July</td>
							<td>Saturday</td>
						</tr>
						<tr>
							<td>Founder’s Day(V)</td>
							<td>25th</td>
                            <td>July</td>
							<td>Tuesday</td>
						</tr>
					</tbody>
				</table>
					
			</div> 
			
		</div> 
    </div>

</asp:Content>

