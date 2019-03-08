<a class="menu-toggle rounded" href="#">
	<i class="fas fa-bars"></i>
</a>

<nav class="navbar-stylish" id="sidebar-wrapper">
		<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
		<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />
		<@liferay.search_bar default_preferences="${preferences}" />
</nav>