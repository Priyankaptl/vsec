<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lab.aspx.cs" Inherits="lab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />


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

            .side ul {
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

        .kingster-body h5 {
            font-weight: 500 !important;
        }



        .gallery-title {
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

        .filter-button {
            font-size: 18px;
            border: 1px solid #42B32F;
            border-radius: 5px;
            text-align: center;
            color: #42B32F;
            margin-bottom: 30px;
        }

            .filter-button:hover {
                font-size: 18px;
                border: 1px solid #42B32F;
                border-radius: 5px;
                text-align: center;
                color: #ffffff;
                background-color: #42B32F;
            }

        .btn-default:active .filter-button:active {
            background-color: #42B32F;
            color: white;
        }

        .port-image {
            width: 100%;
        }

        .gallery_product {
            max-width: 100%;
        }
        /*
        gallery_product img {
            height: 200px !important;
        }*/

        .padding {
            padding: 50px 30px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="home page-template-default page page-id-2039 gdlr-core-body woocommerce-no-js tribe-no-js kingster-body kingster-body-front kingster-full  kingster-with-sticky-navigation  kingster-blockquote-style-1 gdlr-core-link-to-lightbox" style="background: #f9f8f8;">
        <!-- About Image Section start-->
        <div class="Aboutusimg">
            <div class="Aboutusbreadcrumb">
                <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                    <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                    <li class="active">Infrastructure </li>
                    <li class="active">Laboratory </li>
                </ol>
            </div>
        </div>
        <!--About Section start -->

        <div class="kingster-page-wrapper" id="kingster-page-wrapper">
            <div class="gdlr-core-page-builder-body" style="background-color: #f2f2f2;">

                <div class="gdlr-core-pbf-wrapper " style="padding: 50px 20px 30px 20px;">
                    <div class="gdlr-core-pbf-background-wrap"></div>
                    <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                        <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">

                            <div class="gdlr-core-pbf-element">
                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                    <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="text-align: center;">Dr Virendra Swarup Education Centre, Kidwai Nagar provides safe and reliable transportation to students across the city. The school-owned number of buses are 7(seven) and a Van however, a fleet of private buses are readily plying on a daily basis - transporting about 2000 students daily. Additionally, there are private means of transportation such as vans and e-richshaws that cater to local adjacent areas. Routing issues, bus breakdowns and the recruitment and training of drivers are significantly taken care of.
                                    </span>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="row">

                        <%--chemistry--%>
                        <div class="col-lg-6 padding">
                            <img src="images/Infrastucture/chemistry_icon.png" alt="" width="65" height="65" title="about-icon-1" />

                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_4">Chemistry Lab</h3>

                            <p>Our chemistry laboratory is designed to explore and illustrate chemical concepts that are studied in the class lectures. The well ventilated chemistry lab introduces laboratory techniques and encourages analytical thinking. The lab provides students the opportunity to perform experiments that explore important chemical concepts. The lab is well provided with all the required laboratory equipment, salts and solutions.</p>


                        </div>
                        <div class="col-lg-6">
                            <img src="images/Infrastucture/chem.JPG" />
                        </div>
                        <%--chemistry--%>

                        <%--Physics--%>
                        <div class="col-lg-6">
                            <img src="images/Infrastucture/physi.jpeg" />
                        </div>
                        <div class="col-lg-6 padding">
                            <img src="images/Infrastucture/physics_icon.png" alt="" width="67" height="58" title="about-icon-2" />

                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_5">Physics Lab</h3>

                            <p>Physics laboratory is central to the teaching of Physics and serves as an extension of making the subject a reality - via experimentations. Our school’s Physics lab has various advanced and state-of-the-art instruments for research, covering all concepts of Physics.  The lab is designed to accommodate hands-on, inquiry-based Physics education. The lab has a set of equipment that supports experiments mainly in the areas of mechanics, wave mechanics, electricity and magnetism, besides thermodynamics.</p>


                        </div>
                        <%--Physics--%>

                        <%--Computer--%>
                        <div class="col-lg-6 padding">
                            <img src="images/Infrastucture/computer_icon.png" alt="" width="63" height="62" title="about-icon-3" />

                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_6">Computer Lab</h3>

                            <p>
                                Computer labs play a crucial role in enhancing education and providing students with valuable skills. The labs help in promoting technological literacy among students and provide hands-on experience with computers and software, ensuring that students become familiar with technology from an early age.
                                                        <br />
                                Students in computer labs have the opportunity to develop digital skills, including typing, using productivity software, conducting research on the internet, and creating digital presentations. These skills are increasingly important in the modern world.
                                                        <br />
                                Labs also provide a platform for students to learn programming and coding skills. This is essential in the digital age, where understanding the basics of coding can open up various opportunities in the fields of science, technology, engineering, and mathematics. Dr. Virendra Swarup Education Centre, Kidwai Nagar, has 3 spacious computer labs, each for classes 1-5, 6-9 and 10-12.
                                                        <br />
                                Computer labs contribute significantly to the educational landscape by providing students with the tools and skills necessary for success in the digital age. They play a vital role in preparing students for future academic and professional endeavours.
                            </p>


                        </div>
                        <div class="col-lg-6">
                            <img src="images/Infrastucture/Computer.jpg" />
                        </div>
                        <%--Computer--%>

                        <%--Biology--%>
                        <div class="col-lg-6">
                            <img src="images/Infrastucture/Bio7.jpeg" />
                        </div>
                        <div class="col-lg-6 padding">
                            <img src="images/Infrastucture/biology_icon.png" alt="" width="67" height="58" title="about-icon-2" />

                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_5">Biology Lab</h3>

                            <p>Biology laboratory in Dr. Virendra Swarup  Education Centre,  Kidwai Nagar, provides a broad range of biological techniques with in-depth practical training. Planned to meet the demands of the advancement in science, the lab is well-equipped with preserved specimens, slides, models and bio- visual charts that support the development of scientific aptitude among the Biology students. </p>


                        </div>
                        <%--Biology--%>

                        <%--French--%>
                        <div class="col-lg-6 padding">
                            <img src="images/Infrastucture/frenchicon.png" alt="" width="63" height="62" title="about-icon-3" />

                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_4">French Lab</h3>

                            <p>
                                The assertion is that individuals proficient in two languages possess larger and more advanced brains, enhanced memory, and increased creativity, resulting in bilingual students excelling in various aspects of life. Our school is not lagging behind in providing an environment that is rich in quality, to facilitate the learning of the French language. We have a well-equipped French lab where pronunciations drills and verbal skills in French are honed.
                                                            <br />
                                <br />
                                Students in Dr. Virendra Swarup Education Centre, Kidwai Nagar, display enthusiasm for acquiring as well as thoroughly enjoying the language. This endeavour not only broadens their cognitive skills but also fosters creativity, contributing to the holistic development of their personalities. Mastery of the French language not only enhances cognitive abilities but also unlocks numerous career opportunities across diverse fields, thereby equipping students for the challenges of the real world.

                            </p>


                        </div>
                        <div class="col-lg-6" style="padding-top: 100px;">
                            <img src="images/Infrastucture/french.jpeg" />
                        </div>
                        <%--French--%>

                        <%--Psychology--%>
                        <div class="col-lg-6" style="padding-top: 120px;">
                            <img src="images/Infrastucture/psychology.jpeg" height="1066" style="height: 500px;" />
                        </div>
                        <div class="col-lg-6 padding">
                            <img src="images/Infrastucture/psychologyicon.png" alt="" width="67" height="58" title="about-icon-2" />

                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " id="h3_983a_5">Psychology Lab</h3>

                            <p>
                                In the realm of school counselling, diverse responsibilities and initiatives are implemented to assist students in their academic, career, social, and emotional growth. The role of school counselling is pivotal in creating a positive and supportive atmosphere, guiding students through challenges, and enabling them to realize their maximum potential. Students at Dr. Virendra Swarup Education Centre, Kidwai Nagar, benefit from a highly dedicated Counselling team that adopts a personalized approach to support and steer them.
                                                            <br />
                                The Counselling team aids students in establishing academic objectives, refining time management skills and utilizes psychometric tests to delve into career interests, aptitudes, and future aspirations. Additionally, discussions encompass information about various career paths and college alternatives.
                                                            <br />
                                Our Counsellors effectively address common adolescent concerns such as stress management, anger management, mobile de-addiction and life skills. They assist in developing coping mechanisms, building resilience and addressing specific issues that impact students' well-being.
                                                            <br />
                                Maintaining confidentiality, the Counselling team keeps precise records of counselling sessions, interventions employed and students' progress. These sessions have significantly contributed to the students' growth and confidence.
                            </p>
                        </div>
                        <%--Psychology--%>
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



