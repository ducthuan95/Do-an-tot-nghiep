@php
  use App\About;
@endphp
<div class="topbar">
      <div class="topbar-column">
         @foreach (About::all() as $infor)
      <a class="hidden-md-down" href="mailto:dangquangtechvn@gmail.com"><i class="icon-mail"></i>&nbsp;{{$infor->email}}
       
      </a><a class="hidden-md-down" href="tel:00331697720"><i class="icon-bell"></i>&nbsp; {{$infor->phone}}</a>
      @endforeach
      <a class="social-button sb-facebook shape-none sb-dark" 
      href="https://www.facebook.com/Dang-Quang-Tech-Camera-quan-s%C3%A1t-Thi%E1%BA%BFt-b%E1%BB%8B-an-ninh-1742261469147575/" target="_blank"><i class="socicon-facebook"></i></a><a class="social-button sb-twitter shape-none sb-dark" href="#" target="_blank"><i class="socicon-twitter"></i></a><a class="social-button sb-instagram shape-none sb-dark" href="#" target="_blank"><i class="socicon-instagram"></i></a><a class="social-button sb-pinterest shape-none sb-dark" href="#" target="_blank"><i class="socicon-pinterest"></i></a>
      </div>
      <div class="topbar-column">
       @if (Auth::guard('web')->check()===false)
        <a class="hidden-md-down"   href="{{ route('login-user') }}"> <i class="icon-head"></i>&nbsp; Đăng nhập</a>
        <a class="hidden-md-down" href="{{ route('register-user') }}"> <i class="icon-unlock"></i>&nbsp; Đăng ký</a>
       @endif
       {{--  <div class="lang-currency-switcher-wrap">
          <div class="lang-currency-switcher dropdown-toggle"><span class="language"><img alt="English" src="public/source/page/img/flags/GB.png"></span><span class="currency">Tiếng việt</span></div>
          <div class="dropdown-menu">
            <div class="currency-select">
            </div><a class="dropdown-item" href="#"><img src="public/source/page/img/flags/FR.png" alt="Français">Tiếng việt</a><a class="dropdown-item" href="#"><img src="public/source/page/img/flags/DE.png" alt="Deutsch">Tiếng anh</a>
          </div>
        </div> --}}
      </div>
    </div>