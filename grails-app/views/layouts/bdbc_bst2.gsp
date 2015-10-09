

<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <alatag:addApplicationMetaTags />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    %{--<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">--}%

    <title><g:layoutTitle /></title>
    <r:require modules="bootstrap2, hubCore" />

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'biodiba.css')}" />

    <r:script disposition='head'>

        // initialise plugins
        jQuery(function(){

            // Mobile/desktop toggle
            // TODO: set a cookie so user's choice is remembered across pages
            var responsiveCssFile = $("#responsiveCss").attr("href"); // remember set href
            $(".toggleResponsive").click(function(e) {
                e.preventDefault();
                $(this).find("i").toggleClass("icon-resize-small icon-resize-full");
                var currentHref = $("#responsiveCss").attr("href");
                if (currentHref) {
                    $("#responsiveCss").attr("href", ""); // set to desktop (fixed)
                    $(this).find("span").html("Mobile");
                } else {
                    $("#responsiveCss").attr("href", responsiveCssFile); // set to mobile (responsive)
                    $(this).find("span").html("Desktop");
                }
            });

            $('.helphover').popover({animation: true, trigger:'hover'});
        });
    </r:script>

    <r:layoutResources/>
    <g:layoutHead />
</head>

<body class="${pageProperty(name:'body.class')?:'nav-collections'}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">

<g:set var="fluidLayout" value="${grailsApplication.config.skin.fluidLayout?.toBoolean()}"/>

<div id="top_logo" class="container-fluid">

    <div class="row-fluid">
        <div class="">
            <a href="http://www.diba.cat" title="Diputació de Barcelona" class="pull-left">
                <img src="${resource(dir: 'images', file: 'logo-diba.png')}" style="height:45px;width:137px">
            </a>
        </div>
        <div class="">
            <a href="http://www.mancomunitatdecatalunya.cat" title="Macomunitat de Catalunya" class="pull-left" style="width:49px;height:45px;margin-left:30px;">
                <img src="${resource(dir: 'images', file: 'logo_Manco.png')}" target="_blank">
            </a>
        </div>
        <div class="span8">
            <h1 style="font-size:36px;text-align:right;font-weight:bold;margin-top:10px">BIODIBA - Portal de dades de biodiversitat</h1>
        </div>
    </div>

    <div class="clearfix"></div>

	<!--INICI menú principal WEB  -->
     <div id="menuprin">
         <div class="menupr">
                 <ul id="ul_menuprin" class="nav" >
                            <li class="span3"><a href="">EL PORTAL</a></li>
                            <li class="span3"><a href="">WEB DE CONSERVACIÓ</a></li>
                            <li class="span3"><a href="">CRÈDITS</a></li>
                            <li class="span3 last dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="">Idiomes
                                    <span id="idiomes" class="caret"></span>
                                </a>
                                    <ul class="span2 dropdown-menu">
                                        <li class="first menu">Català</li>
                                        <li class="menu">Español</li>
                                        <li class="menu">English</li>
                                    </ul>
                            </li>
                 </ul>
         </div>
     </div><!--FI menú principal WEB  -->
     <div class="clearfix"></div>


<!-- Menú mòbil -->
<div id="menuprin_mobil">
<div class="navbar">
  <div class="navbar-inner">
    <div class="container">

      <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
      <a class="btn btn-navbar pull-left" data-toggle="collapse" data-target=".nav-collapse" style="float:left">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <!-- Be sure to leave the brand out there if you want it shown -->
      <!-- <a class="brand" href="#">Project name</a> -->

      <!-- Everything you want hidden at 940px or less, place within here -->
      <div class="nav-collapse collapse">
        <!-- .nav, .navbar-search, .navbar-form, etc -->
          <div class="navbar">
              <ul class="nav navbar-nav">
                  <li class="">
                      <a href="">El Portal</a>
                  </li>

                  <li class="">
                      <a href="">Web de Conservació</a>
                  </li>

                  <li class="">
                      <a href="">Credits</a>
                  </li>

                          <li class="">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Idiomes<span class="caret" id="idiomes"></span></a>
                            <ul class="dropdown-menu">
                              <li><a href="">Català</a></li>
                              <li><a href="">Español</a></li>
                              <li><a href="">English</a></li>
                             </ul>
                          </li>
                        </ul>
          </div>
      </div>
    </div>
  </div>
</div>
</div><!--FI menú principal MOBIL  -->


<div class="clearfix"></div>
</div><!-- id=top_logo -->
<div class="clearfix"></div>


<div class="${fluidLayout?'container-fluid':'container'}" id="main-content" style:"background-color:#FFFFFF">
    <g:layoutBody />
</div><!--/.container-->

<div class="clearfix"></div>

    <!--INICI PEU de pàgina  -->
    <div class="footer">
    	<div class="row-fluid">
            <div class="span12">
            	<div class="row-fluid">
                	<div class="span4">
                    	<div class="footerbloc bloc2">
                        	<ul>
                            	<li><a href="http://www.diba.cat/contacte">Contacte</a></li>
                                <li><a href="http://www.diba.cat/directori">Directori de contacte</a></li>
                            </ul>
                        </div>
                     </div>
                    <div class="span4">
                        <div class="footerbloc bloc2">
                            <ul>
                                <li><a href="http://www.diba.cat/xarxes-socials">Xarxes socials</a></li>
                                <li><a href="http://www.diba.cat/apps">Aplicacions mòbils</a></li>
                                <li><a href="http://www.diba.cat/comunitats-de-practica">Comunitats de pràctiques</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="footerbloc bloc2">
                            <ul>
                                <li><a href="http://www.diba.cat/accessibilitat">Accessibilitat</a></li>
                                <li><a href="http://www.diba.cat/avislegal">Avís legal</a></li>
                            </ul>
                        </div>
                    </div>
                	<div class="clearfix"></div>
                </div>
            </div>
        </div>


        <div class="row-fluid">
                    <div class="span8">
                        <div class="footerbloc">
                            <div class="span2">
                                 <a href="http://www.diba.cat" title="Diputació de Barcelona">
                                 <img src="${resource(dir: 'images', file: 'logo-diba.png')}" style="margin-top:5px"></a>
                            </div>
                            <!--  class="img-responsive" -->
                            <div class="span2">
                                 <a href="http://datos.gbif.es" title="GBIF.es" target="_blank">
                                 <img src="${resource(dir: 'images', file: 'gbif_es_hojas.gif')}" alt="GBIF.es" style="margin-top:5px;width:auto;height:50px"></a>
                            </div>
                            <div class="span2">
                                 <a href="http://www.ala.org.au/" title="Atlas of Living Australia" target="_blank">
                                 <img src="${resource(dir: 'images', file: 'ala-white.png')}" alt="Atlas of Living Australia" style="margin-top:5px;width:auto;height:50px"></a>
                            </div>
                            <div class="span2">
                                 <a href="https://crowdin.com/" title="Crowdin" target="_blank">
                                 <img src="${resource(dir: 'images', file: 'crowdin-white.png')}" alt="Crowdin" style="margin-top:5px;width:auto;height:40px"></a>
                            </div>
                        </div>
                    </div>

                    <div class="span4" id="xarxes2">
                            <div class="footerbloc bloc3">

                            <a href="http://www.facebook.com/DiputaciodeBarcelona" title="Facebook de la Diputació de Barcelona" target="_blank">
                                <img src="${resource(dir: 'images', file: 'net1.png')}">
                            </a>

                            <a href="https://twitter.com/Diba" title="Twitter de la Diputació de Barcelona" target="_blank">
                                <img src="${resource(dir: 'images', file: 'net2.png')}">
                            </a>

                            <a href="http://www.youtube.com/diba" title="Youtube de la Diputació de Barcelona" target="_blank">
                                <img src="${resource(dir: 'images', file: 'youtube_26x26.png')}">
                            </a>
                            <a href="https://instagram.com/dibacat" title="Instagram de la Diputació de Barcelona" target="_blank">
                                <img src="${resource(dir: 'images', file: 'net7.png')}">
                            </a>
                            <a href="/sala-de-premsa/nota-de-premsa/-/journal/rss/2596612?doAsGroupId=553295&amp;refererPlid=390764&amp;_15_groupId=553295" title="Notícies d'actualitat de la Diputació de Barcelona" target="_blank">
                                <img src="${resource(dir: 'images', file: 'net4.png')}">
                            </a>

                            </div>

                            <div class="footerbloc bloc3">Diputació de Barcelona. Rambla de Catalunya, 126. 08008 Barcelona. Tel. 934 022 222</div>
                    </div>
	</div>

    </div><!--FI PEU de pàgina  -->

<br/>

<!-- JS resources-->
<r:layoutResources/>
</body>
</html>