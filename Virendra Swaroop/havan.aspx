<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="havan.aspx.cs" Inherits="havan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel='stylesheet' href='plugins/goodlayers-core/plugins/combine/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/goodlayers-core/include/css/page-builder.css' type='text/css' media='all' />
    <link rel='stylesheet' href='plugins/revslider/public/assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style-core.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/kingster-style-custom.css' type='text/css' media='all' />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CABeeZee%3Aregular%2Citalic&amp;subset=latin%2Clatin-ext%2Cdevanagari&amp;ver=5.0.3' type='text/css' media='all' />  

     <style type="text/css">
        body {
            overflow-x: hidden;
        }
    </style>

    <%--Gallery labs and library start--%>
    <style>
    @import url('https://fonts.googleapis.com/css?family=Abel');
    .labs h1{
      font-family: 'Abel', sans-serif;
      font-weight: bold;
      font-size: 40px;
      text-align:center;
      margin: 50px 0px 20px 0px;
      color: #07294D;
    }

    .labs p {
        font-size: 22px;
        margin-bottom: 40px;
        font-family: system-ui;
    }

    .labs{
      width:80%;
      margin:0 auto;
    }

    .magnific-img a{
	    outline: 0 !important;
    }
    .magnific-img img {
        width: 100%;
        height: 250px;
        margin-bottom: 10px;
    }
    .mfp-bottom-bar,*{
       font-family: 'Abel', sans-serif;
    }
    .magnific-img {
        display: inline-block;
        width: 32.3%;
    }
    @media only screen and (max-width: 600px) {
      .magnific-img {
        display: inline-block;
        /*width: 48% !important;*/
        width: 100% !important;
      }
    }

    @media (min-width: 600px) and (max-width: 850px) {
      .magnific-img {
        display: inline-block;
        /*width: 48% !important;*/
        width: 48% !important;
      }
    }
    a.image-popup-vertical-fit {
        cursor: -webkit-zoom-in;
    }
    .mfp-with-zoom .mfp-container,
    .mfp-with-zoom.mfp-bg {
      opacity: 0;
      -webkit-backface-visibility: hidden;
      /* ideally, transition speed should match zoom duration */
      -webkit-transition: all 0.3s ease-out;
      -moz-transition: all 0.3s ease-out;
      -o-transition: all 0.3s ease-out;
      transition: all 0.3s ease-out;
    }

    .mfp-with-zoom.mfp-ready .mfp-container {
        opacity: 1;
    }
    .mfp-with-zoom.mfp-ready.mfp-bg {
        opacity: 0.98;
    }

    .mfp-with-zoom.mfp-removing .mfp-container,
    .mfp-with-zoom.mfp-removing.mfp-bg {
      opacity: 0;
    }
    .mfp-arrow-left:before {
        border-right: none !important;
    }
    .mfp-arrow-right:before {
        border-left: none !important;
    }
    button.mfp-arrow, .mfp-counter {
        opacity: 0 !important;
        transition: opacity 200ms ease-in, opacity 2000ms ease-out;
    }
    .mfp-container:hover button.mfp-arrow, .mfp-container:hover .mfp-counter{
	    opacity: 1 !important;
    }


    /* Magnific Popup CSS */
    .mfp-bg {
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 1042;
      overflow: hidden;
      position: fixed;
      background: #0b0b0b;
      opacity: 0.8; }

    .mfp-wrap {
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 1043;
      position: fixed;
      outline: none !important;
      -webkit-backface-visibility: hidden; }

    .mfp-container {
      text-align: center;
      position: absolute;
      width: 100%;
      height: 100%;
      left: 0;
      top: 0;
      padding: 0 8px;
      box-sizing: border-box; }

    .mfp-container:before {
      content: '';
      display: inline-block;
      height: 100%;
      vertical-align: middle; }

    .mfp-align-top .mfp-container:before {
      display: none; }

    .mfp-content {
      position: relative;
      display: inline-block;
      vertical-align: middle;
      margin: 0 auto;
      text-align: left;
      z-index: 1045; }

    .mfp-inline-holder .mfp-content,
    .mfp-ajax-holder .mfp-content {
      width: 100%;
      cursor: auto; }

    .mfp-ajax-cur {
      cursor: progress; }

    .mfp-zoom-out-cur, .mfp-zoom-out-cur .mfp-image-holder .mfp-close {
      cursor: -moz-zoom-out;
      cursor: -webkit-zoom-out;
      cursor: zoom-out; }

    .mfp-zoom {
      cursor: pointer;
      cursor: -webkit-zoom-in;
      cursor: -moz-zoom-in;
      cursor: zoom-in; }

    .mfp-auto-cursor .mfp-content {
      cursor: auto; }

    .mfp-close,
    .mfp-arrow,
    .mfp-preloader,
    .mfp-counter {
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none; }

    .mfp-loading.mfp-figure {
      display: none; }

    .mfp-hide {
      display: none !important; }

    .mfp-preloader {
      color: #CCC;
      position: absolute;
      top: 50%;
      width: auto;
      text-align: center;
      margin-top: -0.8em;
      left: 8px;
      right: 8px;
      z-index: 1044; }
      .mfp-preloader a {
        color: #CCC; }
        .mfp-preloader a:hover {
          color: #FFF; }

    .mfp-s-ready .mfp-preloader {
      display: none; }

    .mfp-s-error .mfp-content {
      display: none; }

    button.mfp-close,
    button.mfp-arrow {
      overflow: visible;
      cursor: pointer;
      background: transparent;
      border: 0;
      -webkit-appearance: none;
      display: block;
      outline: none;
      padding: 0;
      z-index: 1046;
      box-shadow: none;
      touch-action: manipulation; }

    button::-moz-focus-inner {
      padding: 0;
      border: 0; }

    .mfp-close {
      width: 44px;
      height: 44px;
      line-height: 44px;
      position: absolute;
      right: 0;
      top: 0;
      text-decoration: none;
      text-align: center;
      opacity: 0.65;
      padding: 0 0 18px 10px;
      color: #FFF;
      font-style: normal;
      font-size: 28px;
      font-family: Arial, Baskerville, monospace; }
      .mfp-close:hover,
      .mfp-close:focus {
        opacity: 1; }
      .mfp-close:active {
        top: 1px; }

    .mfp-close-btn-in .mfp-close {
      color: #333; }

    .mfp-image-holder .mfp-close,
    .mfp-iframe-holder .mfp-close {
      color: #FFF;
      right: -6px;
      text-align: right;
      padding-right: 6px;
      width: 100%; }

    .mfp-counter {
      position: absolute;
      top: 0;
      right: 0;
      color: #CCC;
      font-size: 12px;
      line-height: 18px;
      white-space: nowrap; }

    .mfp-arrow {
      position: absolute;
      opacity: 0.65;
      margin: 0;
      top: 50%;
      margin-top: -55px;
      padding: 0;
      width: 90px;
      height: 110px;
      -webkit-tap-highlight-color: transparent; }
      .mfp-arrow:active {
        margin-top: -54px; }
      .mfp-arrow:hover,
      .mfp-arrow:focus {
        opacity: 1; }
      .mfp-arrow:before,
      .mfp-arrow:after {
        content: '';
        display: block;
        width: 0;
        height: 0;
        position: absolute;
        left: 0;
        top: 0;
        margin-top: 35px;
        margin-left: 35px;
        border: medium inset transparent; }
      .mfp-arrow:after {
        border-top-width: 13px;
        border-bottom-width: 13px;
        top: 8px; }
      .mfp-arrow:before {
        border-top-width: 21px;
        border-bottom-width: 21px;
        opacity: 0.7; }

    .mfp-arrow-left {
      left: 0; }
      .mfp-arrow-left:after {
        border-right: 17px solid #FFF;
        margin-left: 31px; }
      .mfp-arrow-left:before {
        margin-left: 25px;
        border-right: 27px solid #3F3F3F; }

    .mfp-arrow-right {
      right: 0; }
      .mfp-arrow-right:after {
        border-left: 17px solid #FFF;
        margin-left: 39px; }
      .mfp-arrow-right:before {
        border-left: 27px solid #3F3F3F; }

    .mfp-iframe-holder {
      padding-top: 40px;
      padding-bottom: 40px; }
      .mfp-iframe-holder .mfp-content {
        line-height: 0;
        width: 100%;
        max-width: 900px; }
      .mfp-iframe-holder .mfp-close {
        top: -40px; }

    .mfp-iframe-scaler {
      width: 100%;
      height: 0;
      overflow: hidden;
      padding-top: 56.25%; }
      .mfp-iframe-scaler iframe {
        position: absolute;
        display: block;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
        background: #000; }

    /* Main image in popup */
    img.mfp-img {
      width: auto;
      max-width: 100%;
      height: auto;
      display: block;
      line-height: 0;
      box-sizing: border-box;
      padding: 40px 0 40px;
      margin: 0 auto; }

    /* The shadow behind the image */
    .mfp-figure {
      line-height: 0; }
      .mfp-figure:after {
        content: '';
        position: absolute;
        left: 0;
        top: 40px;
        bottom: 40px;
        display: block;
        right: 0;
        width: auto;
        height: auto;
        z-index: -1;
        box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
        background: #444; }
      .mfp-figure small {
        color: #BDBDBD;
        display: block;
        font-size: 12px;
        line-height: 14px; }
      .mfp-figure figure {
        margin: 0; }

    .mfp-bottom-bar {
      margin-top: -36px;
      position: absolute;
      top: 100%;
      left: 0;
      width: 100%;
      cursor: auto; }

    .mfp-title {
      text-align: left;
      line-height: 18px;
      color: #F3F3F3;
      word-wrap: break-word;
      padding-right: 36px; }

    .mfp-image-holder .mfp-content {
      max-width: 100%; }

    .mfp-gallery .mfp-image-holder .mfp-figure {
      cursor: pointer; }

    @media screen and (max-width: 800px) and (orientation: landscape), screen and (max-height: 300px) {
      /**
       * Remove all paddings around the image on small screen
       */
      .mfp-img-mobile .mfp-image-holder {
        padding-left: 0;
        padding-right: 0; }
      .mfp-img-mobile img.mfp-img {
        padding: 0; }
      .mfp-img-mobile .mfp-figure:after {
        top: 0;
        bottom: 0; }
      .mfp-img-mobile .mfp-figure small {
        display: inline;
        margin-left: 5px; }
      .mfp-img-mobile .mfp-bottom-bar {
        background: rgba(0, 0, 0, 0.6);
        bottom: 0;
        margin: 0;
        top: auto;
        padding: 3px 5px;
        position: fixed;
        box-sizing: border-box; }
        .mfp-img-mobile .mfp-bottom-bar:empty {
          padding: 0; }
      .mfp-img-mobile .mfp-counter {
        right: 5px;
        top: 3px; }
      .mfp-img-mobile .mfp-close {
        top: 0;
        right: 0;
        width: 35px;
        height: 35px;
        line-height: 35px;
        background: rgba(0, 0, 0, 0.6);
        position: fixed;
        text-align: center;
        padding: 0; 
      } 
    }

    @media all and (max-width: 900px) {
      .mfp-arrow {
        -webkit-transform: scale(0.75);
        transform: scale(0.75); }
      .mfp-arrow-left {
        -webkit-transform-origin: 0;
        transform-origin: 0; }
      .mfp-arrow-right {
        -webkit-transform-origin: 100%;
        transform-origin: 100%; }
      .mfp-container {
        padding-left: 6px;
        padding-right: 6px; } }
    </style>
    <%--Gallery labs and library End--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="home page-template-default page page-id-2039 gdlr-core-body woocommerce-no-js tribe-no-js kingster-body kingster-body-front kingster-full  kingster-with-sticky-navigation  kingster-blockquote-style-1 gdlr-core-link-to-lightbox">
        <!-- About Image Section start-->
        <div class="Aboutusimg">
            <div class="Aboutusbreadcrumb">
                <ol class="breadcrumb doubleArrow" style="font-size: 20px;">
                   <li style="margin-top:5px;"><a href="Default.aspx">Home</a></li>
                   <li class="active"><a href="photo_gallery.aspx">Gallery</a></li>
                   <li class="active"> A havan being performed, Praying for the success of students of class 12. </li>
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

                            <div class="container labs">
		                        <p>
                                    <section class="img-gallery-magnific">
			                            <div class="magnific-img">
				                            <a class="image-popup-vertical-fit" href="images/Event_Gallery/Havan/Havan%20(1).jpeg">
                                                <img src="images/Event_Gallery/Havan/Havan%20(1).jpeg" />
				                            </a>
			                            </div>

			                            <div class="magnific-img">
				                            <a class="image-popup-vertical-fit" href="images/Event_Gallery/Havan/Havan%20(2).jpeg">
                                                <img src="images/Event_Gallery/Havan/Havan%20(2).jpeg" />
				                            </a>
			                            </div>

                                    </section>
		                            <div class="clear"></div>
	                            </p>

                            </div>


                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.0/owl.carousel.js"></script>
    <script type='text/javascript' src='js/jquery/jquery.js'></script>
    <script type='text/javascript' src='js/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js'></script>
    <script type='text/javascript' src='plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js'></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.parallax.min.js"></script>  
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.actions.min.js"></script> 
    <script type="text/javascript" src="plugins/revslider/public/assets/js/extensions/revolution.extension.video.min.js"></script>

    <script type="text/javascript">
        /*<![CDATA[*/
        function setREVStartSize(e) {
            try {
                e.c = jQuery(e.c);
                var i = jQuery(window).width(),
                    t = 9999,
                    r = 0,
                    n = 0,
                    l = 0,
                    f = 0,
                    s = 0,
                    h = 0;
                if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function (e, f) {
                        f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e)
                }), t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) {
                    var u = (e.c.width(), jQuery(window).height());
                    if (void 0 != e.fullScreenOffsetContainer) {
                        var c = e.fullScreenOffsetContainer.split(",");
                        if (c) jQuery.each(c, function (e, i) {
                            u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u
                        }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
                    }
                    f = u
                } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
                e.c.closest(".rev_slider_wrapper").css({
                    height: f
                })
            } catch (d) {
                console.log("Failure at Presize of Slider:" + d)
            }
        }; /*]]>*/
    </script>
    <script>
        (function (body) {
            'use strict';
            body.className = body.className.replace(/\btribe-no-js\b/, 'tribe-js');
        })(document.body);
    </script>
    <script>
        var tribe_l10n_datatables = {
            "aria": {
                "sort_ascending": ": activate to sort column ascending",
                "sort_descending": ": activate to sort column descending"
            },
            "length_menu": "Show _MENU_ entries",
            "empty_table": "No data available in table",
            "info": "Showing _START_ to _END_ of _TOTAL_ entries",
            "info_empty": "Showing 0 to 0 of 0 entries",
            "info_filtered": "(filtered from _MAX_ total entries)",
            "zero_records": "No matching records found",
            "search": "Search:",
            "all_selected_text": "All items on this page were selected. ",
            "select_all_link": "Select all pages",
            "clear_selection": "Clear Selection.",
            "pagination": {
                "all": "All",
                "next": "Next",
                "previous": "Previous"
            },
            "select": {
                "rows": {
                    "0": "",
                    "_": ": Selected %d rows",
                    "1": ": Selected 1 row"
                }
            },
            "datepicker": {
                "dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
                "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"],
                "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                "monthNamesShort": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                "monthNamesMin": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                "nextText": "Next",
                "prevText": "Prev",
                "currentText": "Today",
                "closeText": "Done",
                "today": "Today",
                "clear": "Clear"
            }
        };
        var tribe_system_info = {
            "sysinfo_optin_nonce": "a32c675aaa",
            "clipboard_btn_text": "Copy to clipboard",
            "clipboard_copied_text": "System info copied",
            "clipboard_fail_text": "Press \"Cmd + C\" to copy"
        };
    </script>

    <script type="text/javascript">
        /*<![CDATA[*/
        function revslider_showDoubleJqueryError(sliderID) {
            var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
            errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
            errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
            errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
            errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";
            jQuery(sliderID).show().html(errorMessage);
        } /*]]>*/
    </script>

    <script type='text/javascript' src='plugins/goodlayers-core/plugins/combine/script.js'></script>
    <script type='text/javascript'>
        var gdlr_core_pbf = {
            "admin": "",
            "video": {
                "width": "640",
                "height": "360"
            },
            "ajax_url": "https:\/\/demo.goodlayers.com\/kingster\/wp-admin\/admin-ajax.php"
        };
    </script>
    <script type='text/javascript' src='plugins/goodlayers-core/include/js/page-builder.js'></script>



    <script type='text/javascript' src='js/jquery/ui/effect.min.js'></script>
    <script type='text/javascript'>
        var kingster_script_core = {
            "home_url": "https:\/\/demo.goodlayers.com\/kingster\/"
        };
    </script>
    <script type='text/javascript' src='js/plugins.min.js'></script>
	<script>
	    /*<![CDATA[*/
	    var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
	    var htmlDivCss = "";
	    if (htmlDiv) {
	        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
	    } else {
	        var htmlDiv = document.createElement("div");
	        htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
	        document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
	    } /*]]>*/
	</script>

	<script type="text/javascript">
	    /*<![CDATA[*/
	    if (setREVStartSize !== undefined) setREVStartSize({
	        c: '#rev_slider_1_1',
	        gridwidth: [1380],
	        gridheight: [713],
	        sliderLayout: 'auto'
	    });
	    var revapi1, tpj;
	    (function () {
	        if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad);
	        else onLoad();

	        function onLoad() {
	            if (tpj === undefined) {
	                tpj = jQuery;
	                if ("off" == "on") tpj.noConflict();
	            }
	            if (tpj("#rev_slider_1_1").revolution == undefined) {
	                revslider_showDoubleJqueryError("#rev_slider_1_1");
	            } else {
	                revapi1 = tpj("#rev_slider_1_1").show().revolution({
	                    sliderType: "standard",
	                    jsFileLocation: "//demo.goodlayers.com/kingster/wp-content/plugins/revslider/public/assets/js/",
	                    sliderLayout: "auto",
	                    dottedOverlay: "none",
	                    delay: 9000,
	                    navigation: {
	                        keyboardNavigation: "off",
	                        keyboard_direction: "horizontal",
	                        mouseScrollNavigation: "off",
	                        mouseScrollReverse: "default",
	                        onHoverStop: "off",
	                        touch: {
	                            touchenabled: "on",
	                            touchOnDesktop: "off",
	                            swipe_threshold: 75,
	                            swipe_min_touches: 1,
	                            swipe_direction: "horizontal",
	                            drag_block_vertical: false
	                        },
	                        arrows: {
	                            style: "uranus",
	                            enable: true,
	                            hide_onmobile: true,
	                            hide_under: 1500,
	                            hide_onleave: true,
	                            hide_delay: 200,
	                            hide_delay_mobile: 1200,
	                            tmp: '',
	                            left: {
	                                h_align: "left",
	                                v_align: "center",
	                                h_offset: 20,
	                                v_offset: 0
	                            },
	                            right: {
	                                h_align: "right",
	                                v_align: "center",
	                                h_offset: 20,
	                                v_offset: 0
	                            }
	                        },
	                        bullets: {
	                            enable: true,
	                            hide_onmobile: false,
	                            hide_over: 1499,
	                            style: "uranus",
	                            hide_onleave: true,
	                            hide_delay: 200,
	                            hide_delay_mobile: 1200,
	                            direction: "horizontal",
	                            h_align: "center",
	                            v_align: "bottom",
	                            h_offset: 0,
	                            v_offset: 30,
	                            space: 7,
	                            tmp: '<span class="tp-bullet-inner"></span>'
	                        }
	                    },
	                    visibilityLevels: [1240, 1024, 778, 480],
	                    gridwidth: 1380,
	                    gridheight: 713,
	                    lazyType: "none",
	                    shadow: 0,
	                    spinner: "off",
	                    stopLoop: "off",
	                    stopAfterLoops: -1,
	                    stopAtSlide: -1,
	                    shuffle: "off",
	                    autoHeight: "off",
	                    disableProgressBar: "on",
	                    hideThumbsOnMobile: "off",
	                    hideSliderAtLimit: 0,
	                    hideCaptionAtLimit: 0,
	                    hideAllCaptionAtLilmit: 0,
	                    debugMode: false,
	                    fallbacks: {
	                        simplifyAll: "off",
	                        nextSlideOnWindowFocus: "off",
	                        disableFocusListener: false,
	                    }
	                });
	            };
	        };
	    }()); /*]]>*/
	</script>

	<script>
	    /*<![CDATA[*/
	    var htmlDivCss = unescape("%23rev_slider_1_1%20.uranus.tparrows%20%7B%0A%20%20width%3A50px%3B%0A%20%20height%3A50px%3B%0A%20%20background%3Argba%28255%2C255%2C255%2C0%29%3B%0A%20%7D%0A%20%23rev_slider_1_1%20.uranus.tparrows%3Abefore%20%7B%0A%20width%3A50px%3B%0A%20height%3A50px%3B%0A%20line-height%3A50px%3B%0A%20font-size%3A40px%3B%0A%20transition%3Aall%200.3s%3B%0A-webkit-transition%3Aall%200.3s%3B%0A%20%7D%0A%20%0A%20%20%23rev_slider_1_1%20.uranus.tparrows%3Ahover%3Abefore%20%7B%0A%20%20%20%20opacity%3A0.75%3B%0A%20%20%7D%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%7B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C%200%29%3B%0A%20%20-webkit-transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20background%3Atransparent%3B%0A%20%20width%3A15px%3B%0A%20%20height%3A15px%3B%0A%7D%0A%23rev_slider_1_1%20.uranus%20.tp-bullet.selected%2C%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%3Ahover%20%7B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C1%29%3B%0A%20%20border%3Anone%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background%3Atransparent%3B%0A%7D%0A%0A%23rev_slider_1_1%20.uranus%20.tp-bullet-inner%20%7B%0A%20%20-webkit-transition%3A%20background-color%200.3s%20ease%2C%20-webkit-transform%200.3s%20ease%3B%0A%20%20transition%3A%20background-color%200.3s%20ease%2C%20transform%200.3s%20ease%3B%0A%20%20top%3A%200%3B%0A%20%20left%3A%200%3B%0A%20%20width%3A%20100%25%3B%0A%20%20height%3A%20100%25%3B%0A%20%20outline%3A%20none%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background-color%3A%20rgb%28255%2C%20255%2C%20255%29%3B%0A%20%20background-color%3A%20rgba%28255%2C%20255%2C%20255%2C%200.3%29%3B%0A%20%20text-indent%3A%20-999em%3B%0A%20%20cursor%3A%20pointer%3B%0A%20%20position%3A%20absolute%3B%0A%7D%0A%0A%23rev_slider_1_1%20.uranus%20.tp-bullet.selected%20.tp-bullet-inner%2C%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%3Ahover%20.tp-bullet-inner%7B%0A%20transform%3A%20scale%280.4%29%3B%0A%20-webkit-transform%3A%20scale%280.4%29%3B%0A%20background-color%3Argb%28255%2C%20255%2C%20255%29%3B%0A%7D%0A");
	    var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
	    if (htmlDiv) {
	        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
	    } else {
	        var htmlDiv = document.createElement('div');
	        htmlDiv.innerHTML = '<style>' + htmlDivCss + '</style>';
	        document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
	    } /*]]>*/
	</script>

    <script>
        (function ($) {

            "use strict";


            //Hide Loading Box (Preloader)
            function handlePreloader() {
                if ($('.preloader').length) {
                    $('.preloader').delay(200).fadeOut(500);
                }
            }


            //Update Header Style and Scroll to Top
            function headerStyle() {
                if ($('.main-header').length) {
                    var windowpos = $(window).scrollTop();
                    var siteHeader = $('.main-header');
                    var scrollLink = $('.scroll-to-top');
                    if (windowpos >= 1) {
                        siteHeader.addClass('fixed-header');
                        scrollLink.fadeIn(300);
                    } else {
                        siteHeader.removeClass('fixed-header');
                        scrollLink.fadeOut(300);
                    }
                }
            }

            headerStyle();


            //Submenu Dropdown Toggle
            if ($('.main-header li.dropdown ul').length) {
                $('.main-header li.dropdown').append('<div class="dropdown-btn"><span class="fa fa-angle-down"></span></div>');

                //Dropdown Button
                $('.main-header li.dropdown .dropdown-btn').on('click', function () {
                    $(this).prev('ul').slideToggle(500);
                });

                //Disable dropdown parent link
                $('.main-header .navigation li.dropdown > a,.hidden-bar .side-menu li.dropdown > a').on('click', function (e) {
                    e.preventDefault();
                });
            }

            //Side Content Toggle
            if ($('.main-header .outer-box .nav-btn').length) {
                //Show Form
                $('.main-header .outer-box .nav-btn').on('click', function (e) {
                    e.preventDefault();
                    $('body').addClass('side-content-visible');
                });
                //Hide Form
                $('.hidden-bar .inner-box .cross-icon,.form-back-drop,.close-menu').on('click', function (e) {
                    e.preventDefault();
                    $('body').removeClass('side-content-visible');
                });
                //Dropdown Menu
                $('.fullscreen-menu .navigation li.dropdown > a').on('click', function () {
                    $(this).next('ul').slideToggle(500);
                });
            }

            //Hidden Sidebar
            if ($('.hidden-bar').length) {
                $('.hidden-bar').mCustomScrollbar({
                    theme: "dark"
                });
            }

            // Testimonial Carousel
            if ($('.testimonial-carousel').length) {
                $('.testimonial-carousel').owlCarousel({
                    animateOut: 'slideOutDown',
                    animateIn: 'zoomIn',
                    loop: true,
                    margin: 0,
                    nav: true,
                    smartSpeed: 300,
                    autoplay: 7000,
                    navText: ['<span class="arrow-left"></span>', '<span class="arrow-right"></span>'],
                    responsive: {
                        0: {
                            items: 1
                        },
                        600: {
                            items: 1
                        },
                        800: {
                            items: 1
                        },
                        1024: {
                            items: 1
                        }
                    }
                });
            }


            //Fact Counter + Text Count
            if ($('.count-box').length) {
                $('.count-box').appear(function () {

                    var $t = $(this),
                        n = $t.find(".count-text").attr("data-stop"),
                        r = parseInt($t.find(".count-text").attr("data-speed"), 10);

                    if (!$t.hasClass("counted")) {
                        $t.addClass("counted");
                        $({
                            countNum: $t.find(".count-text").text()
                        }).animate({
                            countNum: n
                        }, {
                            duration: r,
                            easing: "linear",
                            step: function () {
                                $t.find(".count-text").text(Math.floor(this.countNum));
                            },
                            complete: function () {
                                $t.find(".count-text").text(this.countNum);
                            }
                        });
                    }

                }, { accY: 0 });
            }


            //Accordion Box
            if ($('.accordion-box').length) {
                $(".accordion-box").on('click', '.acc-btn', function () {

                    var outerBox = $(this).parents('.accordion-box');
                    var target = $(this).parents('.accordion');

                    if ($(this).hasClass('active') !== true) {
                        $(outerBox).find('.accordion .acc-btn').removeClass('active');
                    }

                    if ($(this).next('.acc-content').is(':visible')) {
                        return false;
                    } else {
                        $(this).addClass('active');
                        $(outerBox).children('.accordion').removeClass('active-block');
                        $(outerBox).find('.accordion').children('.acc-content').slideUp(300);
                        target.addClass('active-block');
                        $(this).next('.acc-content').slideDown(300);
                    }
                });
            }


            //Tabs Box
            if ($('.tabs-box').length) {
                $('.tabs-box .tab-buttons .tab-btn').on('click', function (e) {
                    e.preventDefault();
                    var target = $($(this).attr('data-tab'));

                    if ($(target).is(':visible')) {
                        return false;
                    } else {
                        target.parents('.tabs-box').find('.tab-buttons').find('.tab-btn').removeClass('active-btn');
                        $(this).addClass('active-btn');
                        target.parents('.tabs-box').find('.tabs-content').find('.tab').fadeOut(0);
                        target.parents('.tabs-box').find('.tabs-content').find('.tab').removeClass('active-tab animated fadeIn');
                        $(target).fadeIn(300);
                        $(target).addClass('active-tab animated fadeIn');
                    }
                });
            }


            //Default Masonary
            function defaultMasonry() {
                if ($('.masonry-items-container').length) {

                    var winDow = $(window);
                    // Needed variables
                    var $container = $('.masonry-items-container');

                    $container.isotope({
                        itemSelector: '.masonry-item',
                        masonry: {
                            columnWidth: 2
                        },
                        animationOptions: {
                            duration: 500,
                            easing: 'linear'
                        }
                    });

                    winDow.on('resize', function () {

                        $container.isotope({
                            itemSelector: '.masonry-item',
                            animationOptions: {
                                duration: 500,
                                easing: 'linear',
                                queue: false
                            }
                        });
                    });
                }
            }
            defaultMasonry();

            //Gallery Filters
            if ($('.filter-list').length) {
                $('.filter-list').mixItUp({});
            }

            //LightBox / Fancybox
            if ($('.lightbox-image').length) {
                $('.lightbox-image').fancybox({
                    openEffect: 'fade',
                    closeEffect: 'fade',
                    helpers: {
                        media: {}
                    }
                });
            }

            //Contact Form Validation
            if ($('#contact-form').length) {
                $('#contact-form').validate({
                    rules: {
                        username: {
                            required: true
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        phone: {
                            required: true
                        },
                        message: {
                            required: true
                        }
                    }
                });
            }


            // Scroll to a Specific Div
            if ($('.scroll-to-target').length) {
                $(".scroll-to-target").on('click', function () {
                    var target = $(this).attr('data-target');
                    // animate
                    $('html, body').animate({
                        scrollTop: $(target).offset().top
                    }, 1500);

                });
            }

            if ($('.paroller').length) {
                $('.paroller').paroller({
                    factor: 0.05,            // multiplier for scrolling speed and offset, +- values for direction control  
                    factorLg: 0.05,          // multiplier for scrolling speed and offset if window width is less than 1200px, +- values for direction control  
                    type: 'foreground',     // background, foreground  
                    direction: 'horizontal' // vertical, horizontal  
                });
            }


            if ($('.timer').length) {
                $(function () {
                    $('[data-countdown]').each(function () {
                        var $this = $(this), finalDate = $(this).data('countdown');
                        $this.countdown(finalDate, function (event) {
                            $this.html(event.strftime('%D days %H:%M:%S'));
                        });
                    });
                });

                $('.cs-countdown').countdown('').on('update.countdown', function (event) {
                    var $this = $(this).html(event.strftime('<div class="count-col"><span>%m</span><h6>Months</h6></div> <div class="count-col"><span>%D</span><h6>days</h6></div> <div class="count-col"><span>%H</span><h6>Hours</h6></div> <div class="count-col"><span>%M</span><h6>Minutes</h6></div> <div class="count-col"><span>%S</span><h6>Seconds</h6></div>'));
                });
            }


            // Elements Animation
            if ($('.wow').length) {
                var wow = new WOW(
                  {
                      boxClass: 'wow',      // animated element css class (default is wow)
                      animateClass: 'animated', // animation css class (default is animated)
                      offset: 0,          // distance to the element when triggering the animation (default is 0)
                      mobile: true,       // trigger animations on mobile devices (default is true)
                      live: true       // act on asynchronously loaded content (default is true)
                  }
                );
                wow.init();
            }


            /* ==========================================================================
               When document is Scrollig, do
               ========================================================================== */

            $(window).on('scroll', function () {
                headerStyle();
            });

            /* ==========================================================================
               When document is loading, do
               ========================================================================== */

            $(window).on('load', function () {
                handlePreloader();
                defaultMasonry();
            });

        })(window.jQuery);
    </script>


</asp:Content>



