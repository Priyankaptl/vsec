<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="media.aspx.cs" Inherits="media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <%--Bootstrap Link--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .card {
            height: 360px;
            box-shadow: 4px 5px 5px grey;
        }

            .card img {
                height: 300px;
                width: 600px;
            }

        .card-body {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 0px !important;
        }

        .card-footer {
            background: #f3f1f1;
            /*font-size: 20px;*/
            color: #07294D;
            font-weight: bold;
            padding: 0.70rem 1rem 0rem 1rem !important;
            /*padding: 0px !important;*/
        }

        .card-footer p {
            float: left;
        }

        .card-footer small {
            float: right;
        }

        .row {
            margin-top: 75px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- About Image Section start-->
    <div class="Aboutusimg">
        <div class="Aboutusbreadcrumb">
            <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                <li style="margin-top: 5px;"><a href="Default.aspx">Home</a></li>
                <li class="active" style="color: #f9b381;">Media </li>
            </ol>
        </div>
    </div>
    <!--About Section start -->

    <div class="kingster-page-wrapper" id="kingster-page-wrapper">
        <div class="gdlr-core-page-builder-body">

            <div class="gdlr-core-pbf-wrapper " style="padding: 100px 20px 30px 20px;">
                <div class="gdlr-core-pbf-background-wrap"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">

                        <!-- Card Section Start-->
                        <div class="product_section mb-5">
                            <div class="container">

                                <div class="row" style="margin-top: 0px;">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2018%20December%2015%20-%20Inext.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan  </p>
                                                    <small class="text-muted">6 Aug 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2018%20November%2019%20-%20Amar%20Uajala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">19 Nov 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2018%20May%2023%20-%20Amar%20Ujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer mb-5">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">23 May 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2018%20November%2019%20-%20Dainik%20Jagran.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">19 Nov 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2018%20November%2019%20-%20Amar%20Uajala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">27 Nov 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2018%20October%2012%20-%20Amar%20Ujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">12 Oct 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2018%20October%2012%20-%20Rastriya%20Sahara.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Rastriya Sahara  </p>
                                                    <small class="text-muted">12 Oct 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20August%2022%20-%20Amar%20Ujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala</p>
                                                    <small class="text-muted">22 Aug 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20August%2022%20-%20HIndustan.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan </p>
                                                    <small class="text-muted">22 Aug 2019</small>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20July%2016%20-%20Dainik%20Jagran.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran  </p>
                                                    <small class="text-muted">16 Jul 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20July%2016%20-%20Hindustan.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan </p>
                                                    <small class="text-muted">16 Jul 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20July%2029%20-%20Amar%20Ujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">29 Jul 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20November%207%20-%20Hindustan.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan  </p>
                                                    <small class="text-muted">7 Nov 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20September%202%20-%20Amar%20Ujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">2 Sep 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20September%207%20-%20Dainik%20Jagran.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">29 Jul 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2021%20November%2028%20-%20Hindustan.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan  </p>
                                                    <small class="text-muted">28 Nov 2021</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2021%20Novermber%2014%20-%20Amar%20Ujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">14 Nov 2021</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2021%20November%2028%20-%20Dainik%20Jagran.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">28 Nov 2021</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2022%20July%2027%20-%20Rastriya%20Sahara.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Rastriya Sahara  </p>
                                                    <small class="text-muted">27 Jul 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2022%20March%2026%20-%20Amar%20Ujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">26 Mar 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2022%20March%2026%20-%20Dainik%20Jagran.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">26 Mar 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2022%20March%2026%20-%20Rastriya%20Sahara.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Rastriya Sahara  </p>
                                                    <small class="text-muted">26 Mar 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/18Dec2022_Amarujala.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">18 Dec 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_201735.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">7 Nov 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_201810.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">2 Sep 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_201855.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">25 Aug 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_201921.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Dainik Jagran </p>
                                                    <small class="text-muted">5 May 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_201937.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">22 Aug 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_201949.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">22 Aug 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/Dainik.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan </p>
                                                    <small class="text-muted">22 Aug 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_202005.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">29 July 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_202021.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan </p>
                                                    <small class="text-muted">29 July 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221218_202046.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">29 July 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/2019%20July%2029%20-%20Dainik%20Jagran.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">29 July 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_112928.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan </p>
                                                    <small class="text-muted">29 July 2019</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113001.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">19 Nov 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113017.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">19 Nov 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113125.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">27 Nov 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113158.jpg" alt="Card image cap" />
                                                </div>
                                                <img src="" />
                                                <div class="card-footer">
                                                    <p class="card-text">Times Of India </p>
                                                    <small class="text-muted">12 Oct 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113205.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Rashtriya Sahara </p>
                                                    <small class="text-muted">12 Oct 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113213.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">12 Oct 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113223.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan </p>
                                                    <small class="text-muted">12 Oct 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113233.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Hindustan </p>
                                                    <small class="text-muted">6 Aug 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113328.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">23 May 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113423.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Inext </p>
                                                    <small class="text-muted">15 Dec 2018</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113549.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Rashtriya Sahara </p>
                                                    <small class="text-muted">25 Jul 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113652.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">26 Mar 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113703.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">26 Mar 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="card-deck">
                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113728.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Rashtriya Sahara </p>
                                                    <small class="text-muted">26 Mar 2022</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113752.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Dainik Jagran </p>
                                                    <small class="text-muted">28 Nov 2021</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img class="card-img-top" src="images/press/20221219_113803.jpg" alt="Card image cap" />
                                                </div>
                                                <div class="card-footer">
                                                    <p class="card-text">Amar Ujala </p>
                                                    <small class="text-muted">14 Nov 2021</small>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                            </div>
                        </div>
                        <!-- Card Section End-->

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

