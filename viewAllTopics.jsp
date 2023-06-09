
We used source code from the following websites to complete this assignment:
https://www.w3schools.com/bootstrap/bootstrap_navbar.asp
https://bootsnipp.com/snippets/featured/fancy-navbar-login-sign-in-form
https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp
https://bootsnipp.com/snippets/featured/fancy-navbar-login-sign-in-form
https://bootsnipp.com/snippets/OORq
http://www.jqueryscript.net/layout/Simple-jQuery-Plugin-To-Create-Pinterest-Style-Grid-Layout-Pinterest-Grid.html
https://bootsnipp.com/snippets/featured/message-chat-box
https://bootsnipp.com/snippets/featured/simple-comment-block

For boostrapping the navbar with cool css, the pinterest grid, comment UI, and chats UI
-->

<style>

@import "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css";
@import "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css";
@import "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";

#div-pagination{
	clear: both;
	}
#menu-social-menu li{
	display: inline-table
	}
@media only screen and (max-width: 999px) {
#mobile-cards {
	display: block;
}

.accordian {
	display: none;
}

}

@media only screen and (min-width: 999px) {
#mobile-cards {
	display: none;
}

.accordian {
	display: block;
}
}
</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<style>
.banner-section{background-image:url("${pageContext.request.contextPath}/resources/images/CloudAppWallpaper.jpg"); background-size:cover; height: 380px; left: 0; position: absolute; top: 0; background-position:0;}
</style>

<section class="banner-section">
</section>
<section class="post-content-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 post-title-block">
               <div style="background-color:rgba(0, 0, 0, 0.5);">
                <h1 style="text-align: center; font-size: 60px; font-weight: bold;">Cloud<span style="color: #1589FF">App</span></h1>
                <ul class="list-inline text-center">
                    <li style="color: white">Stay Connected | Get Involved</li>
                </ul>
            </div>
        </div>
    </div> <!-- /container -->
  </div>
</section>

<h2 style="color: #000000; paddding-top: 0px !important; margin-top: 0px !important">Recent Posts</h2>
<div class="accordian">
  <ul>
    <c:forEach var="recent" items="${recent}">
    <li>
	    <div class="image_title">
	      <a href="<c:url value="/view/topic?id=${recent.id}" />">${recent.title}</a>
	    </div>
	    <a href="<c:url value="/view/topic?id=${recent.id}" />">
	     	<img src="<c:url value="/resources/images/${recent.category}.jpg" />">
		</a>
    </li>
    </c:forEach>
  </ul>
</div>

<!--  Mobile view of cards -->
<div id="mobile-cards">
	<div class="row d-md-none my-3">
		<ul>
			<c:forEach var="recent" items="${recent}">
				<li>
					<!-- Card # -->
					<div
						class="col-10 container mt-3 mx-auto p-0 bg-white border rounded">
						<div class="bg-primary text-light py-1 m-0">
							<h5 class="px-2 my-auto" style="background-color: black; padding: 10px; color: #fff !important; text-decoration: none;"><a href="<c:url value="/view/topic?id=${recent.id}" />" style="color: #fff !important; text-decoration: none;">${recent.title}</a></h5>
						</div>
						<div class="row">
							<div class="col-5 my-auto">
							<a href="<c:url value="/view/topic?id=${recent.id}" />">
								<img src="<c:url value="/resources/images/${recent.category}.jpg"/>" class="img-fluid" style="width: 100%; height: auto; padding: 10px; padding-top: 0px;"/>
							</a>
							</div>
							
						</div>
					</div> <!-- /Card # -->
				</li>
			</c:forEach>
		</ul>
	</div>
</div>
<!-- /mobile Card container -->

<h2 style="color: #000000">Categories</h2>
<div style="width: 100% !important; margin-left: 0px !important; padding-left: 0px !important; margin-right: 0px !important; padding-right: 0px !important;" class="container carousel">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner text-center" role="listbox">
                    <div class="item active">
                        <div class="col-lg-8" style="margin-left: 0px !important; padding-left: 0px !important;">
                            <div class="simg Stockmarket" >
                            </div>
                        </div>
                        <div class="col-lg-4">                            
                            <h2 style="color: #1589FF; text-align: left;">Stock Market<br>
                                <small style="color: #696969; text-align: left;">Stay up to date on Wallstreet and the NYSE</small></h2>
                            <p style="color: #000000; text-align: left;">
                                Join our conversations on how to be wise with your money. Stay in the loop and learn some tips & tricks from the professionals on Wallstreet so that you too can build tremendous wealth with ease.
                            </p>
                          <a class="btn btn-primary pull-left"
                               href="<c:url value="/view/category?id=Stock Market" />">
                                <i class="fa fa-arrow-circle-right"> </i></a>  
                        </div>
                    </div>
                    <div class="item">                    
                        <div class="col-lg-8" style="margin-right: 0px !important; padding-right: 0px !important;">
                            <div class="simg Socialmedia">
                            </div>
                        </div>
                        <div class="col-lg-4">                            
                            <h2 style="color: #1589FF; text-align: left;">Social Media<br>
                                <small style="color: #696969; text-align: left;">Be up to date on the hottest trends and the most popular apps</small></h2>
                            <p style="color: #000000; text-align: left;">
                                Get connected and stay involved. Branch out your network and meet new people. Learn the best and most efficient tools to get and stay connected with your friends, family, and business partners.
                            </p>    
                           <a class="btn btn-primary pull-left"
                               href="<c:url value="/view/category?id=Social Media" />">
                                <i class="fa fa-arrow-circle-right"> </i></a>  
                        </div>                    
                    </div> 
                    <div class="item">                    
                        <div class="col-lg-8" style="margin-left: 0px !important; padding-left: 0px !important;">
                            <div class="simg Politics">
                            </div>
                        </div>
                        <div class="col-lg-4">                            
                            <h2 style="color: #1589FF; text-align: left;">Politics<br>
                                <small style="color: #696969; text-align: left;">Share ideas on the current state of politics in America</small></h2>
                            <p style="color: #000000; text-align: left;">
                                Learn the good, the bad, and the ugly about our U.S. Government system. Make sure to be civil and only engage in positive conversations that look to find common ground among differing opinions.
                            </p>    
                           <a class="btn btn-primary pull-left"
                               href="<c:url value="/view/category?id=Politics" />">
                                <i class="fa fa-arrow-circle-right"> </i></a>  
                        </div>                    
                    </div> 
                    <div class="item">                    
                        <div class="col-lg-8" style="margin-right: 0px !important; padding-right: 0px !important;">
                            <div class="simg Entertainment">
                            </div>
                        </div>
                        <div class="col-lg-4">                            
                            <h2 style="color: #1589FF; text-align: left;">Entertainment<br>
                                <small style="color: #696969; text-align: left;">Catch up on all things movies, TV, and video games</small></h2>
                            <p style="color: #000000; text-align: left;">
                                Get the latest news on what to watch on Netflix, Hulu, Amazon Prime, and others. Stay in the loop with all the juicy gossip running around. Tune in on the most popular video games and video game platforms.
                            </p>    
                           <a class="btn btn-primary pull-left"
                               href="<c:url value="/view/category?id=Entertainment" />">
                                <i class="fa fa-arrow-circle-right"> </i></a>  
                        </div>                    
                    </div> 
                    <div class="item">                    
                        <div class="col-lg-8" style="margin-left: 0px !important; padding-left: 0px !important;">
                            <div class="simg Education">
                            </div>
                        </div>
                        <div class="col-lg-4">                            
                            <h2 style="color: #1589FF; text-align: left;">Education<br>
                                <small style="color: #696969; text-align: left;">Catch up on how America is doing compared to the rest of the world</small></h2>
                            <p style="color: #000000; text-align: left;">
                                From kindergarten all the way to college, check out all our topics concerning American education to make sure you know where your kids are headed.                            
                            </p>    
                           <a class="btn btn-primary pull-left"
                               href="<c:url value="/view/category?id=Education" />">
                                <i class="fa fa-arrow-circle-right"> </i></a>  
                        </div>                    
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        
<h2 style="color: #000000;  paddding-bottom: 0px !important; margin-bottom: 0px !important">All Posts</h2>
<div class="container" style="width: 100% !important; margin-left: 0px !important; padding-left: 0px !important; margin-right: 0px !important; padding-right: 0px !important;">
  <div class="row" style="width: 100% !important; margin-left: 0px !important; padding-left: 0px !important; margin-right: 0px !important; padding-right: 0px !important;">
	
	<br>
    <section id="pinBoot">
    
	<c:forEach var="topic" items="${topics}">
	
      <article class="white-panel"><img class="specialimg" src="<c:url value="/resources/images/${topic.category}.jpg" />" alt="placeholder.jpg">
        <h4><a href="<c:url value="/view/topic?id=${topic.id}" />" style="color: #1589FF;">${topic.title}</a></h4>
        <p class="bloggies">${topic.body}</p>
        <br>
        <p style="color: #696969;">${topic.date}</p>
      </article>
      
    </c:forEach>

    </section>

  </div>

</div>


<script>
$(document).ready(function() {
	$('#pinBoot').pinterest_grid({
	no_columns: 4,
	padding_x: 10,
	padding_y: 10,
	margin_bottom: 50,
	single_column_breakpoint: 700
	});
	});

	/*
	Ref:
	Thanks to:
	http://www.jqueryscript.net/layout/Simple-jQuery-Plugin-To-Create-Pinterest-Style-Grid-Layout-Pinterest-Grid.html
	*/

	;(function ($, window, document, undefined) {
	    var pluginName = 'pinterest_grid',
	        defaults = {
	            padding_x: 10,
	            padding_y: 10,
	            no_columns: 3,
	            margin_bottom: 50,
	            single_column_breakpoint: 700
	        },
	        columns,
	        $article,
	        article_width;

	    function Plugin(element, options) {
	        this.element = element;
	        this.options = $.extend({}, defaults, options) ;
	        this._defaults = defaults;
	        this._name = pluginName;
	        this.init();
	    }

	    Plugin.prototype.init = function () {
	        var self = this,
	            resize_finish;

	        $(window).resize(function() {
	            clearTimeout(resize_finish);
	            resize_finish = setTimeout( function () {
	                self.make_layout_change(self);
	            }, 11);
	        });

	        self.make_layout_change(self);

	        setTimeout(function() {
	            $(window).resize();
	        }, 500);
	    };

	    Plugin.prototype.calculate = function (single_column_mode) {
	        var self = this,
	            tallest = 0,
	            row = 0,
	            $container = $(this.element),
	            container_width = $container.width();
	            $article = $(this.element).children();

	        if(single_column_mode === true) {
	            article_width = $container.width() - self.options.padding_x;
	        } else {
	            article_width = ($container.width() - self.options.padding_x * self.options.no_columns) / self.options.no_columns;
	        }

	        $article.each(function() {
	            $(this).css('width', article_width);
	        });

	        columns = self.options.no_columns;

	        $article.each(function(index) {
	            var current_column,
	                left_out = 0,
	                top = 0,
	                $this = $(this),
	                prevAll = $this.prevAll(),
	                tallest = 0;

	            if(single_column_mode === false) {
	                current_column = (index % columns);
	            } else {
	                current_column = 0;
	            }

	            for(var t = 0; t < columns; t++) {
	                $this.removeClass('c'+t);
	            }

	            if(index % columns === 0) {
	                row++;
	            }

	            $this.addClass('c' + current_column);
	            $this.addClass('r' + row);

	            prevAll.each(function(index) {
	                if($(this).hasClass('c' + current_column)) {
	                    top += $(this).outerHeight() + self.options.padding_y;
	                }
	            });

	            if(single_column_mode === true) {
	                left_out = 0;
	            } else {
	                left_out = (index % columns) * (article_width + self.options.padding_x);
	            }

	            $this.css({
	                'left': left_out,
	                'top' : top
	            });
	        });

	        this.tallest($container);
	        $(window).resize();
	    };

	    Plugin.prototype.tallest = function (_container) {
	        var column_heights = [],
	            largest = 0;

	        for(var z = 0; z < columns; z++) {
	            var temp_height = 0;
	            _container.find('.c'+z).each(function() {
	                temp_height += $(this).outerHeight();
	            });
	            column_heights[z] = temp_height;
	        }

	        largest = Math.max.apply(Math, column_heights);
	        _container.css('height', largest + (this.options.padding_y + this.options.margin_bottom));
	    };

	    Plugin.prototype.make_layout_change = function (_self) {
	        if($(window).width() < _self.options.single_column_breakpoint) {
	            _self.calculate(true);
	        } else {
	            _self.calculate(false);
	        }
	    };

	    $.fn[pluginName] = function (options) {
	        return this.each(function () {
	            if (!$.data(this, 'plugin_' + pluginName)) {
	                $.data(this, 'plugin_' + pluginName,
	                new Plugin(this, options));
	            }
	        });
	    }

	})(jQuery, window, document);
	
</script>
