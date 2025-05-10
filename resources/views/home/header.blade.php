<header class="header_section">
    <div class="container">

        <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="{{ url('/') }}"><img width="250" src="/home/images/logo.png" alt=""/></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class=""> </span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item {{ request()->routeIs('home') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('home') }}">Home <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item {{ request()->routeIs('shop','product-details') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('shop') }}">Shop</a>
                    </li>


                    <li class="nav-item {{ request()->routeIs('show-cart') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('show-cart') }}">Cart</a>
                    </li>

                    <li class="nav-item {{ request()->routeIs('show-orders') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('show-orders') }}">Orders</a>
                    </li>

                    @if (Route::has('register'))

                        @auth
                            <li class="nav-item">
                                <x-app-layout>

                                </x-app-layout>
                            </li>

                        @else

                            <li class="nav-item">
                                <a class="btn btn-primary" href="{{ route('login') }}" id="logincss">Login</a>
                            </li>

                            <li class="nav-item">
                                <a class="btn btn-success" href="{{ route('register') }}">Register</a>
                            </li>

                        @endauth

                    @endif

                </ul>
            </div>
        </nav>
    </div>
</header>
