<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="School_Staff.aspx.cs" Inherits="School_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .gdlr-core-pbf-element .gdlr-core-title-item .depart_head h3{
            font-size: 20px; 
            font-weight: 600; 
            background: #FFBC09;
            color: white;
            padding: 10px 50px;
            border-radius: 10px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="kingster-page-title-wrap  kingster-style-custom kingster-left-align" style="background-image: url(images/staff.jpeg);">
        <div class="kingster-header-transparent-substitute"></div>
        <div class="kingster-page-title-overlay"></div>
        <div class="kingster-page-title-bottom-gradient"></div>
        <div class="kingster-page-title-container kingster-container">
            <div class="kingster-page-title-content kingster-item-pdlr" style="padding-top: 550px; padding-bottom: 60px;">
                <h1 class="kingster-page-title" style="font-size: 48px; font-weight: 700; text-transform: none; letter-spacing: 0px; color: #ffffff;">School Staff</h1>
            </div>
        </div>
    </div>
    <div class="kingster-breadcrumbs">
        <div class="kingster-breadcrumbs-container kingster-container">
            <div class="kingster-breadcrumbs-item kingster-item-pdlr">
                <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="Go to Kingster." href="Default.aspx" class="home"><span property="name">Home</span></a>
                    <meta property="position" content="1">
                </span>&gt;<span property="itemListElement" typeof="ListItem"><span property="name">School Staff</span>
                    <meta property="position" content="2">
                </span>
            </div>
        </div>
    </div>

    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="kingster-content-container kingster-container">
            <div class=" kingster-sidebar-wrap clearfix kingster-line-height-0 kingster-sidebar-style-right">
                <%--Left Side--%>
                <div class=" kingster-sidebar-center kingster-column-30 kingster-line-height">
                    <div class="gdlr-core-page-builder-body">
                        <div class="gdlr-core-pbf-wrapper ">
                            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                    <%--Math--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Maths Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Dr.R.Saxena</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr.V.Sharma</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr S.Sharma</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs R.Srivastava</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.Dey</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A. Mishra</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.N.Jain</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A Kaur</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs .P.Lungani</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs J.Sharma</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.Dutta Roy</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs M.Mehta</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/math.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. T. Adil</span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Chemistry--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" >Chemistry Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/chemistry.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Dr P.Jassal                                                                                                                           </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/chemistry.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.K.Bajpai</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/chemistry.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs R.Sharma </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/chemistry.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs N.Kaur</span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Art and Craft Department --%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Art and Craft Department </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/art.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. K. Banerjee </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/art.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. P. Tripathi </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/art.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. M. Katiyar </span>
                                            </div>
                                        </div>
                                    </div>

                                    <%--Dance Department --%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title ">Dance Department </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/dance.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. P. Agarwal </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/dance.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. J.Roy </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/dance.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms. A. Agarwal </span>
                                            </div>
                                        </div>
                                    </div>

                                    <%--Social Studies--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Social Studies Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms.M.Lal</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr.J.John</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs T.Malhotra</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.B.Chopra  </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.J.Khosla</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.N.Srivastava</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.D.Kapoor</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.N.Parveen</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.K.Sharma</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.R.Gupta</span>
                                            </div>


                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.S.Mishra</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/history.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.A.Batra</span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Library Department --%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Library Department </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/library.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title"> Mrs. J. Srivastava  </span>
                                            </div>
                                        </div>
                                    </div>

                                    <%--Clay Modelling Department --%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Clay Modelling Department </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/clay.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. A. Bose  </span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Games Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Games Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/game.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. R.K.Pandey </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/game.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms. P.Sharma</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/game.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. S.Awasthi </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/game.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms. S.Kumari </span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Biology Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Biology Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr A.Bhattacharya</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.Mishra  </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.S.Dasgupta</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.N.Singhania</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.S.Chakraborty</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs R.Trivedi</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.S.Trivedi</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs .P.Kaur</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/biology.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs M.Mali</span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--French Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">French Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/french.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. Arjun Basu</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/french.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms. Snehi Goel </span>
                                            </div>

                                        </div>
                                    </div>


                                    <%--Music Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Music Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/music.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. S.Singh </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/music.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. J.Khatri </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/music.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title"> Mr. Raja Verma </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/music.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. Srikant </span>
                                            </div>

                                        </div>
                                    </div>


                                    <%--Yoga Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Yoga  Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">
                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/yoga.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs V Shukla  </span>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <%--Right SIde--%>
                <div class=" kingster-sidebar-right kingster-column-30 kingster-line-height">
                    <div class="gdlr-core-page-builder-body">
                        <div class="gdlr-core-pbf-wrapper ">
                            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                    <%--Computer Science--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Computer Science Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr S.Rajani</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs R.Venaik</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.Arora</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.Siddiqui</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs H.Azmi</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs M.Agnihotri</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs R.Didvani</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/computer.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms.P.Awasthi</span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Hindi--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Hindi Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs R.Bajpai</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A.Mishra</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs R.Pandey </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A.Keswani</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs K.Agarwal</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs V.Shukla</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.Tiwari</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs M.Nagpal</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A. Jaiswal</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/hindi.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.Baghmar</span>
                                            </div>
                                        </div>
                                    </div>

                                    <%--English--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">English Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs B.Mehta</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs P.Gulati</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs J.Tandon</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs N.Gupta  </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. A.Pande</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs P.Sharma</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs B.Madan</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A.Jain</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs J.Arora   </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs J.Gupta  </span>
                                            </div>


                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs Z.Feroz  </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs M.Gupta  </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs C.Dua</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs V.Gogia</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A.Agarwal</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms V. Mishra</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A.Bhargava</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs A.Chopra   </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/english.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms. A. Mukherjee</span>
                                            </div>
                                        </div>
                                    </div>

                                    <%--GK Department --%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">G.K. Department </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/gk.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr.A.Juneja </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/gk.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.K.Paul</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/gk.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs Mohita Behl</span>
                                            </div>
                                        </div>
                                    </div>

                                    <%--Chess Department --%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Chess Department </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/chess.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr. A. Gupta  </span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Physics Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Physics Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/physics.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr Adil </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/physics.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title"> Mr S.Iyer</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/physics.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title"> Mr.R.Gupta</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/physics.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs S.D'souza</span>
                                            </div>

                                        </div>
                                    </div>

                                     <%--Commerce/Accountancy/Economics Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Commerce/Accountancy/Economics Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/commerce.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.A.Jacob</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/commerce.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mr.A.Singh</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/commerce.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs.C.Tripathi</span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Nursery Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Nursery Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. N.Mali</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs M Sachdeva</span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. D. Kaur </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. P. Sehgal </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. A. Bajpai </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. S. Shukla </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. V.Khanna </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. N.Singhal </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms. I. Khawaja </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs. N. Dave </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms. S. Gupta </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms P Sodhi </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms A Chakraborty  </span>
                                            </div>

                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/nursery.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Ms Gaganjeet Kaur Batra </span>
                                            </div>

                                        </div>
                                    </div>

                                    <%--Sanskrit  Department--%>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px;">
                                            <div class="gdlr-core-title-item-title-wrap clearfix depart_head">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title">Sanskrit  Department</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-course-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-course-style-list" style="padding-bottom: 45px;">
                                            <div class="gdlr-core-course-item-list">
                                                <span class="gdlr-core-course-item-id gdlr-core-skin-caption" style="color: #192f59; font-weight: bold;"><img src="images/Infrastucture/icon/sanskrit.png" height="50" width="50" /></span>
                                                <span class="gdlr-core-course-item-title gdlr-core-skin-title">Mrs D Sharma </span>
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

