@extends('page.layout')
@section('headmeta')
<title>DangQuangTech | Tin tức</title>
<meta name="description" content="Chuyên bán ,cung cấp các loại quần áo">
<meta name="keywords" content="">
<meta name="author" content="ttv">
@endsection
@section('content')
 <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>{{$pt->title}}</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="{{ route('home') }}">Trang chủ</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="blog-ls.html">Tin tức/Blog</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>bài viết</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-2">
        <div class="row"> 
          <!-- Content-->
          @isset ($pt)
        
          <div class="col-xl-9 col-lg-8 push-xl-3 push-lg-4">
            <!-- Post-->
            <div class="single-post-meta">
              <div class="column">
                <div class="meta-link"><span>viết bởi</span>{{$pt->auther}}</div>
                <div class="meta-link"><span>Danh mục</span><a href="#">{{category_name_post($pt->category_post)}}</a></div>
              </div>
              <div class="column">
                <div class="meta-link"><a href="#"><i class="icon-clock"></i>{{$pt->created}}</a></div>
              
              </div>
            </div>
            <div  >
              <figure><img src="public/uploads/post/{{$pt->img}}" alt="Image">
                <figcaption class="text-white">Image Caption</figcaption>
              </figure>
            </div>

            <h2 class="padding-top-2x">{{$pt->title}}</h2>
           @php
           echo html_entity_decode($pt->decribe,ENT_QUOTES);
              
            @endphp 
            <div class="single-post-footer">

              <div class="column">
                <div class="entry-share"><span class="text-muted">Chia sẻ bài viết:</span>
                  <div class="fb-share-button" data-href="{{ route('post',['id'=>$pt->id]) }}" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>
            
                </div>
              </div>
            </div>
            <!-- Post Navigation-->
    {{--         <div class="entry-navigation">
              <div class="column text-left"><a class="btn btn-outline-secondary btn-sm" href="#"><i class="icon-arrow-left"></i>&nbsp;Prev</a></div>
              <div class="column"><a class="btn btn-outline-secondary view-all" href="blog-ls.html" data-toggle="tooltip" data-placement="top" title="All posts"><i class="icon-menu"></i></a></div>
              <div class="column text-right"><a class="btn btn-outline-secondary btn-sm" href="#">Next&nbsp;<i class="icon-arrow-right"></i></a></div>
            </div> --}}
          </div>
            @endisset
          <!-- Sidebar          -->
          <div class="col-xl-3 col-lg-4 pull-xl-9 pull-lg-8">
            <aside class="sidebar">
              <div class="padding-top-2x hidden-lg-up"></div>
              

              <!-- Promo Banner-->
            <section class="promo-box" >
                <div class="fb-page" data-href="https://www.facebook.com/Dang-Quang-Tech-Camera-quan-s%C3%A1t-Thi%E1%BA%BFt-b%E1%BB%8B-an-ninh-1742261469147575/"  data-width="350" data-height="240" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Dang-Quang-Tech-Camera-quan-s%C3%A1t-Thi%E1%BA%BFt-b%E1%BB%8B-an-ninh-1742261469147575/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Dang-Quang-Tech-Camera-quan-s%C3%A1t-Thi%E1%BA%BFt-b%E1%BB%8B-an-ninh-1742261469147575/">DangQuangTech</a></blockquote></div>
              </section>
            </aside>
          </div>
        </div>
      </div>
    </div>
@endsection