

<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="{{route('dashboard')}}">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{route('user.index')}}">
                <i class="mdi mdi-face-agent menu-icon"></i>
                <span class="menu-title">user</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{route('pages.index')}}">
                <i class="mdi mdi-page-layout-body menu-icon"></i>
                <span class="menu-title">Pages</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{route('gallery.index')}}">
                <i class="mdi mdi-image menu-icon"></i>
                <span class="menu-title">Gallery</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{route('products.index')}}">
                <i class="mdi mdi-projector menu-icon"></i>
                <span class="menu-title">Products</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{route('settings.index')}}">
                <i class="mdi mdi-settings menu-icon"></i>
                <span class="menu-title">Settings</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{route('contactus.index')}}">
                <i class="mdi mdi-contacts menu-icon"></i>
                <span class="menu-title">Contact Us</span>
            </a>
        </li>

    </ul>

    <div class="mt-3 space-y-1 nav-item">
        <!-- Authentication -->
        <form method="POST" action="{{ route('logout') }}">
            @csrf
            <a href="{{route('logout')}}" class="btn " onclick="event.preventDefault(); this.closest('form').submit();">
                <i class="mdi mdi-logout menu-icon"></i>
                {{ __('Log Out') }}
            </a>
        </form>
    </div>

</nav>




