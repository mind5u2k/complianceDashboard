<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en-us">
<head>
<meta charset="utf-8">

<title>SmartAdmin</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<script>
	window.contextRoot = '${contextPath}';
</script>
<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-production-plugins.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-skins.min.css">

<!-- SmartAdmin RTL Support  -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-rtl.min.css">

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/demo.min.css">

<!-- FAVICONS -->
<link rel="shortcut icon"
	href="${contextPath}/resources/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="${contextPath}/resources/img/favicon/favicon.ico"
	type="image/x-icon">

<!-- GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon"
	href="${contextPath}/resources/img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${contextPath}/resources/img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${contextPath}/resources/img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${contextPath}/resources/img/splash/touch-icon-ipad-retina.png">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="${contextPath}/resources/img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image"
	href="${contextPath}/resources/img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image"
	href="${contextPath}/resources/img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">

</head>



<body class="fixed-header fixed-navigation">

	<!-- HEADER -->
	<header id="header" style="background: #313131 !important;">
		<div id="logo-group">
			<!-- PLACE YOUR LOGO HERE -->
			<span id="logo"> <img style="width: 64px;"
				src="${contextPath}/resources/img/ibmlogo.png" alt="SmartAdmin">
			</span>
		</div>
		<div class="hidden-xs" style="border-left: 1px solid #000;">
			<div style="border-left: 2px solid #4e4d4d; height: 100%;">
				<span id="logo" style="color: #fff; font-size: 16px;">
					Compliance Dashboard </span>
			</div>
		</div>

		<div class="pull-right">

			<!-- collapse menu button -->
			<div id="hide-menu" class="btn-header pull-right">
				<span> <a href="javascript:void(0);" data-action="toggleMenu"
					title="Collapse Menu"><i class="fa fa-reorder"></i></a>
				</span>
			</div>
			<!-- end collapse menu -->

			<!-- #MOBILE -->
			<!-- Top menu profile link : this shows only when top menu is active -->
			<ul id="mobile-profile-img"
				class="header-dropdown-list hidden-xs padding-5">
				<li class=""><a href="#"
					class="dropdown-toggle no-margin userdropdown"
					data-toggle="dropdown"> <img src="img/avatars/sunny.png"
						alt="${userModel.fullName}" class="online" />
				</a>
					<ul class="dropdown-menu pull-right">
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"><i
								class="fa fa-cog"></i> Setting</a></li>
						<li class="divider"></li>
						<li><a href="profile.html"
							class="padding-10 padding-top-0 padding-bottom-0"> <i
								class="fa fa-user"></i> <u>P</u>rofile
						</a></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"
							data-action="toggleShortcut"><i class="fa fa-arrow-down"></i>
								<u>S</u>hortcut</a></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"
							data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i>
								Full <u>S</u>creen</a></li>
						<li class="divider"></li>
						<li><a href="${contextPath}/logout"
							class="padding-10 padding-top-5 padding-bottom-5"
							data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i>
								<strong><u>L</u>ogout</strong></a></li>
					</ul></li>
			</ul>

			<!-- logout button -->
			<div id="logout" class="btn-header transparent pull-right">
				<span> <a href="${contextPath}/logout" title="Sign Out"
					data-action="userLogout"
					data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
						class="fa fa-sign-out"></i></a>
				</span>
			</div>
			<!-- end logout button -->

			<!-- search mobile button (this is hidden till mobile view port) -->
			<div id="search-mobile" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0)" title="Search"><i
						class="fa fa-search"></i></a>
				</span>
			</div>
			<!-- end input: search field -->

			<!-- fullscreen button -->
			<div id="fullscreen" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0);"
					data-action="launchFullscreen" title="Full Screen"><i
						class="fa fa-arrows-alt"></i></a>
				</span>
			</div>
		</div>
	</header>
	<aside id="left-panel" style="background: #464545 !important;">
		<div class="login-info">
			<span> <a href="javascript:void(0);" id="show-shortcut"
				data-action="toggleShortcut"> <img
					src="${contextPath}/resources/img/avatars/sunny.png" alt="me"
					class="online" /> <span> ${userModel.fullName} </span> <i
					class="fa fa-angle-down"></i>
			</a>
			</span>
		</div>
		<nav>
			<ul>
				<li class="active"><a href="index.html" title="Dashboard"><i
						class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Dashboard</span></a>
				</li>
				<li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i>
						<span class="menu-item-parent">Inbox</span><span
						class="badge pull-right inbox-badge">14</span></a></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i>
						<span class="menu-item-parent">Graphs</span></a>
					<ul>
						<li><a href="flot.html">Flot Chart</a></li>
						<li><a href="morris.html">Morris Charts</a></li>
						<li><a href="inline-charts.html">Inline Charts</a></li>
						<li><a href="dygraphs.html">Dygraphs</a></li>
						<li><a href="chartjs.html">Chart.js <span
								class="badge pull-right inbox-badge bg-color-yellow">new</span></a>
						</li>
					</ul></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-table"></i> <span
						class="menu-item-parent">Tables</span></a>
					<ul>
						<li><a href="table.html">Normal Tables</a></li>
						<li><a href="datatables.html">Data Tables <span
								class="badge inbox-badge bg-color-greenLight">v1.10</span></a></li>
						<li><a href="jqgrid.html">Jquery Grid</a></li>
					</ul></li>
				<li><a href="#"><i
						class="fa fa-lg fa-fw fa-pencil-square-o"></i> <span
						class="menu-item-parent">Forms</span></a>
					<ul>
						<li><a href="form-elements.html">Smart Form Elements</a></li>
						<li><a href="form-templates.html">Smart Form Layouts</a></li>
						<li><a href="validation.html">Smart Form Validation</a></li>
						<li><a href="bootstrap-forms.html">Bootstrap Form
								Elements</a></li>
						<li><a href="bootstrap-validator.html">Bootstrap Form
								Validation</a></li>
						<li><a href="plugins.html">Form Plugins</a></li>
						<li><a href="wizard.html">Wizards</a></li>
						<li><a href="other-editors.html">Bootstrap Editors</a></li>
						<li><a href="dropzone.html">Dropzone </a></li>
						<li><a href="image-editor.html">Image Cropping <span
								class="badge pull-right inbox-badge bg-color-yellow">new</span></a>
						</li>
					</ul></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-desktop"></i> <span
						class="menu-item-parent">UI Elements</span></a>
					<ul>
						<li><a href="general-elements.html">General Elements</a></li>
						<li><a href="buttons.html">Buttons</a></li>
						<li><a href="#">Icons</a>
							<ul>
								<li><a href="fa.html"><i class="fa fa-plane"></i> Font
										Awesome</a></li>
								<li><a href="glyph.html"><i
										class="glyphicon glyphicon-plane"></i> Glyph Icons</a></li>
								<li><a href="flags.html"><i class="fa fa-flag"></i>
										Flags</a></li>
							</ul></li>
						<li><a href="grid.html">Grid</a></li>
						<li><a href="treeview.html">Tree View</a></li>
						<li><a href="nestable-list.html">Nestable Lists</a></li>
						<li><a href="jqui.html">JQuery UI</a></li>
						<li><a href="typography.html">Typography</a></li>
						<li><a href="#">Six Level Menu</a>
							<ul>
								<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
										Item #2</a>
									<ul>
										<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
												Sub #2.1 </a>
											<ul>
												<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
														Item #2.1.1</a></li>
												<li><a href="#"><i class="fa fa-fw fa-plus"></i>
														Expand</a>
													<ul>
														<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
																File</a></li>
														<li><a href="#"><i class="fa fa-fw fa-trash-o"></i>
																Delete</a></li>
													</ul></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
										Item #3</a>

									<ul>
										<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
												3ed Level </a>
											<ul>
												<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
														File</a></li>
												<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
														File</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
					</ul></li>

				<li><a href="calendar.html"><i
						class="fa fa-lg fa-fw fa-calendar"><em>3</em></i> <span
						class="menu-item-parent">Calendar</span></a></li>
				<li><a href="widgets.html"><i
						class="fa fa-lg fa-fw fa-list-alt"></i> <span
						class="menu-item-parent">Widgets</span></a></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-puzzle-piece"></i>
						<span class="menu-item-parent">App Views</span></a>
					<ul>
						<li><a href="projects.html"><i class="fa fa-file-text-o"></i>
								Projects</a></li>
						<li><a href="blog.html"><i class="fa fa-paragraph"></i>
								Blog</a></li>
						<li><a href="gallery.html"><i class="fa fa-picture-o"></i>
								Gallery</a></li>

						<li><a href="#"><i class="fa fa-comments"></i> Forum
								Layout</a>
							<ul>
								<li><a href="forum.html">General View</a></li>
								<li><a href="forum-topic.html">Topic View</a></li>
								<li><a href="forum-post.html">Post View</a></li>
							</ul></li>
						<li><a href="profile.html"><i class="fa fa-group"></i>
								Profile</a></li>
						<li><a href="timeline.html"><i class="fa fa-clock-o"></i>
								Timeline</a></li>
					</ul></li>
				<li><a href="gmap-xml.html"><i
						class="fa fa-lg fa-fw fa-map-marker"></i> <span
						class="menu-item-parent">GMap Skins</span><span
						class="badge bg-color-greenLight pull-right inbox-badge">9</span></a>
				</li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-windows"></i> <span
						class="menu-item-parent">Miscellaneous</span></a>
					<ul>
						<li><a href="http://bootstraphunter.com/smartadmin-landing/"
							target="_blank">Landing Page <i class="fa fa-external-link"></i></a>
						</li>
						<li><a href="pricing-table.html">Pricing Tables</a></li>
						<li><a href="invoice.html">Invoice</a></li>
						<li><a href="login.html" target="_top">Login</a></li>
						<li><a href="register.html" target="_top">Register</a></li>
						<li><a href="lock.html" target="_top">Locked Screen</a></li>
						<li><a href="error404.html">Error 404</a></li>
						<li><a href="error500.html">Error 500</a></li>
						<li><a href="blank_.html">Blank Page</a></li>
						<li><a href="email-template.html">Email Template</a></li>
						<li><a href="search.html">Search Page</a></li>
						<li><a href="ckeditor.html">CK Editor</a></li>
					</ul></li>
				<li class="top-menu-invisible"><a href="#"><i
						class="fa fa-lg fa-fw fa-cube txt-color-blue"></i> <span
						class="menu-item-parent">SmartAdmin Intel</span></a>
					<ul>
						<li><a href="difver.html"><i class="fa fa-stack-overflow"></i>
								Different Versions</a></li>
						<li><a href="applayout.html"><i class="fa fa-cube"></i>
								App Settings</a></li>
						<li><a
							href="http://bootstraphunter.com/smartadmin/BUGTRACK/track_/documentation/index.html"
							target="_blank"><i class="fa fa-book"></i> Documentation</a></li>
						<li><a
							href="http://bootstraphunter.com/smartadmin/BUGTRACK/track_/"
							target="_blank"><i class="fa fa-bug"></i> Bug Tracker</a></li>
					</ul></li>
				<li class="chat-users top-menu-invisible"><a href="#"><i
						class="fa fa-lg fa-fw fa-comment-o"><em
							class="bg-color-pink flash animated">!</em></i> <span
						class="menu-item-parent">Smart Chat API <sup>beta</sup></span></a>
					<ul>
						<li>
							<!-- DISPLAY USERS -->
							<div class="display-users">

								<input class="form-control chat-user-filter"
									placeholder="Filter" type="text"> <a href="#"
									class="usr" data-chat-id="cha1" data-chat-fname="Sadi"
									data-chat-lname="Orlaf" data-chat-status="busy"
									data-chat-alertmsg="Sadi Orlaf is in a meeting. Please do not disturb!"
									data-chat-alertshow="true" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/5.png' alt='Sadi Orlaf'>
												<div class='usr-card-content'>
													<h3>Sadi Orlaf</h3>
													<p>Marketing Executive</p>
												</div>
											</div>
										">
									<i></i>Sadi Orlaf
								</a> <a href="#" class="usr" data-chat-id="cha2"
									data-chat-fname="Jessica" data-chat-lname="Dolof"
									data-chat-status="online" data-chat-alertmsg=""
									data-chat-alertshow="false" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/1.png' alt='Jessica Dolof'>
												<div class='usr-card-content'>
													<h3>Jessica Dolof</h3>
													<p>Sales Administrator</p>
												</div>
											</div>
										">
									<i></i>Jessica Dolof
								</a> <a href="#" class="usr" data-chat-id="cha3"
									data-chat-fname="Zekarburg" data-chat-lname="Almandalie"
									data-chat-status="online" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/3.png' alt='Zekarburg Almandalie'>
												<div class='usr-card-content'>
													<h3>Zekarburg Almandalie</h3>
													<p>Sales Admin</p>
												</div>
											</div>
										">
									<i></i>Zekarburg Almandalie
								</a> <a href="#" class="usr" data-chat-id="cha4"
									data-chat-fname="Barley" data-chat-lname="Krazurkth"
									data-chat-status="away" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/4.png' alt='Barley Krazurkth'>
												<div class='usr-card-content'>
													<h3>Barley Krazurkth</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
									<i></i>Barley Krazurkth
								</a> <a href="#" class="usr offline" data-chat-id="cha5"
									data-chat-fname="Farhana" data-chat-lname="Amrin"
									data-chat-status="incognito" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/female.png' alt='Farhana Amrin'>
												<div class='usr-card-content'>
													<h3>Farhana Amrin</h3>
													<p>Support Admin <small><i class='fa fa-music'></i> Playing Beethoven Classics</small></p>
												</div>
											</div>
										">
									<i></i>Farhana Amrin (offline)
								</a> <a href="#" class="usr offline" data-chat-id="cha6"
									data-chat-fname="Lezley" data-chat-lname="Jacob"
									data-chat-status="incognito" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/male.png' alt='Lezley Jacob'>
												<div class='usr-card-content'>
													<h3>Lezley Jacob</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
									<i></i>Lezley Jacob (offline)
								</a> <a href="ajax/chat.html"
									class="btn btn-xs btn-default btn-block sa-chat-learnmore-btn">About
									the API</a>

							</div> <!-- END DISPLAY USERS -->
						</li>
					</ul></li>

			</ul>
		</nav>
		<span class="minifyme" data-action="minifyMenu"> <i
			class="fa fa-arrow-circle-left hit"></i>
		</span>

	</aside>
	<!-- END NAVIGATION -->

	<!-- MAIN PANEL -->
	<div id="main" role="main">

		<!-- RIBBON -->
		<div id="ribbon" style="background: #777474 !important;">


			</span>

			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li>Home</li>
				<li>Dashboard</li>
			</ol>
			<!-- end breadcrumb -->

			<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:

				<span class="ribbon-button-alignment pull-right">
				<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
				<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
				<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> -->

		</div>
		<!-- END RIBBON -->

		<!-- MAIN CONTENT -->
		<div id="content">

			<div class="row"></div>
			<!-- widget grid -->
			<section id="widget-grid" class="">

				<!-- row -->
				<div class="row">
					<article class="col-sm-12">
						<!-- new widget -->
						<div class="jarviswidget" id="wid-id-0"
							data-widget-togglebutton="false" data-widget-editbutton="false"
							data-widget-fullscreenbutton="false"
							data-widget-colorbutton="false" data-widget-deletebutton="false">
							<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
							<header>
								<span class="widget-icon"> <i
									class="glyphicon glyphicon-stats txt-color-darken"></i>
								</span>
								<h2>Live Feeds</h2>

								<ul class="nav nav-tabs pull-right in" id="myTab">
									<li class="active"><a data-toggle="tab" href="#s1"><i
											class="fa fa-clock-o"></i> <span
											class="hidden-mobile hidden-tablet">Live Stats</span></a></li>

									<li><a data-toggle="tab" href="#s2"><i
											class="fa fa-facebook"></i> <span
											class="hidden-mobile hidden-tablet">Social Network</span></a></li>

									<li><a data-toggle="tab" href="#s3"><i
											class="fa fa-dollar"></i> <span
											class="hidden-mobile hidden-tablet">Revenue</span></a></li>
								</ul>

							</header>

							<!-- widget div-->
							<div class="no-padding">
								<!-- widget edit box -->
								<div class="jarviswidget-editbox">test</div>
								<!-- end widget edit box -->

								<div class="widget-body">
									<!-- content -->
									<div id="myTabContent" class="tab-content">
										<div
											class="tab-pane fade active in padding-10 no-padding-bottom"
											id="s1">
											<div class="row no-space">
												<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
													<span class="demo-liveupdate-1"> <span
														class="onoffswitch-title">Live switch</span> <span
														class="onoffswitch"> <input type="checkbox"
															name="start_interval" class="onoffswitch-checkbox"
															id="start_interval"> <label
															class="onoffswitch-label" for="start_interval"> <span
																class="onoffswitch-inner" data-swchon-text="ON"
																data-swchoff-text="OFF"></span> <span
																class="onoffswitch-switch"></span>
														</label>
													</span>
													</span>
													<div id="updating-chart" class="chart-large txt-color-blue"></div>

												</div>
												<div
													class="col-xs-12 col-sm-12 col-md-4 col-lg-4 show-stats">

													<div class="row">
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> My Tasks <span
																class="pull-right">130/200</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blueDark"
																	style="width: 65%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> Transfered <span
																class="pull-right">440 GB</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blue"
																	style="width: 34%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> Bugs Squashed<span
																class="pull-right">77%</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blue"
																	style="width: 77%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> User Testing <span
																class="pull-right">7 Days</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-greenLight"
																	style="width: 84%;"></div>
															</div>
														</div>

														<span class="show-stat-buttons"> <span
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6"> <a
																href="javascript:void(0);"
																class="btn btn-default btn-block hidden-xs">Generate
																	PDF</a>
														</span> <span class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
																<a href="javascript:void(0);"
																class="btn btn-default btn-block hidden-xs">Report a
																	bug</a>
														</span>
														</span>

													</div>

												</div>
											</div>

											<div class="show-stat-microcharts">
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">

													<div class="easy-pie-chart txt-color-orangeDark"
														data-percent="33" data-pie-size="50">
														<span class="percent percent-sign">35</span>
													</div>
													<span class="easy-pie-title"> Server Load <i
														class="fa fa-caret-up icon-color-bad"></i>
													</span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-greenLight"><i
																class="fa fa-caret-up"></i> 97%</span></li>
														<li><span class="label bg-color-blueLight"><i
																class="fa fa-caret-down"></i> 44%</span></li>
													</ul>
													<div
														class="sparkline txt-color-greenLight hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														130, 187, 250, 257, 200, 210, 300, 270, 363, 247, 270,
														363, 247</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-greenLight"
														data-percent="78.9" data-pie-size="50">
														<span class="percent percent-sign">78.9 </span>
													</div>
													<span class="easy-pie-title"> Disk Space <i
														class="fa fa-caret-down icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-blueDark"><i
																class="fa fa-caret-up"></i> 76%</span></li>
														<li><span class="label bg-color-blue"><i
																class="fa fa-caret-down"></i> 3%</span></li>
													</ul>
													<div
														class="sparkline txt-color-blue hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														257, 200, 210, 300, 270, 363, 130, 187, 250, 247, 270,
														363, 247</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-blue"
														data-percent="23" data-pie-size="50">
														<span class="percent percent-sign">23 </span>
													</div>
													<span class="easy-pie-title"> Transfered <i
														class="fa fa-caret-up icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-darken">10GB</span></li>
														<li><span class="label bg-color-blueDark"><i
																class="fa fa-caret-up"></i> 10%</span></li>
													</ul>
													<div
														class="sparkline txt-color-darken hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														200, 210, 363, 247, 300, 270, 130, 187, 250, 257, 363,
														247, 270</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-darken"
														data-percent="36" data-pie-size="50">
														<span class="percent degree-sign">36 <i
															class="fa fa-caret-up"></i></span>
													</div>
													<span class="easy-pie-title"> Temperature <i
														class="fa fa-caret-down icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-red"><i
																class="fa fa-caret-up"></i> 124</span></li>
														<li><span class="label bg-color-blue"><i
																class="fa fa-caret-down"></i> 40 F</span></li>
													</ul>
													<div
														class="sparkline txt-color-red hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														2700, 3631, 2471, 2700, 3631, 2471, 1300, 1877, 2500,
														2577, 2000, 2100, 3000</div>
												</div>
											</div>

										</div>
										<!-- end s1 tab pane -->

										<div class="tab-pane fade" id="s2">
											<div class="widget-body-toolbar bg-color-white">

												<form class="form-inline" role="form">

													<div class="form-group">
														<label class="sr-only" for="s123">Show From</label> <input
															type="email" class="form-control input-sm" id="s123"
															placeholder="Show From">
													</div>
													<div class="form-group">
														<input type="email" class="form-control input-sm"
															id="s124" placeholder="To">
													</div>

													<div class="btn-group hidden-phone pull-right">
														<a class="btn dropdown-toggle btn-xs btn-default"
															data-toggle="dropdown"><i class="fa fa-cog"></i> More
															<span class="caret"> </span> </a>
														<ul class="dropdown-menu pull-right">
															<li><a href="javascript:void(0);"><i
																	class="fa fa-file-text-alt"></i> Export to PDF</a></li>
															<li><a href="javascript:void(0);"><i
																	class="fa fa-question-sign"></i> Help</a></li>
														</ul>
													</div>

												</form>

											</div>
											<div class="padding-10">
												<div id="statsChart" class="chart-large has-legend-unique"></div>
											</div>

										</div>
										<!-- end s2 tab pane -->

										<div class="tab-pane fade" id="s3">

											<div class="widget-body-toolbar bg-color-white smart-form"
												id="rev-toggles">

												<div class="inline-group">

													<label for="gra-0" class="checkbox"> <input
														type="checkbox" name="gra-0" id="gra-0" checked="checked">
														<i></i> Target
													</label> <label for="gra-1" class="checkbox"> <input
														type="checkbox" name="gra-1" id="gra-1" checked="checked">
														<i></i> Actual
													</label> <label for="gra-2" class="checkbox"> <input
														type="checkbox" name="gra-2" id="gra-2" checked="checked">
														<i></i> Signups
													</label>
												</div>

												<div class="btn-group hidden-phone pull-right">
													<a class="btn dropdown-toggle btn-xs btn-default"
														data-toggle="dropdown"><i class="fa fa-cog"></i> More
														<span class="caret"> </span> </a>
													<ul class="dropdown-menu pull-right">
														<li><a href="javascript:void(0);"><i
																class="fa fa-file-text-alt"></i> Export to PDF</a></li>
														<li><a href="javascript:void(0);"><i
																class="fa fa-question-sign"></i> Help</a></li>
													</ul>
												</div>

											</div>

											<div class="padding-10">
												<div id="flotcontainer"
													class="chart-large has-legend-unique"></div>
											</div>
										</div>
										<!-- end s3 tab pane -->
									</div>

									<!-- end content -->
								</div>

							</div>
							<!-- end widget div -->
						</div>
						<!-- end widget -->

					</article>
				</div>

				<!-- end row -->

				<!-- row -->


				<!-- end row -->

			</section>
			<section id="widget-grid" class="">

				<!-- row -->
				<div class="row">
					<article class="col-sm-12">
						<!-- new widget -->
						<div class="jarviswidget" id="wid-id-0"
							data-widget-togglebutton="false" data-widget-editbutton="false"
							data-widget-fullscreenbutton="false"
							data-widget-colorbutton="false" data-widget-deletebutton="false">
							<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
							<header>
								<span class="widget-icon"> <i
									class="glyphicon glyphicon-stats txt-color-darken"></i>
								</span>
								<h2>Live Feeds</h2>

								<ul class="nav nav-tabs pull-right in" id="myTab">
									<li class="active"><a data-toggle="tab" href="#s1"><i
											class="fa fa-clock-o"></i> <span
											class="hidden-mobile hidden-tablet">Live Stats</span></a></li>

									<li><a data-toggle="tab" href="#s2"><i
											class="fa fa-facebook"></i> <span
											class="hidden-mobile hidden-tablet">Social Network</span></a></li>

									<li><a data-toggle="tab" href="#s3"><i
											class="fa fa-dollar"></i> <span
											class="hidden-mobile hidden-tablet">Revenue</span></a></li>
								</ul>

							</header>

							<!-- widget div-->
							<div class="no-padding">
								<!-- widget edit box -->
								<div class="jarviswidget-editbox">test</div>
								<!-- end widget edit box -->

								<div class="widget-body">
									<!-- content -->
									<div id="myTabContent" class="tab-content">
										<div
											class="tab-pane fade active in padding-10 no-padding-bottom"
											id="s1">
											<div class="row no-space">
												<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
													<span class="demo-liveupdate-1"> <span
														class="onoffswitch-title">Live switch</span> <span
														class="onoffswitch"> <input type="checkbox"
															name="start_interval" class="onoffswitch-checkbox"
															id="start_interval"> <label
															class="onoffswitch-label" for="start_interval"> <span
																class="onoffswitch-inner" data-swchon-text="ON"
																data-swchoff-text="OFF"></span> <span
																class="onoffswitch-switch"></span>
														</label>
													</span>
													</span>
													<div id="updating-chart" class="chart-large txt-color-blue"></div>

												</div>
												<div
													class="col-xs-12 col-sm-12 col-md-4 col-lg-4 show-stats">

													<div class="row">
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> My Tasks <span
																class="pull-right">130/200</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blueDark"
																	style="width: 65%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> Transfered <span
																class="pull-right">440 GB</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blue"
																	style="width: 34%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> Bugs Squashed<span
																class="pull-right">77%</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blue"
																	style="width: 77%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> User Testing <span
																class="pull-right">7 Days</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-greenLight"
																	style="width: 84%;"></div>
															</div>
														</div>

														<span class="show-stat-buttons"> <span
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6"> <a
																href="javascript:void(0);"
																class="btn btn-default btn-block hidden-xs">Generate
																	PDF</a>
														</span> <span class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
																<a href="javascript:void(0);"
																class="btn btn-default btn-block hidden-xs">Report a
																	bug</a>
														</span>
														</span>

													</div>

												</div>
											</div>

											<div class="show-stat-microcharts">
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">

													<div class="easy-pie-chart txt-color-orangeDark"
														data-percent="33" data-pie-size="50">
														<span class="percent percent-sign">35</span>
													</div>
													<span class="easy-pie-title"> Server Load <i
														class="fa fa-caret-up icon-color-bad"></i>
													</span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-greenLight"><i
																class="fa fa-caret-up"></i> 97%</span></li>
														<li><span class="label bg-color-blueLight"><i
																class="fa fa-caret-down"></i> 44%</span></li>
													</ul>
													<div
														class="sparkline txt-color-greenLight hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														130, 187, 250, 257, 200, 210, 300, 270, 363, 247, 270,
														363, 247</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-greenLight"
														data-percent="78.9" data-pie-size="50">
														<span class="percent percent-sign">78.9 </span>
													</div>
													<span class="easy-pie-title"> Disk Space <i
														class="fa fa-caret-down icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-blueDark"><i
																class="fa fa-caret-up"></i> 76%</span></li>
														<li><span class="label bg-color-blue"><i
																class="fa fa-caret-down"></i> 3%</span></li>
													</ul>
													<div
														class="sparkline txt-color-blue hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														257, 200, 210, 300, 270, 363, 130, 187, 250, 247, 270,
														363, 247</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-blue"
														data-percent="23" data-pie-size="50">
														<span class="percent percent-sign">23 </span>
													</div>
													<span class="easy-pie-title"> Transfered <i
														class="fa fa-caret-up icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-darken">10GB</span></li>
														<li><span class="label bg-color-blueDark"><i
																class="fa fa-caret-up"></i> 10%</span></li>
													</ul>
													<div
														class="sparkline txt-color-darken hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														200, 210, 363, 247, 300, 270, 130, 187, 250, 257, 363,
														247, 270</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-darken"
														data-percent="36" data-pie-size="50">
														<span class="percent degree-sign">36 <i
															class="fa fa-caret-up"></i></span>
													</div>
													<span class="easy-pie-title"> Temperature <i
														class="fa fa-caret-down icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-red"><i
																class="fa fa-caret-up"></i> 124</span></li>
														<li><span class="label bg-color-blue"><i
																class="fa fa-caret-down"></i> 40 F</span></li>
													</ul>
													<div
														class="sparkline txt-color-red hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														2700, 3631, 2471, 2700, 3631, 2471, 1300, 1877, 2500,
														2577, 2000, 2100, 3000</div>
												</div>
											</div>

										</div>
										<!-- end s1 tab pane -->

										<div class="tab-pane fade" id="s2">
											<div class="widget-body-toolbar bg-color-white">

												<form class="form-inline" role="form">

													<div class="form-group">
														<label class="sr-only" for="s123">Show From</label> <input
															type="email" class="form-control input-sm" id="s123"
															placeholder="Show From">
													</div>
													<div class="form-group">
														<input type="email" class="form-control input-sm"
															id="s124" placeholder="To">
													</div>

													<div class="btn-group hidden-phone pull-right">
														<a class="btn dropdown-toggle btn-xs btn-default"
															data-toggle="dropdown"><i class="fa fa-cog"></i> More
															<span class="caret"> </span> </a>
														<ul class="dropdown-menu pull-right">
															<li><a href="javascript:void(0);"><i
																	class="fa fa-file-text-alt"></i> Export to PDF</a></li>
															<li><a href="javascript:void(0);"><i
																	class="fa fa-question-sign"></i> Help</a></li>
														</ul>
													</div>

												</form>

											</div>
											<div class="padding-10">
												<div id="statsChart" class="chart-large has-legend-unique"></div>
											</div>

										</div>
										<!-- end s2 tab pane -->

										<div class="tab-pane fade" id="s3">

											<div class="widget-body-toolbar bg-color-white smart-form"
												id="rev-toggles">

												<div class="inline-group">

													<label for="gra-0" class="checkbox"> <input
														type="checkbox" name="gra-0" id="gra-0" checked="checked">
														<i></i> Target
													</label> <label for="gra-1" class="checkbox"> <input
														type="checkbox" name="gra-1" id="gra-1" checked="checked">
														<i></i> Actual
													</label> <label for="gra-2" class="checkbox"> <input
														type="checkbox" name="gra-2" id="gra-2" checked="checked">
														<i></i> Signups
													</label>
												</div>

												<div class="btn-group hidden-phone pull-right">
													<a class="btn dropdown-toggle btn-xs btn-default"
														data-toggle="dropdown"><i class="fa fa-cog"></i> More
														<span class="caret"> </span> </a>
													<ul class="dropdown-menu pull-right">
														<li><a href="javascript:void(0);"><i
																class="fa fa-file-text-alt"></i> Export to PDF</a></li>
														<li><a href="javascript:void(0);"><i
																class="fa fa-question-sign"></i> Help</a></li>
													</ul>
												</div>

											</div>

											<div class="padding-10">
												<div id="flotcontainer"
													class="chart-large has-legend-unique"></div>
											</div>
										</div>
										<!-- end s3 tab pane -->
									</div>

									<!-- end content -->
								</div>

							</div>
							<!-- end widget div -->
						</div>
						<!-- end widget -->

					</article>
				</div>

				<!-- end row -->

				<!-- row -->


				<!-- end row -->

			</section>
			<section id="widget-grid" class="">

				<!-- row -->
				<div class="row">
					<article class="col-sm-12">
						<!-- new widget -->
						<div class="jarviswidget" id="wid-id-0"
							data-widget-togglebutton="false" data-widget-editbutton="false"
							data-widget-fullscreenbutton="false"
							data-widget-colorbutton="false" data-widget-deletebutton="false">
							<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
							<header>
								<span class="widget-icon"> <i
									class="glyphicon glyphicon-stats txt-color-darken"></i>
								</span>
								<h2>Live Feeds</h2>

								<ul class="nav nav-tabs pull-right in" id="myTab">
									<li class="active"><a data-toggle="tab" href="#s1"><i
											class="fa fa-clock-o"></i> <span
											class="hidden-mobile hidden-tablet">Live Stats</span></a></li>

									<li><a data-toggle="tab" href="#s2"><i
											class="fa fa-facebook"></i> <span
											class="hidden-mobile hidden-tablet">Social Network</span></a></li>

									<li><a data-toggle="tab" href="#s3"><i
											class="fa fa-dollar"></i> <span
											class="hidden-mobile hidden-tablet">Revenue</span></a></li>
								</ul>

							</header>

							<!-- widget div-->
							<div class="no-padding">
								<!-- widget edit box -->
								<div class="jarviswidget-editbox">test</div>
								<!-- end widget edit box -->

								<div class="widget-body">
									<!-- content -->
									<div id="myTabContent" class="tab-content">
										<div
											class="tab-pane fade active in padding-10 no-padding-bottom"
											id="s1">
											<div class="row no-space">
												<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
													<span class="demo-liveupdate-1"> <span
														class="onoffswitch-title">Live switch</span> <span
														class="onoffswitch"> <input type="checkbox"
															name="start_interval" class="onoffswitch-checkbox"
															id="start_interval"> <label
															class="onoffswitch-label" for="start_interval"> <span
																class="onoffswitch-inner" data-swchon-text="ON"
																data-swchoff-text="OFF"></span> <span
																class="onoffswitch-switch"></span>
														</label>
													</span>
													</span>
													<div id="updating-chart" class="chart-large txt-color-blue"></div>

												</div>
												<div
													class="col-xs-12 col-sm-12 col-md-4 col-lg-4 show-stats">

													<div class="row">
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> My Tasks <span
																class="pull-right">130/200</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blueDark"
																	style="width: 65%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> Transfered <span
																class="pull-right">440 GB</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blue"
																	style="width: 34%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> Bugs Squashed<span
																class="pull-right">77%</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-blue"
																	style="width: 77%;"></div>
															</div>
														</div>
														<div class="col-xs-6 col-sm-6 col-md-12 col-lg-12">
															<span class="text"> User Testing <span
																class="pull-right">7 Days</span>
															</span>
															<div class="progress">
																<div class="progress-bar bg-color-greenLight"
																	style="width: 84%;"></div>
															</div>
														</div>

														<span class="show-stat-buttons"> <span
															class="col-xs-12 col-sm-6 col-md-6 col-lg-6"> <a
																href="javascript:void(0);"
																class="btn btn-default btn-block hidden-xs">Generate
																	PDF</a>
														</span> <span class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
																<a href="javascript:void(0);"
																class="btn btn-default btn-block hidden-xs">Report a
																	bug</a>
														</span>
														</span>

													</div>

												</div>
											</div>

											<div class="show-stat-microcharts">
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">

													<div class="easy-pie-chart txt-color-orangeDark"
														data-percent="33" data-pie-size="50">
														<span class="percent percent-sign">35</span>
													</div>
													<span class="easy-pie-title"> Server Load <i
														class="fa fa-caret-up icon-color-bad"></i>
													</span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-greenLight"><i
																class="fa fa-caret-up"></i> 97%</span></li>
														<li><span class="label bg-color-blueLight"><i
																class="fa fa-caret-down"></i> 44%</span></li>
													</ul>
													<div
														class="sparkline txt-color-greenLight hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														130, 187, 250, 257, 200, 210, 300, 270, 363, 247, 270,
														363, 247</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-greenLight"
														data-percent="78.9" data-pie-size="50">
														<span class="percent percent-sign">78.9 </span>
													</div>
													<span class="easy-pie-title"> Disk Space <i
														class="fa fa-caret-down icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-blueDark"><i
																class="fa fa-caret-up"></i> 76%</span></li>
														<li><span class="label bg-color-blue"><i
																class="fa fa-caret-down"></i> 3%</span></li>
													</ul>
													<div
														class="sparkline txt-color-blue hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														257, 200, 210, 300, 270, 363, 130, 187, 250, 247, 270,
														363, 247</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-blue"
														data-percent="23" data-pie-size="50">
														<span class="percent percent-sign">23 </span>
													</div>
													<span class="easy-pie-title"> Transfered <i
														class="fa fa-caret-up icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-darken">10GB</span></li>
														<li><span class="label bg-color-blueDark"><i
																class="fa fa-caret-up"></i> 10%</span></li>
													</ul>
													<div
														class="sparkline txt-color-darken hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														200, 210, 363, 247, 300, 270, 130, 187, 250, 257, 363,
														247, 270</div>
												</div>
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="easy-pie-chart txt-color-darken"
														data-percent="36" data-pie-size="50">
														<span class="percent degree-sign">36 <i
															class="fa fa-caret-up"></i></span>
													</div>
													<span class="easy-pie-title"> Temperature <i
														class="fa fa-caret-down icon-color-good"></i></span>
													<ul class="smaller-stat hidden-sm pull-right">
														<li><span class="label bg-color-red"><i
																class="fa fa-caret-up"></i> 124</span></li>
														<li><span class="label bg-color-blue"><i
																class="fa fa-caret-down"></i> 40 F</span></li>
													</ul>
													<div
														class="sparkline txt-color-red hidden-sm hidden-md pull-right"
														data-sparkline-type="line" data-sparkline-height="33px"
														data-sparkline-width="70px" data-fill-color="transparent">
														2700, 3631, 2471, 2700, 3631, 2471, 1300, 1877, 2500,
														2577, 2000, 2100, 3000</div>
												</div>
											</div>

										</div>
										<!-- end s1 tab pane -->

										<div class="tab-pane fade" id="s2">
											<div class="widget-body-toolbar bg-color-white">

												<form class="form-inline" role="form">

													<div class="form-group">
														<label class="sr-only" for="s123">Show From</label> <input
															type="email" class="form-control input-sm" id="s123"
															placeholder="Show From">
													</div>
													<div class="form-group">
														<input type="email" class="form-control input-sm"
															id="s124" placeholder="To">
													</div>

													<div class="btn-group hidden-phone pull-right">
														<a class="btn dropdown-toggle btn-xs btn-default"
															data-toggle="dropdown"><i class="fa fa-cog"></i> More
															<span class="caret"> </span> </a>
														<ul class="dropdown-menu pull-right">
															<li><a href="javascript:void(0);"><i
																	class="fa fa-file-text-alt"></i> Export to PDF</a></li>
															<li><a href="javascript:void(0);"><i
																	class="fa fa-question-sign"></i> Help</a></li>
														</ul>
													</div>

												</form>

											</div>
											<div class="padding-10">
												<div id="statsChart" class="chart-large has-legend-unique"></div>
											</div>

										</div>
										<!-- end s2 tab pane -->

										<div class="tab-pane fade" id="s3">

											<div class="widget-body-toolbar bg-color-white smart-form"
												id="rev-toggles">

												<div class="inline-group">

													<label for="gra-0" class="checkbox"> <input
														type="checkbox" name="gra-0" id="gra-0" checked="checked">
														<i></i> Target
													</label> <label for="gra-1" class="checkbox"> <input
														type="checkbox" name="gra-1" id="gra-1" checked="checked">
														<i></i> Actual
													</label> <label for="gra-2" class="checkbox"> <input
														type="checkbox" name="gra-2" id="gra-2" checked="checked">
														<i></i> Signups
													</label>
												</div>

												<div class="btn-group hidden-phone pull-right">
													<a class="btn dropdown-toggle btn-xs btn-default"
														data-toggle="dropdown"><i class="fa fa-cog"></i> More
														<span class="caret"> </span> </a>
													<ul class="dropdown-menu pull-right">
														<li><a href="javascript:void(0);"><i
																class="fa fa-file-text-alt"></i> Export to PDF</a></li>
														<li><a href="javascript:void(0);"><i
																class="fa fa-question-sign"></i> Help</a></li>
													</ul>
												</div>

											</div>

											<div class="padding-10">
												<div id="flotcontainer"
													class="chart-large has-legend-unique"></div>
											</div>
										</div>
										<!-- end s3 tab pane -->
									</div>

									<!-- end content -->
								</div>

							</div>
							<!-- end widget div -->
						</div>
						<!-- end widget -->

					</article>
				</div>

				<!-- end row -->

				<!-- row -->


				<!-- end row -->

			</section>
			<!-- end widget grid -->


		</div>
		<!-- END MAIN CONTENT -->

	</div>
	<!-- END MAIN PANEL -->

	<!-- PAGE FOOTER -->
	<div class="page-footer">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<span class="txt-color-white">SmartAdmin 1.5 <span
					class="hidden-xs"> - Web Application Framework</span> © 2014-2015
				</span>
			</div>

			<div class="col-xs-6 col-sm-6 text-right hidden-xs">
				<div class="txt-color-white inline-block">
					<i class="txt-color-blueLight hidden-mobile">Last account
						activity <i class="fa fa-clock-o"></i> <strong>52 mins
							ago &nbsp;</strong>
					</i>
					<div class="btn-group dropup">
						<button
							class="btn btn-xs dropdown-toggle bg-color-blue txt-color-white"
							data-toggle="dropdown">
							<i class="fa fa-link"></i> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu pull-right text-left">
							<li>
								<div class="padding-5">
									<p class="txt-color-darken font-sm no-margin">Download
										Progress</p>
									<div class="progress progress-micro no-margin">
										<div class="progress-bar progress-bar-success"
											style="width: 50%;"></div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="padding-5">
									<p class="txt-color-darken font-sm no-margin">Server Load</p>
									<div class="progress progress-micro no-margin">
										<div class="progress-bar progress-bar-success"
											style="width: 20%;"></div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="padding-5">
									<p class="txt-color-darken font-sm no-margin">
										Memory Load <span class="text-danger">*critical*</span>
									</p>
									<div class="progress progress-micro no-margin">
										<div class="progress-bar progress-bar-danger"
											style="width: 70%;"></div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="padding-5">
									<button class="btn btn-block btn-default">refresh</button>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="shortcut">
		<ul>
			<li><a href="inbox.html"
				class="jarvismetro-tile big-cubes bg-color-blue"> <span
					class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail
							<span class="label pull-right bg-color-darken">14</span>
					</span>
				</span>
			</a></li>
			<li><a href="calendar.html"
				class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span
					class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span>
				</span>
			</a></li>
			<li><a href="gmap-xml.html"
				class="jarvismetro-tile big-cubes bg-color-purple"> <span
					class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span>
				</span>
			</a></li>
			<li><a href="invoice.html"
				class="jarvismetro-tile big-cubes bg-color-blueDark"> <span
					class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice
							<span class="label pull-right bg-color-darken">99</span>
					</span>
				</span>
			</a></li>
			<li><a href="gallery.html"
				class="jarvismetro-tile big-cubes bg-color-greenLight"> <span
					class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery
					</span>
				</span>
			</a></li>
			<li><a href="profile.html"
				class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span
					class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My
							Profile </span>
				</span>
			</a></li>
		</ul>
	</div>
	<script data-pace-options='{ "restartOnRequestAfter": true }'
		src="${contextPath}/resources/js/plugin/pace/pace.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
		if (!window.jQuery) {
			document
					.write('<script src="${contextPath}/resources/js/libs/jquery-2.1.1.min.js"><\/script>');
		}
	</script>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
		if (!window.jQuery.ui) {
			document
					.write('<script src="${contextPath}/resources/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>
	<script src="${contextPath}/resources/js/app.config.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/js/notification/SmartNotification.min.js"></script>
	<script
		src="${contextPath}/resources/js/smartwidgets/jarvis.widget.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/jquery-validate/jquery.validate.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/masked-input/jquery.maskedinput.min.js"></script>
	<script src="${contextPath}/resources/js/plugin/select2/select2.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/fastclick/fastclick.min.js"></script>
	<script src="${contextPath}/resources/js/demo.min.js"></script>
	<script src="${contextPath}/resources/js/app.min.js"></script>
	<script src="${contextPath}/resources/js/speech/voicecommand.min.js"></script>
	<script
		src="${contextPath}/resources/js/smart-chat-ui/smart.chat.ui.min.js"></script>
	<script
		src="${contextPath}/resources/js/smart-chat-ui/smart.chat.manager.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.cust.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.time.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/vectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/vectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${contextPath}/resources/js/plugin/moment/moment.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							pageSetUp();
							$(".js-status-update a")
									.click(
											function() {
												var selText = $(this).text();
												var $this = $(this);
												$this
														.parents('.btn-group')
														.find(
																'.dropdown-toggle')
														.html(
																selText
																		+ ' <span class="caret"></span>');
												$this.parents('.dropdown-menu')
														.find('li')
														.removeClass('active');
												$this.parent().addClass(
														'active');
											});

							/*
							 * TODO: add a way to add more todo's to list
							 */

							// initialize sortable
							$(function() {
								$("#sortable1, #sortable2").sortable({
									handle : '.handle',
									connectWith : ".todo",
									update : countTasks
								}).disableSelection();
							});

							// check and uncheck
							$('.todo .checkbox > input[type="checkbox"]')
									.click(
											function() {
												var $this = $(this).parent()
														.parent().parent();

												if ($(this).prop('checked')) {
													$this.addClass("complete");

													// remove this if you want to undo a check list once checked
													//$(this).attr("disabled", true);
													$(this).parent().hide();

													// once clicked - add class, copy to memory then remove and add to sortable3
													$this
															.slideUp(
																	500,
																	function() {
																		$this
																				.clone()
																				.prependTo(
																						"#sortable3")
																				.effect(
																						"highlight",
																						{},
																						800);
																		$this
																				.remove();
																		countTasks();
																	});
												} else {
													// insert undo code here...
												}

											})
							// count tasks
							function countTasks() {

								$('.todo-group-title').each(
										function() {
											var $this = $(this);
											$this.find(".num-of-tasks").text(
													$this.next().find("li")
															.size());
										});

							}

							/*
							 * RUN PAGE GRAPHS
							 */

							/* TAB 1: UPDATING CHART */
							// For the demo we use generated data, but normally it would be coming from the server
							var data = [], totalPoints = 200, $UpdatingChartColors = $(
									"#updating-chart").css('color');

							function getRandomData() {
								if (data.length > 0)
									data = data.slice(1);

								// do a random walk
								while (data.length < totalPoints) {
									var prev = data.length > 0 ? data[data.length - 1]
											: 50;
									var y = prev + Math.random() * 10 - 5;
									if (y < 0)
										y = 0;
									if (y > 100)
										y = 100;
									data.push(y);
								}

								// zip the generated y values with the x values
								var res = [];
								for (var i = 0; i < data.length; ++i)
									res.push([ i, data[i] ])
								return res;
							}

							// setup control widget
							var updateInterval = 1500;
							$("#updating-chart").val(updateInterval).change(
									function() {

										var v = $(this).val();
										if (v && !isNaN(+v)) {
											updateInterval = +v;
											$(this).val("" + updateInterval);
										}

									});

							// setup plot
							var options = {
								yaxis : {
									min : 0,
									max : 100
								},
								xaxis : {
									min : 0,
									max : 100
								},
								colors : [ $UpdatingChartColors ],
								series : {
									lines : {
										lineWidth : 1,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 0.4
											}, {
												opacity : 0
											} ]
										},
										steps : false

									}
								}
							};

							var plot = $.plot($("#updating-chart"),
									[ getRandomData() ], options);

							/* live switch */
							$('input[type="checkbox"]#start_interval').click(
									function() {
										if ($(this).prop('checked')) {
											$on = true;
											updateInterval = 1500;
											update();
										} else {
											clearInterval(updateInterval);
											$on = false;
										}
									});

							function update() {
								if ($on == true) {
									plot.setData([ getRandomData() ]);
									plot.draw();
									setTimeout(update, updateInterval);

								} else {
									clearInterval(updateInterval)
								}

							}

							var $on = false;

							/*end updating chart*/

							/* TAB 2: Social Network  */

							$(function() {
								// jQuery Flot Chart
								var twitter = [ [ 1, 27 ], [ 2, 34 ],
										[ 3, 51 ], [ 4, 48 ], [ 5, 55 ],
										[ 6, 65 ], [ 7, 61 ], [ 8, 70 ],
										[ 9, 65 ], [ 10, 75 ], [ 11, 57 ],
										[ 12, 59 ], [ 13, 62 ] ], facebook = [
										[ 1, 25 ], [ 2, 31 ], [ 3, 45 ],
										[ 4, 37 ], [ 5, 38 ], [ 6, 40 ],
										[ 7, 47 ], [ 8, 55 ], [ 9, 43 ],
										[ 10, 50 ], [ 11, 47 ], [ 12, 39 ],
										[ 13, 47 ] ], data = [ {
									label : "Twitter",
									data : twitter,
									lines : {
										show : true,
										lineWidth : 1,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 0.1
											}, {
												opacity : 0.13
											} ]
										}
									},
									points : {
										show : true
									}
								}, {
									label : "Facebook",
									data : facebook,
									lines : {
										show : true,
										lineWidth : 1,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 0.1
											}, {
												opacity : 0.13
											} ]
										}
									},
									points : {
										show : true
									}
								} ];

								var options = {
									grid : {
										hoverable : true
									},
									colors : [ "#568A89", "#3276B1" ],
									tooltip : true,
									tooltipOpts : {
										//content : "Value <b>$x</b> Value <span>$y</span>",
										defaultTheme : false
									},
									xaxis : {
										ticks : [ [ 1, "JAN" ], [ 2, "FEB" ],
												[ 3, "MAR" ], [ 4, "APR" ],
												[ 5, "MAY" ], [ 6, "JUN" ],
												[ 7, "JUL" ], [ 8, "AUG" ],
												[ 9, "SEP" ], [ 10, "OCT" ],
												[ 11, "NOV" ], [ 12, "DEC" ],
												[ 13, "JAN+1" ] ]
									},
									yaxes : {

									}
								};

								var plot3 = $.plot($("#statsChart"), data,
										options);
							});

							// END TAB 2

							// TAB THREE GRAPH //
							/* TAB 3: Revenew  */

							$(function() {

								var trgt = [ [ 1354586000000, 153 ],
										[ 1364587000000, 658 ],
										[ 1374588000000, 198 ],
										[ 1384589000000, 663 ],
										[ 1394590000000, 801 ],
										[ 1404591000000, 1080 ],
										[ 1414592000000, 353 ],
										[ 1424593000000, 749 ],
										[ 1434594000000, 523 ],
										[ 1444595000000, 258 ],
										[ 1454596000000, 688 ],
										[ 1464597000000, 364 ] ], prft = [
										[ 1354586000000, 53 ],
										[ 1364587000000, 65 ],
										[ 1374588000000, 98 ],
										[ 1384589000000, 83 ],
										[ 1394590000000, 980 ],
										[ 1404591000000, 808 ],
										[ 1414592000000, 720 ],
										[ 1424593000000, 674 ],
										[ 1434594000000, 23 ],
										[ 1444595000000, 79 ],
										[ 1454596000000, 88 ],
										[ 1464597000000, 36 ] ], sgnups = [
										[ 1354586000000, 647 ],
										[ 1364587000000, 435 ],
										[ 1374588000000, 784 ],
										[ 1384589000000, 346 ],
										[ 1394590000000, 487 ],
										[ 1404591000000, 463 ],
										[ 1414592000000, 479 ],
										[ 1424593000000, 236 ],
										[ 1434594000000, 843 ],
										[ 1444595000000, 657 ],
										[ 1454596000000, 241 ],
										[ 1464597000000, 341 ] ], toggles = $("#rev-toggles"), target = $("#flotcontainer");

								var data = [ {
									label : "Target Profit",
									data : trgt,
									bars : {
										show : true,
										align : "center",
										barWidth : 30 * 30 * 60 * 1000 * 80
									}
								}, {
									label : "Actual Profit",
									data : prft,
									color : '#3276B1',
									lines : {
										show : true,
										lineWidth : 3
									},
									points : {
										show : true
									}
								}, {
									label : "Actual Signups",
									data : sgnups,
									color : '#71843F',
									lines : {
										show : true,
										lineWidth : 1
									},
									points : {
										show : true
									}
								} ]

								var options = {
									grid : {
										hoverable : true
									},
									tooltip : true,
									tooltipOpts : {
										//content: '%x - %y',
										//dateFormat: '%b %y',
										defaultTheme : false
									},
									xaxis : {
										mode : "time"
									},
									yaxes : {
										tickFormatter : function(val, axis) {
											return "$" + val;
										},
										max : 1200
									}

								};

								plot2 = null;

								function plotNow() {
									var d = [];
									toggles.find(':checkbox').each(
											function() {
												if ($(this).is(':checked')) {
													d.push(data[$(this).attr(
															"name")
															.substr(4, 1)]);
												}
											});
									if (d.length > 0) {
										if (plot2) {
											plot2.setData(d);
											plot2.draw();
										} else {
											plot2 = $.plot(target, d, options);
										}
									}

								}
								;

								toggles.find(':checkbox').on('change',
										function() {
											plotNow();
										});
								plotNow()

							});

							/*
							 * VECTOR MAP
							 */

							data_array = {
								"US" : 4977,
								"AU" : 4873,
								"IN" : 3671,
								"BR" : 2476,
								"TR" : 1476,
								"CN" : 146,
								"CA" : 134,
								"BD" : 100
							};

							$('#vector-map')
									.vectorMap(
											{
												map : 'world_mill_en',
												backgroundColor : '#fff',
												regionStyle : {
													initial : {
														fill : '#c4c4c4'
													},
													hover : {
														"fill-opacity" : 1
													}
												},
												series : {
													regions : [ {
														values : data_array,
														scale : [ '#85a8b6',
																'#4d7686' ],
														normalizeFunction : 'polynomial'
													} ]
												},
												onRegionLabelShow : function(e,
														el, code) {
													if (typeof data_array[code] == 'undefined') {
														e.preventDefault();
													} else {
														var countrylbl = data_array[code];
														el.html(el.html()
																+ ': '
																+ countrylbl
																+ ' visits');
													}
												}
											});

							/*
							 * FULL CALENDAR JS
							 */

							if ($("#calendar").length) {
								var date = new Date();
								var d = date.getDate();
								var m = date.getMonth();
								var y = date.getFullYear();

								var calendar = $('#calendar')
										.fullCalendar(
												{

													editable : true,
													draggable : true,
													selectable : false,
													selectHelper : true,
													unselectAuto : false,
													disableResizing : false,

													header : {
														left : 'title', //,today
														center : 'prev, next, today',
														right : 'month, agendaWeek, agenDay' //month, agendaDay,
													},

													select : function(start,
															end, allDay) {
														var title = prompt('Event Title:');
														if (title) {
															calendar
																	.fullCalendar(
																			'renderEvent',
																			{
																				title : title,
																				start : start,
																				end : end,
																				allDay : allDay
																			},
																			true // make the event "stick"
																	);
														}
														calendar
																.fullCalendar('unselect');
													},

													events : [
															{
																title : 'All Day Event',
																start : new Date(
																		y, m, 1),
																description : 'long description',
																className : [
																		"event",
																		"bg-color-greenLight" ],
																icon : 'fa-check'
															},
															{
																title : 'Long Event',
																start : new Date(
																		y, m,
																		d - 5),
																end : new Date(
																		y, m,
																		d - 2),
																className : [
																		"event",
																		"bg-color-red" ],
																icon : 'fa-lock'
															},
															{
																id : 999,
																title : 'Repeating Event',
																start : new Date(
																		y, m,
																		d - 3,
																		16, 0),
																allDay : false,
																className : [
																		"event",
																		"bg-color-blue" ],
																icon : 'fa-clock-o'
															},
															{
																id : 999,
																title : 'Repeating Event',
																start : new Date(
																		y, m,
																		d + 4,
																		16, 0),
																allDay : false,
																className : [
																		"event",
																		"bg-color-blue" ],
																icon : 'fa-clock-o'
															},
															{
																title : 'Meeting',
																start : new Date(
																		y, m,
																		d, 10,
																		30),
																allDay : false,
																className : [
																		"event",
																		"bg-color-darken" ]
															},
															{
																title : 'Lunch',
																start : new Date(
																		y, m,
																		d, 12,
																		0),
																end : new Date(
																		y, m,
																		d, 14,
																		0),
																allDay : false,
																className : [
																		"event",
																		"bg-color-darken" ]
															},
															{
																title : 'Birthday Party',
																start : new Date(
																		y, m,
																		d + 1,
																		19, 0),
																end : new Date(
																		y, m,
																		d + 1,
																		22, 30),
																allDay : false,
																className : [
																		"event",
																		"bg-color-darken" ]
															},
															{
																title : 'Smartadmin Open Day',
																start : new Date(
																		y, m,
																		28),
																end : new Date(
																		y, m,
																		29),
																className : [
																		"event",
																		"bg-color-darken" ]
															} ],

													eventRender : function(
															event, element,
															icon) {
														if (!event.description == "") {
															element
																	.find(
																			'.fc-event-title')
																	.append(
																			"<br/><span class='ultra-light'>"
																					+ event.description
																					+ "</span>");
														}
														if (!event.icon == "") {
															element
																	.find(
																			'.fc-event-title')
																	.append(
																			"<i class='air air-top-right fa " + event.icon + " '></i>");
														}
													}
												});

							}
							;

							/* hide default buttons */
							$('.fc-header-right, .fc-header-center').hide();

							// calendar prev
							$('#calendar-buttons #btn-prev').click(function() {
								$('.fc-button-prev').click();
								return false;
							});

							// calendar next
							$('#calendar-buttons #btn-next').click(function() {
								$('.fc-button-next').click();
								return false;
							});

							// calendar today
							$('#calendar-buttons #btn-today').click(function() {
								$('.fc-button-today').click();
								return false;
							});

							// calendar month
							$('#mt').click(
									function() {
										$('#calendar').fullCalendar(
												'changeView', 'month');
									});

							// calendar agenda week
							$('#ag').click(
									function() {
										$('#calendar').fullCalendar(
												'changeView', 'agendaWeek');
									});

							// calendar agenda day
							$('#td').click(
									function() {
										$('#calendar').fullCalendar(
												'changeView', 'agendaDay');
									});

							/*
							 * CHAT
							 */

							$.filter_input = $('#filter-chat-list');
							$.chat_users_container = $('#chat-container > .chat-list-body')
							$.chat_users = $('#chat-users')
							$.chat_list_btn = $('#chat-container > .chat-list-open-close');
							$.chat_body = $('#chat-body');

							/*
							 * LIST FILTER (CHAT)
							 */

							// custom css expression for a case-insensitive contains()
							jQuery.expr[':'].Contains = function(a, i, m) {
								return (a.textContent || a.innerText || "")
										.toUpperCase().indexOf(
												m[3].toUpperCase()) >= 0;
							};

							function listFilter(list) {// header is any element, list is an unordered list
								// create and add the filter form to the header

								$.filter_input
										.change(
												function() {
													var filter = $(this).val();
													if (filter) {
														// this finds all links in a list that contain the input,
														// and hide the ones not containing the input while showing the ones that do
														$.chat_users
																.find(
																		"a:not(:Contains("
																				+ filter
																				+ "))")
																.parent()
																.slideUp();
														$.chat_users
																.find(
																		"a:Contains("
																				+ filter
																				+ ")")
																.parent()
																.slideDown();
													} else {
														$.chat_users.find("li")
																.slideDown();
													}
													return false;
												}).keyup(function() {
											// fire the above change event after every letter
											$(this).change();

										});

							}

							// on dom ready
							listFilter($.chat_users);

							// open chat list
							$.chat_list_btn.click(function() {
								$(this).parent('#chat-container').toggleClass(
										'open');
							})

							$.chat_body.animate({
								scrollTop : $.chat_body[0].scrollHeight
							}, 500);

						});
	</script>

	<!-- Your GOOGLE ANALYTICS CODE Below -->
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-XXXXXXXX-X' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>

</body>

</html>