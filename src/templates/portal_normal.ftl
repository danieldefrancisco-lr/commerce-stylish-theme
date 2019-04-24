<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<header id="banner">
		<div class="navbar navbar-classic navbar-top pt-3">
			<div class="container user-personal-bar">
				<div class="align-items-start autofit-row">
					<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
						<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
					</a>

					<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

					<div class="autofit-col autofit-col-expand">
						<div class="justify-content-md-end mr-4 navbar-form" role="search">
							<@liferay.search_bar default_preferences="${preferences}" />
						</div>
					</div>

					<div class="autofit-col shopping-cart-wrapper">
						<#if !is_signed_in>
							<@liferay.user_personal_bar />
						</#if>
						<div class="shoping-car" id="b2b-mini-cart">
							<a aria-expanded="false" aria-haspopup="true" class="animate dropdown-toggle nav-link" data-toggle="dropdown" href="javascript:;" role="button">
								<span class="commerce-navigation-icon inline-item inline-item-before">
									<svg aria-hidden="true" class="lexicon-icon lexicon-icon-suitcase" focusable="false">
										<use xlink:href="${images_folder}/lexicon/icons.svg#suitcase" />
									</svg>
								</span>
								<span class="rounded-circle sticker sticker-dark sticker-lg sticker-success" id="b2b-mini-cart-items-count">
									${orderItemsQuantity}
								</span>
							</a>

							<div class="dropdown-menu dropdown-menu-right portlet-flush shopping-cart-content-mini">
								<@commerce_cart_mini default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="navbar navbar-classic navbar-expand-md navbar-light">
			<div class="container">
				<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs" href="${site_default_url}" rel="nofollow">
					<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
				</a>
				<#include "${full_templates_path}/navigation.ftl" />
			</div>
		</div>
	</header>


	<section class="pt-0 ${portal_content_css_class}" id="content">
		<#if show_example_content>
			<#include "${full_templates_path}/temporal_content.ftl" />
		</#if>

		<#if selectable>
			<div class="container-fluid">
				<@liferay_util["include"] page=content_include />
			</div>
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<#if show_footer>
		<#include "${full_templates_path}/footer.ftl" />
	</#if>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded js-scroll-trigger" href="#wrapper">
		<i class="fas fa-angle-up"></i>
	</a>
</div>

<script src="${javascript_folder}/vendor/jquery-easing/jquery.easing.js"></script>
<script src="${javascript_folder}/vendor/stylish/stylish-portfolio.js"></script>

<#--  <script src="https://blackrockdigital.github.io/startbootstrap-stylish-portfolio/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="https://blackrockdigital.github.io/startbootstrap-stylish-portfolio/js/stylish-portfolio.min.js"></script>  -->

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />


<!-- inject:js -->
<!-- endinject -->

</body>

</html>
