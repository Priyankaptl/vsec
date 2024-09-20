<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>Download Fee Receipt</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container bootstrap snippets bootdeys">
<div class="row">
  <div class="col-sm-12">
	  	<div class="panel panel-default invoice" id="invoice">
		  <div class="panel-body">
			<div class="invoice-ribbon"><div class="ribbon-inner">PAID</div></div>
		    <div class="row">

				<div class="col-sm-6 top-left">
					<IMG SRC="banner.png" width="100%" height="auto" ></i>
				</div>

				<div class="col-sm-6 top-right">
										
			    </div>

			</div>	
			<hr>
			<div class="row">

				<div class="col-xs-4 from">
					<p class="lead marginbottom">From : 
					<p>432A H2-Block,</p>
					<p>Kidwai Nagar</p>
					<p>Kanpur, 208011</p>
					<p>Phone: 08127397749</p>
					<p>Email: contact@vsec.in</p>
				</div>

				<div class="col-xs-4 to">
					<p class="lead marginbottom">To :
                    <p>Scholar Number : <?php echo $_POST['schid']; ?></p>
					<p>Student Name : <?php echo $_POST['name']; ?></p>
					<p>Father Name : <?php echo $_POST['fname']; ?></p>
					<p>Class : <?php echo $_POST['class']; ?></p>
                    <p>Mobile No : <?php echo $_POST['mob']; ?></p>
					<p>Email Id : <?php echo $_POST['email']; ?></p>
				

			    </div>

			    <div class="col-xs-4 text-right payment-details">
					<p class="lead marginbottom payment-info">Payment details</p>
					<p>Payment Date:
						<input type="text" id="currentDate" readonly>
						 
						<script>
						  var today = new Date();
						  var date = today.getDate()+'-'+(today.getMonth()+1)+'-'+today.getFullYear();
						  document.getElementById("currentDate").value = date;
						</script></p>
					<p></p>
					<p>Total Amount: Rs <?php echo $_POST['amount'];; ?></p>
			    </div>

			</div>

			<div class="row table-row">
				<table class="table table-striped">
			      <thead>
			        <tr>
			          <th class="text-center" style="width:5%">S.No</th>
			          <th style="width:50%">Fee Detail</th>
			        <th class="text-right" style="width:15%">Amount</th>
			          <th class="text-right" style="width:15%">Total Amount</th>
			        </tr>
			      </thead>
			      <tbody>
			        <tr>
			          <td class="text-center">1</td>
			          <td>Fee for <?php echo $_POST['month']; ?></td>
			                        <td class="text-right"> Rs <?php echo $_POST['amount']; ?></td>
			          <td class="text-right"> Rs <?php echo $_POST['amount']; ?></td>
			          
			        
			        </tr>
			         </tbody>
			    </table>

			</div>

			<div class="row">
			<div class="col-xs-6 margintop">
				<button class="btn btn-success" a href="javascript:;" onclick="window.print()" class="btn btn-sm btn-white m-b-10 p-l-5"><i class="fa fa-print t-plus-1 fa-fw fa-lg"></i> Print Invoice</button>          
			</div>
			<div class="col-xs-6 text-right pull-right invoice-total">
					  <p>Total Amount: Rs <?php echo $_POST['amount']; ?></p>
			          
			</div>
			</div>
<!-- begin invoice-footer -->
<div class="invoice-footer">
            <p class="text-center m-b-5 f-w-600">
               THANK YOU FOR THE ONLINE PAYMENT
            </p>
            <p class="text-center">
               <span class="m-r-10"><i class="fa fa-fw fa-lg fa-globe"></i> www.vsec.in</span>
               <span class="m-r-10"><i class="fa fa-fw fa-lg fa-phone-volume"></i> T:0512-2641353</span>
               <span class="m-r-10"><i class="fa fa-fw fa-lg fa-envelope"></i> contact@vsec.in</span>
            </p>
         </div>
         <!-- end invoice-footer -->
      </div>
 </center>
		  </div>
		</div>
	</div>
</div>
</div>

<style type="text/css">
body{margin-top:20px;
background:#eee;
}

/*Invoice*/
.invoice .top-left {
    font-size:65px;
	color:#3ba0ff;
}

.invoice .top-right {
	text-align:right;
	padding-right:20px;
}

.invoice .table-row {
	margin-left:-15px;
	margin-right:-15px;
	margin-top:25px;
}

.invoice .payment-info {
	font-weight:500;
}

.invoice .table-row .table>thead {
	border-top:1px solid #ddd;
}

.invoice .table-row .table>thead>tr>th {
	border-bottom:none;
}

.invoice .table>tbody>tr>td {
	padding:8px 20px;
}

.invoice .invoice-total {
	margin-right:-10px;
	font-size:16px;
}

.invoice .last-row {
	border-bottom:1px solid #ddd;
}

.invoice-ribbon {
	width:85px;
	height:88px;
	overflow:hidden;
	position:absolute;
	top:-1px;
	right:14px;
}

.ribbon-inner {
	text-align:center;
	-webkit-transform:rotate(45deg);
	-moz-transform:rotate(45deg);
	-ms-transform:rotate(45deg);
	-o-transform:rotate(45deg);
	position:relative;
	padding:7px 0;
	left:-5px;
	top:11px;
	width:120px;
	background-color:#66c591;
	font-size:15px;
	color:#fff;
}

.ribbon-inner:before,.ribbon-inner:after {
	content:"";
	position:absolute;
}

.ribbon-inner:before {
	left:0;
}

.ribbon-inner:after {
	right:0;
}

@media(max-width:575px) {
	.invoice .top-left,.invoice .top-right,.invoice .payment-details {
		text-align:center;
	}

	.invoice .from,.invoice .to,.invoice .payment-details {
		float:none;
		width:100%;
		text-align:center;
		margin-bottom:25px;
	}

	.invoice p.lead,.invoice .from p.lead,.invoice .to p.lead,.invoice .payment-details p.lead {
		font-size:22px;
	}

	.invoice .btn {
		margin-top:10px;
	}
}

@media print {
	.invoice {
		width:900px;
		height:800px;
	}
}
</style>
</script>
</body>
</html>

