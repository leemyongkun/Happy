<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${contextRoot}/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${contextRoot}/assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.css">

<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="${contextRoot}/custom/js/plupload/jquery.ui.plupload/css/jquery.ui.plupload.css" type="text/css" />

   <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Portfolio</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Portfolio</a></li>
                <li class="active">Portfolio 6 Columns Wulldith No Space</li>
            </ul>
        </div><!--/container-->
    </div><!--/end breadcrumbs-->

    <!--=== Container Part ===-->
    <div class="content">
        <div class="fusion-portfolio wrapper-portfolio-no-space cbp-6-col">
            <div id="filters-container" class="cbp-l-filters-alignCenter">
                <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">All</div>
                <div data-filter=".motion" class="cbp-filter-item">Motion</div>
                <div data-filter=".design" class="cbp-filter-item">Design</div>
                <div data-filter=".illustration" class="cbp-filter-item">Illustration</div>
            </div>

            <div id="grid-container" class="cbp-l-grid-gallery">
                <ul>
                    <li class="cbp-item motion">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/01.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Big Sur International</div>
                                        <p class="cbp-l-caption-desc">Web Design / Graphic</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item motion design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/02.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Rockingham Lakes</div>
                                        <p class="cbp-l-caption-desc">Environmental Design</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item illustration">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/03.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Beverage</div>
                                        <p class="cbp-l-caption-desc">Mobile Apps</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item motion design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/04.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">University</div>
                                        <p class="cbp-l-caption-desc">Presentations and Videos</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item illustration design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/05.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Mobile Phones</div>
                                        <p class="cbp-l-caption-desc">Mobile Phones</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item motion">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/06.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">British Library</div>
                                        <p class="cbp-l-caption-desc">Web Design / Graphics</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item illustration design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/07.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Global Orchestra</div>
                                        <p class="cbp-l-caption-desc">Websites</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item webdesign illustration">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/08.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Far East Forest</div>
                                        <p class="cbp-l-caption-desc">Interfaces</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item illustration design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/09.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Food</div>
                                        <p class="cbp-l-caption-desc">Web Design / Graphics</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item webdesign illustration">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/10.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">House For Sale</div>
                                        <p class="cbp-l-caption-desc">Mobile Games</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item illustration design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/11.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Spa and Massage</div>
                                        <p class="cbp-l-caption-desc">iOS apps</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item webdesign illustration">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/12.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">British Roads</div>
                                        <p class="cbp-l-caption-desc">Environmental Design</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item webdesign illustration">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/13.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Travel</div>
                                        <p class="cbp-l-caption-desc">Interfaces</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item illustration design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/14.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Books</div>
                                        <p class="cbp-l-caption-desc">Management Model</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item webdesign illustration">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/15.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Poems</div>
                                        <p class="cbp-l-caption-desc">Environmental Design</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item motion">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/16.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Coffee Shop</div>
                                        <p class="cbp-l-caption-desc">Web Design</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item motion design">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/17.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Classic Cars</div>
                                        <p class="cbp-l-caption-desc">Mobile Apps</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="cbp-item illustration">
                        <a href="portfolio_item.html" class="cbp-caption">
                            <div class="cbp-caption-defaultWrap">
                                <img src="assets/img/portfolio/18.jpg" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-text">Fine Drinks</div>
                                        <p class="cbp-l-caption-desc">Web Design / Graphic</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div><!--/End Wrapper Portfolio-->

        <div class="text-center">
            <ul class="pagination">
                <li><a href="#">«</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li class="active"><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">»</a></li>
            </ul>                                                            
        </div>
    </div>
    <!--=== End Container Part ===-->




<script type="text/javascript" src="${contextRoot}/assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<script type="text/javascript" src="${contextRoot}/assets/js/plugins/cube-portfolio-0.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
	
	