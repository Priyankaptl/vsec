<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="admission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Genos:wght@100;300;400;500;600;700&display=swap" rel="stylesheet" />

    <%--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>--%>


    <style type="text/css">
        body {
            overflow-x: hidden;
            font-family: 'Genos', sans-serif;
        }
        * {
            text-align: justify;
        }

        /*Side Bar Start*/
        .side {
            border-left: 2px solid #eee;
        }
        .side ul{
            margin-left: 0px; 
        }

        .side ul li {
            text-decoration: none;
            list-style-type: none;
            line-height: 50px;  
        }

        .side ul li a {
            padding-top: 10px;
            color: #ad9a9a;
            padding-left: 20px;
        }

        .side ul li a:hover {
            color: #07294D;
        }

        .Over_line {
             border-bottom: 2px solid #eee;
             width: 70%;
        }
        /*Side Bar End*/
        
        .kingster-body h5{
            font-weight: 500 !important;
        }

        .table-responsive {
            min-height: .01%;
            overflow-x: auto;
        }

        .table-bordered {
            border: 1px solid #ddd !important;
        }

       .table {
            width: 100%;
            max-width: 100%;
            margin-bottom: 20px;
            border-spacing: 0;
            border-collapse: collapse;
            background-color: transparent;
        }

       .course-table > thead > tr, .course-table > thead > tr > td, .course-table > thead > tr > th {
            border: 1px #c3e1f9 solid;
            background: #eee;
            color: #000;
            font-weight: bold;
        }

       table tr:nth-child(odd) {
            color: #949494;
            background-color: transparent;
        }
       
        .gallery-title
        {
            font-size: 36px;
            color: #42B32F;
            text-align: center;
            font-weight: 500;
            margin-bottom: 70px;
        }

        .gallery-title:after {
            content: "";
            position: absolute;
            width: 7.5%;
            left: 46.5%;
            height: 45px;
            border-bottom: 1px solid #5e5e5e;
        }

        .filter-button
        {
            font-size: 18px;
            border: 1px solid #42B32F;
            border-radius: 5px;
            text-align: center;
            color: #42B32F;
            margin-bottom: 30px;

        }

        .filter-button:hover
        {
            font-size: 18px;
            border: 1px solid #42B32F;
            border-radius: 5px;
            text-align: center;
            color: #ffffff;
            background-color: #42B32F;

        }

        .btn-default:active .filter-button:active
        {
            background-color: #42B32F;
            color: white;
        }

        .port-image
        {
            width: 100%;
        }

        .gallery_product
        {
            max-width: 100%;
        }
        /*
        gallery_product img {
            height: 200px !important;
        }*/

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="home page-template-default page page-id-2039 gdlr-core-body woocommerce-no-js tribe-no-js kingster-body kingster-body-front kingster-full  kingster-with-sticky-navigation  kingster-blockquote-style-1 gdlr-core-link-to-lightbox" style="background: #f9f8f8;">
        <!-- About Image Section start-->
        <div class="Aboutusimg">
            <div class="Aboutusbreadcrumb">
                <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                    <li style="margin-top:5px;"><a href="Default.aspx">Home</a></li>
                    <li class="active">Admission </li>
                </ol>
            </div>
        </div>
        <!--About Section start -->

        <div class="kingster-page-wrapper" id="kingster-page-wrapper">
            <div class="gdlr-core-page-builder-body" style="position: relative;">

                <%--<h4 class="text-center mt-5 mb-5" style="color: #07294D;">ADMISSION PROCEDURE AND GUIDELINES </h4>--%>
                
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="container">
                                <div class="head m-5">
                                    <h5 class="text-uppercase mb-5" style="color: #07294D; font-weight:500;">
                                        Admission Procedure
                                    </h5>  

                                    <p>
                                        Dr Virendra Swarup Education Centre offer a nurturing environment which fosters skills in children to empower them for the 21st century. Our endeavour has been to ensure Quality in Education and to provide a platform where learning is experiential, sequential and a lifelong memory.
                                    </p>

                                    <p>
                                        Just as learning is child’s play at VSEC, the admission procedure too is simple and parent friendly.
                                     </p>

                                    <p> Follow these easy steps to be a part of the Millennium family- </p>

                                    <h5>STEP 1: ADMISSION ENQUIRY</h5>
                                    <p>Visit the school admission office for admission enquiry and submit enquiry form. Our counsellor will get back to you to answer your questions and collect the required information.</p>

                                    <h5>STEP 2: REGISTRATION</h5>
                                    <p>The parents are requested to visit the school Admission Office, fill the registration form and purchase the school prospectus. Kindly carry one latest colored Passport size photograph of the child and the parent along with self-attested Date of Birth certificate.</p>

                                    <p>
                                        <strong>Admission Procedure (Class- IX)</strong>
                                    </p>

                                    <p> 
                                        You will need to carry the Report cards of your ward, of Classes- 8th, 9th. The same will be put across to the Principal of the School, post which a written assessment will be conducted for students applying for Science and Maths as Subject options. Should you wish to proceed with the Admission post your school tour and after getting confirmation from the School office, you will need to fill the Registration Form and submit. 
                                    </p>

                                    <p> With the form you need to submit the following documents-
Original plus one photocopy of the students Birth Certificate. (The original will be returned immediately after verification). <br />Photocopy of Report Cards of Std. 8th & 9th.</p>

                                    <h5>STEP 3: SCHOOL VISIT & INTERACTION WITH THE PRINCIPAL</h5>
                                    <p>Parents / Guardians are invited to visit the school campus to understand the culture and ethos of the Institution. A meeting can be scheduled with the Principal, so parents can have an interaction with the Head of the school, ask questions and collect any information they require. This can be done by fixing a prior appointment with the FOE.</p>

                                    <h5>STEP 4: FORM SUBMISSION</h5>
                                    <p>The parent needs to fill up the admission form and ensure all documents are in order. Kindly intimate the school in case your child requires some special assistance due to any health reasons.</p>

                                    <div class="table-responsive">
                                        <table class="table course-table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>CLASS</th>
                                                    <th>ENTRY AGE</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">Pre-Nursery</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">2+</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">Nursery</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">3+</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">KG</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">4+</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">Class 1</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">5+</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">Class 2</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">6+</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">Class 3</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">7+</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">Class 4</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">8+</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="table-col1">Class 5</div>
                                                    </td>
                                                    <td>
                                                        <div class="fee-amt">9+</div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <p>
                                        <strong>
                                            The following documents need to be submitted along with the Registration Form</strong> 
                                    </p>

                                    <p>1. Copy of the Birth Certificate <br />
                                       2. Copy of Report Card of previous year (only needed for admission to class 1 onwards)
                                    </p>

                                    <p>
                                        <strong>
                                            List of documents required at the time of admission:
                                        </strong>
                                    </p>

                                    <p>
                                        1.&nbsp;&nbsp; Evidence of having graduated from the previous class. <br />
                                        2.&nbsp; 4 photographs of the student <br />
                                        3.&nbsp; 2 parents photographs <br />
                                        4. Original TC from the previous school (for students seeking admission from class 2 onwards) <br />
                                        5.&nbsp;&nbsp;Proof of residence <br />
                                        6.&nbsp; Original Certificates may be produced at the time of admission for verification <br />
                                        7.&nbsp;Photocopies of all achievement certificates in the field of Academics, Sports, Extra Curricular activities. <br />
                                        8.  Photocopy of Passport if available. This is mandatory for overseas students. <br />
                                        9.&nbsp; The Admission documentation booklet must also be completed and duly signed by both Parents. It contains information which will assist you in your relationship with the School.
                                    </p>

                                    <p>
                                        <strong>Acceptance of Admission:</strong>
                                    </p>

                                    <p>
                                        1. &nbsp; Students are admitted on First Come, First Served basis depending on vacancies <br />
                                        2. &nbsp;We conduct no formal interviews with the child or the parent. <br />
                                        3. Selected candidates will be required to make the fee payment within 7 days of the declaration of the result. <br />
                                        4. The school reserves the right to admissions. In all matters pertaining to admission, the decision of the Admission Committee will be final.
                                    </p>

                                    <p>
                                        Once the Fee and documents are submitted, you will receive an Admission Confirmation Letter through courier or E-mail, from the school. This will inform you about further formalities, to be completed, if any.
                                    </p>

                                    <p>
                                        Parents will be intimated of the date and time of uniform &amp; textbook issue
                                    </p>

                                    <p>
                                        Your ward will be allotted the section on the day of admission. The time table for your ward will be handed over to your ward by the Class Teacher.
                                    </p>

                                    <p>
                                        Kindly inform the School of your joining date. This is mandatory because Staff need to be informed to expect your child on a particular day and they in turn need to make preparations accordingly.
                                    </p>

                                    <p>
                                        Teachers will assist your child with the syllabi which has been covered in the class till date.
                                    </p>

                                    <h5>Step 5: Payment of Fees</h5>
                                    <p>Once the above steps are satisfactorily completed parents will receive an admission offer and may pay the applicable fees to confirm admission.</p>

                                    <h5>Step 6 : Parent Orientation Program:</h5>
                                    <p>There will be a parent orientation program before the beginning of the new academic session. This program will acquaint the parents with the Vision, Mission &amp; Ethos of the school.</p>

                                    <h5>Feel free to visit our Counsellors during the following hours:</h5>
                                    <p>Monday to Friday: 9 am to 3 pm <br />Saturday: 9 am to 12.30 pm (Closed on Sundays and Public Holidays)</p>
                                    <p>Alternatively you can also fill the enquiry form or the registration form online. Once the form is filled, please take a printout of the same, fill in the details and submit the hard copy of the completed form to the school.</p>
                                    <p><strong>Please note</strong>: Registration forms are available in the school.</p>


                                </div>

                            </div>
                            
                        </div>

                        <%--Side Bar--%>
                        <div class="col-lg-4 side mt-5">
                            <div class="academic">
                                <div class="head">
                                    <h5 class="text-uppercase" style="color: #07294D;">Academics</h5>
                                    <div class="Over_line"></div>
                                </div>
                                <div class="link">
                                    <ul>
                                        <li>
                                            <a href="">JKG Curriculum</a>
                                            <div class="Over_line"></div>
                                        </li>

                                        <li>
                                            <a href="">Middle & Senior Curriculum</a>
                                            <div class="Over_line"></div>
                                        </li>

                                        <li>
                                            <a href="admission.aspx">Admission Procedure</a>
                                            <div class="Over_line"></div>
                                        </li>

                                        <li>
                                            <a href="">Examination System</a>
                                            <div class="Over_line"></div>
                                        </li>

                                        <li>
                                            <a href="infrastructure.aspx">Infrastructure</a>
                                            <div class="Over_line"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="galery">
                                <div class="container">
                                    <div class="row mr-5 g-0">
                                        <div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-5">
                                            <%--<h5 class="gallery-title">Gallery</h5>--%>
                                            <h5 class="text-uppercase" style="color: #07294D;">Gallery</h5>
                                            <div class="Over_line"></div>
                                        </div>
                                        
                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe p-1">
                                            <img src="images/Gallery/assembly1.jpeg" class="img-responsive g-0" style="height: 100px; width: 100%;"/>
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter sprinkle p-1">
                                            <img src="images/spicmacay/(1717).jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe p-1">
                                            <img src="images/winners/Udhbhav_Utsav2.jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation p-1">
                                            <img src="images/winners/winner4.jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray p-1">
                                            <img src="images/spicmacay/(2121).jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation p-1">
                                            <img src="images/labs_library/Physics%20lab.jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray p-1">
                                            <img src="images/labs_library/Physics1.jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation p-1">
                                            <img src="images/labs_library/library.jpeg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation p-1">
                                            <img src="images/labs_library/IMG_8077.jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe p-1">
                                            <img src="images/labs_library/Computer_lab.jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray p-1">
                                            <img src="images/labs_library/Chemistry_lab.jpg" class="img-responsive" style="height: 100px; width: 100%;" />
                                        </div>

                                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter sprinkle p-1">
                                            <img src="images/Gallery/assembly3.jpeg" class="img-responsive" style="height: 100px; width: 100%;"/>
                                        </div>
                                    </div>
                                </div>
                          </div>

                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

   </div>

    
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

