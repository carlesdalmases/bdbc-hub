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
    <r:require modules="bootstrap2, hubCore, gbifes" />

    <r:layoutResources/>
    <g:layoutHead />
</head>
<body class="${pageProperty(name:'body.class')?:'nav-collections'}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}" >
<g:set var="fluidLayout" value="${grailsApplication.config.skin.fluidLayout?.toBoolean()}"/>

<div class="navbar navbar-fixed-top" style="margin-bottom: 35px">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse">
                <a class="brand" href="http://datos.gbif.es">Portal de Datos</a>
                <div class="nav-collapse collapse navbar-responsive-collapse">
                    <ul class="nav">
                        <li class="active">
                            <a href="#">Inicio</a>
                        </li>
                        <li>
                            <a href="http://datos.gbif.es/collectory/">Instituciones, colecciones y proyectos</a>
                        </li>
                        <li>
                            <a href="http://datos.gbif.es/collectory/datasets/">Juegos de datos</a>
                        </li>
                        <li>
                            <a href="http://datos.gbif.es/generic-hub/occurrences/search?q=&buscar_home=#tab_mapView">Datos georeferenciados</a>
                        </li>
                        <li>
                            <a href="http://datos.gbif.es/generic-hub/search#tab_simpleSearch">Buscar</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                www.gbif.es
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="nav-header">Registro-Metadatos</li>
                                <li>
                                    <a href="http://www.gbif.es/ic_BusquedaCentros.php">Instituciones, proyectos y centros</a>
                                </li>
                                <li>
                                    <a href="http://www.gbif.es/ic_BusquedaColecciones.php">Colecciones y Bases de datos</a>
                                </li>
                                <li>
                                    <a href="http://www.gbif.es/ic_BusquedaPersonas.php">Personas</a>
                                </li>
                                <li class="divider"></li>
                                <li class="nav-header">Publicación de Datos</li>
                                <li>
                                    <a href="http://www.gbif.es/guiaIPT.php">Guía de publicación</a>
                                </li>
                                <li>
                                    <a href="http://www.gbif.es/ipt">IPT</a>
                                </li>
                                <li class="divider"></li>
                                <li class="nav-header">Formación y Divulgación</li>
                                <li>
                                    <a href="http://www.gbif.es/formacion.php">Actividades</a>
                                </li>
                                <li>
                                    <a href="http://www.gbif.es/videos/videos.php">Videos</a>
                                </li>
                                <li>
                                    <a href="http://www.gbif.es/Plan_formacion.php">Plan de formación anual</a>
                                </li>
                                <li class="divider"></li>
                                <li class="nav-header">Noticias y eventos</li>
                                <li>
                                    <a href="http://www.gbif.es/noticias.php">Noticias</a>
                                </li>
                                <li>
                                    <a href="http://www.gbif.es/eventos.php">Eventos</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    %{--}<form class="navbar-search pull-left" name="simpleSearchForm" id="simpleSearchForm" action="${request.contextPath}/occurrences/search" method="GET">
                        <input class="search-query span2" type="text" placeholder="Search">
                    </form>--}%
                    <ul class="nav pull-right">


                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                Idioma
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <langs:selector langs="ca"/>
                                </li>
                                <li>
                                    <langs:selector langs="en"/>
                                </li>
                                <li>
                                    <langs:selector langs="es"/>
                                </li>
                            </ul>
                        </li>
                        <li class="divider-vertical"></li>
                        <li>
                            <a href="https://goo.gl/HeJU4w">Ayuda</a>
                        </li>
                    </ul>
                </div>
        </div>
    </div>
</div>


<div class="${fluidLayout?'container-fluid':'container'}" id="main-content">
    <g:layoutBody />
</div><!--/.container-->

<footer class="footer">
    <div class="container">

        <!-- Example row of columns -->
        <div class="row">
            <div class="span4"> <div class="aviso"><r:img dir="images" file="ico-aviso.png" alt="Aviso" />Estamos ajustando algunas funcionalidades del portal. Disculpe las molestias que esto pueda ocasionar. Si observa cualquier incidencia agradeceríamos que nos la comunicase mediante  mensaje a <a href="mailto:feedback@gbif.es">feedback@gbif.es</a></div>
                <p>GBIF.ES es el <strong>Nodo Nacional de Información sobre Biodiversidad</strong>, patrocinado por el Ministerio<br />
                    Español de Economía y Competitividad y gestionado  por el Consejo Superior de Investigaciones Científicas. El Portal de Datos de GBIF.ES se basa en el desarrollo de ALA y cuenta con el apoyo informático del IFCA, el asesoramiento de GBIF y el soporte de Crowdin para las traducciones.</p>
                <p>®<u><a href="http://creativecommons.org/licenses/by/3.0/es/" target="_blank">Algunos derechos reservados</a></u>. Imágenes usadas con permiso de los respectivos autores </p>
            </div><br>

            <div class="span4">
                <p><strong>CONTACTO</strong><br />
                    GBIF España. Unidad de Coordinación<br />
                    Real Jardín Botánico - CSIC<br />
                    C/ Claudio Moyano, 1<br />
                    28014 MADRID - España<br />
                    Tel.: 34 914203017 extensión 273<br />
                    <a href="mailto:info@gbif.es">info@gbif.es</a></p>
                <p>
                    <a href="http://www.gbif.es/rss.php"><r:img dir="images" file="rss.png" /></a>
                    <a href="https://twitter.com/GbifEs"><r:img dir="images" file="twitter.png" /></a>
                    <a href="https://github.com/GBIFes/"><r:img dir="images" file="github.png" /></a>
                </p>
                <p><strong>DATOS</strong><br />
                    <a href="http://datos.gbif.es/collectory/">Instituciones, colecciones y proyectos</a><br />
                    <a href="http://datos.gbif.es/collectory/datasets/">Juegos de datos</a><br />
                    <a href="http://datos.gbif.es/generic-hub/explore/your-area?default=true">Explorar por área</a><br />
                    <a href="http://datos.gbif.es/generic-hub/search#tab_simpleSearch">Buscar</a></p>
            </div>

            <div class="span4">
                <p><strong>SERVICIOS</strong><br />
                    <a href="http://www.gbif.es:8080/ipt/">Publicación y alojamiento de datos: IPT</a><br />
                    <a href="http://www.gbif.es/Alojamiento/ImagenesIndex.php">Alojamiento de imágenes</a><br />
                    <a href="http://www.gbif.es/formacion.php">Formación</a></p>
                <p><strong>SOFTWARE</strong><br />
                    <a href="http://www.gbif.es/herbar/herbar.php">Herbar</a> |  <a href="http://www.gbif.es/zoorbar/zoorbar.php">Zoorbar</a> |  <a href="http://www.gbif.es/hzl/hzl.php">HZL</a> |  <a href="http://www.gbif.es/darwin_test/Darwin_Test.php">Darwin Test</a></p>
                <p><strong>RECURSOS</strong><br />
                    <a href="http://www.gbif.es/Recursos.php#tabs-5">Condiciones de uso</a><br />
                    <a href="http://www.gbif.es/Recursos.php#tabs-4">Intercambio de datos</a><br />
                    <a href="http://www.gbif.es/Recursos.php#tabs-2">Uso de imágenes digitales</a><br />
                    <a href="http://www.gbif.es/Recursos.php#tabs-4">Datos sensibles</a><br />
                    <a href="http://www.gbif.es/Recursos.php#tabs-6">Guías GBIF</a></p>
            </div>
        </div>
    </div>

</footer>

<div class="footer bottom">
    <r:img dir="images" file="mineco_logo.jpg" Alt="MINECO" title="MINECO" usemap="#map"/><a href="http://www.ala.org.au/" target="_blank"><r:img dir="images" file="ala-logo.jpg" alt="Atlas  of Living Australia" title="Atlas  of Living Australia"/></a>
    <map name="Map">
        <area shape="rect" coords="201,15,337,67" href="http://www.csic.es/ " target="_blank" alt="www.csic.es">
        <area shape="rect" coords="7,17,197,68" href="http://www.mineco.gob.es/" target="_blank" alt="	http://www.mineco.gob.es">
    </map>
    <a href="http://www.ifca.unican.es/" target="_blank"><r:img dir="images" file="ifca-logo.jpg" alt="Instituto de Física de Cantabria" title="Instituto de Física de Cantabria"/></a>
    <a href="http://www.gbif.org/" target="_blank"><r:img dir="images" file="gbif-org_logo.jpg" alt="GBIF" title="GBIF"/></a>
    <a href="https://crowdin.com/ " target="_blank"><r:img dir="images" file="crowdin-logo.jpg" alt="crowdin" title="crowdin"/></a>
</div>

<!-- JS resources-->
<r:layoutResources/>
</body>
</html>