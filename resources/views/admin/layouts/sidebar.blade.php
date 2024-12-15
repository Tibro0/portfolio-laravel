@php
    function setSidebarActive(array $routes)
    {
        foreach ($routes as $route) {
            if (request()->routeIs($route)) {
                return 'active';
            }
        }
        return '';
    }
@endphp
<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index.html">Stisla</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">St</a>
        </div>
        <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li class="{{ setSidebarActive(['admin.dashboard']) }}"><a class="nav-link"
                    href="{{ route('admin.dashboard') }}"><i class="fas fa-fire"></i><span>Dashboard</span></a></li>

            <li class="{{ setSidebarActive(['admin.information']) }}"><a class="nav-link"
                    href="{{ route('admin.information') }}"><i class="fas fa-info"></i>
                    <span>Information</span></a></li>

            <li class="{{ setSidebarActive(['admin.home-section-information.index']) }}"><a class="nav-link"
                    href="{{ route('admin.home-section-information.index') }}"><i class="fas fa-home"></i>
                    <span>Home Section</span></a></li>

            <li class="{{ setSidebarActive(['admin.service.*']) }}"><a class="nav-link"
                    href="{{ route('admin.service.index') }}"><i class="fas fa-cog"></i>
                    <span>Service Section</span></a></li>

            <li class="{{ setSidebarActive(['admin.portfolio.*']) }}"><a class="nav-link"
                    href="{{ route('admin.portfolio.index') }}"><i class="fas fa-portrait"></i>
                    <span>Portfolio</span></a></li>

            <li class="{{ setSidebarActive(['admin.user-information-show.*']) }}"><a class="nav-link"
                    href="{{ route('admin.user-information-show.index') }}"><i class="fas fa-envelope"></i>
                    <span>Contact Message</span></a></li>



            <li
                class="dropdown {{ setSidebarActive(['admin.my-experience.*', 'admin.my-education.*', 'admin.my-skill.*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-box"></i>
                    <span>Resume</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setSidebarActive(['admin.my-experience.*']) }}"><a class="nav-link"
                            href="{{ route('admin.my-experience.index') }}">My Experience</a></li>
                    <li class="{{ setSidebarActive(['admin.my-education.*']) }}"><a class="nav-link"
                            href="{{ route('admin.my-education.index') }}">My Education</a></li>
                    <li class="{{ setSidebarActive(['admin.my-skill.*']) }}"><a class="nav-link"
                            href="{{ route('admin.my-skill.index') }}">My skills</a></li>
                </ul>
            </li>

            {{-- <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i>
                    <span>Layout</span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="layout-default.html">Default Layout</a></li>
                    <li><a class="nav-link" href="layout-transparent.html">Transparent Sidebar</a></li>
                    <li><a class="nav-link" href="layout-top-navigation.html">Top Navigation</a></li>
                </ul>
            </li> --}}

            {{-- <li class=active><a class="nav-link" href="blank.html"><i class="far fa-square"></i>
                    <span>Blank Page</span></a></li> --}}
        </ul>
    </aside>
</div>
