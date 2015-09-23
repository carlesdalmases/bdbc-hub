<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <alatag:addApplicationMetaTags/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <title><g:layoutTitle /></title>
    <r:require modules="bootstrap2, hubCore" />

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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'biodiba.css')}" />
    <g:layoutHead />

</head>


<body class="${pageProperty(name:'body.class')?:'nav-collections'}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">


<!-- <div class="navbar navbar-inverse navbar-static-top"> -->
<div class="navbar navbar-static-top">
	<div class="navbar-inner">
	        <div class="container-fluid">
			<div> 
				<img src="${resource(dir: 'images', file: 'banner_biodiba.jpg')}"  alt="">
			</div>
		</div> <!-- container-fluid -->		
	</div> <!-- navbar-inner -->
</div> <!-- navbar navbar-static-top -->


<div class="container" id="main-content">
    <g:layoutBody />
</div><!--/.container-->

<div id="footer">
    <div class="container-fluid">
        <div class="row-fluid">

		<span>
			<a href="http://www.diba.cat" title="" target="_blank">
				<img class="logo" src="${resource(dir: 'images', file: 'logo-diba.png')}"  alt="">
			</a>
		</span>

		<span>
			<a href="http://www.ala.org.au/" title="" target="_blank">
				<img class="logo" src="${resource(dir: 'images', file: 'ala-white.png')}"  alt="">
			</a>
		</span>

		<span>
			<a href="http://datos.gbif.es/" title="" target="_blank">
				<img class="logo" src="${resource(dir: 'images', file: 'gbif_es_hojas.gif')}" alt="">
			</a>
		</span>

		<span>
			<a href="https://crowdin.com/" title="" target="_blank">
				<img class="logo" src="${resource(dir: 'images', file: 'crowdin-white.png')}" alt="">
			</a>
		</span>


<!--
        <a href="http://creativecommons.org/licenses/by/3.0/au/" title="External link to Creative Commons">
		<img src="http://i.creativecommons.org/l/by/3.0/88x31.png" width="88" height="31" alt="">
	</a>
     	
	<g:message code="generic.footer.link01" default="This site is licensed under a"/> 
                      <a href="http://creativecommons.org/licenses/by/3.0/au/" title="External link to Creative Commons" class="external">
                         <g:message code="generic.footer.link02" default="Creative Commons Attribution 3.0 Australia License"/>
                     </a>.
            
	<g:message code="generic.footer.link03" default="Provider content may be covered by other"/> 
		<a href="#terms-of-use" title="Terms of Use"><g:message code="generic.footer.link04" default="Terms of Use"/>
	</a>.
-->
        </div>
    </div>
</div><!--/#footer -->
<br/>

<!-- JS resources-->
<r:layoutResources/>
</body>
</html>
