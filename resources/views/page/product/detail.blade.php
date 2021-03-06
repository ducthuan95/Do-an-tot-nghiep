@extends('page.layout')
@section('headmeta')
<title>DangQuangTech | Chi tiết Sản phẩm</title>

 @foreach ($product as $pd)
<meta name="keywords" content="{{ $pd->meta_keyword}}">
<meta name="description"  content="{{ $pd->meta_describe}}">
@endforeach
<meta name="author" content="ttv">
@endsection
@section('content')
     <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>Chi tiết sản phẩm</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index.html">Trang chủ</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>Chi tiết sản phẩm</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-1">
        <div class="row">
          @foreach ($product as $pd)
           <div class="col-md-6">
            <div class="product-gallery">
                @if($pd->promo_price!=0)
                    <span class="product-badge text-danger">Giảm giá: {{(round(100*($pd->unit_price-$pd->promo_price)/$pd->unit_price)) }}%</span>
                    @elseif($pd->status==2)
                     <span class="product-badge text-danger">Mới</span>
                     @endif
              <div>
                <div><img id="showimg" src="public/uploads/product/{{$pd['image_product'][0]['image']}}" width="280px" style="margin-left:90px;"></div>
              </div>
              <div class="owl-carousel owl-theme">
                @foreach ($images as $image)
                   <div class="item img-item {{$image->id===1?'active-view':''}}" hash="public/uploads/product/{{$image->image}}"><img src="public/uploads/product/{{$image->image}}" alt="{{$image->title}}"></div>
                @endforeach
              </div>
            </div>
          </div>
          <!-- Product Info-->
          <div class="col-md-6">
            <div class="padding-top-2x mt-2 hidden-md-up"></div>
              <div class="rating-stars">
                @for ($i = 0; $i <$pd->vote ; $i++)
                 <i class="icon-star filled"></i> 
                @endfor
              </div><span class="text-muted align-middle">&nbsp;&nbsp;| lượt xem({{$pd->view_count}})</span>
            <h2 class="padding-top-1x text-normal" style="color: #0da9ef;">{{$pd->product_name}}</h2><span class="h2 d-block">
              @if($pd['promo_price']!=0) 
                    <del>{{number_format($pd['unit_price'])}} VNĐ</del> 
                    <span style="color: red">{{number_format($pd['promo_price'])." VNĐ"}}</span>
                    @else
                    {{number_format($pd['unit_price'])." VNĐ"}}
                    @endif </span>
            <p>@php
                                          echo  html_entity_decode($pd->describe,ENT_QUOTES);
                                       @endphp</p>
            <div class="row margin-top-1x">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="size">Thương Hiệu</label>
                  <select class="form-control" id="size">
                    @foreach ($size as $sz)
                      <option>{{$sz->size}}</option>
                    @endforeach
                    
                  </select>
                </div>
              </div>
              <div class="col-sm-5">
                <div class="form-group">
                  <label for="color">Bảo Hành</label>
                  <select class="form-control" id="color">
                    @foreach ($color as $cl)
                     <option>{{$cl->color}}</option>
                    @endforeach
                  </select>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="form-group">
                  <label for="quantity">Số lượng</label>
                  <select class="form-control" id="quantity">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="padding-bottom-1x mb-2"><span class="text-medium">Danh mục:&nbsp;</span><a class="navi-link" href="#">{{category_name_by_pi($pd->id)}}</a></div>
            <hr class="mb-3">
            <div class="d-flex flex-wrap justify-content-between">
              <div class="entry-share mt-2 mb-2"><span class="text-muted">Chia sẻ:</span>
                <div class="share-links"><a class="social-button shape-circle sb-facebook" href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="socicon-facebook"></i></a><a class="social-button shape-circle sb-twitter" href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="socicon-twitter"></i></a><a class="social-button shape-circle sb-instagram" href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="socicon-instagram"></i></a><a class="social-button shape-circle sb-google-plus" href="#" data-toggle="tooltip" data-placement="top" title="Google +"><i class="socicon-googleplus"></i></a></div>
              </div>
              <div class="sp-buttons mt-2 mb-2">
               <button class="btn btn-primary" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="{{$pd->product_name}}" data-id="{{$pd->id}}" data-toast-message="đã thêm vào giỏ hàng!"><i class="icon-bag"></i> Thêm vào giỏ hàng</button>
              </div>
            </div>
          </div>
        </div>
        <!-- Product Tabs-->
        <div class="row padding-top-3x mb-3">
          <div class="col-lg-10 offset-lg-1">
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link active" href="#description" data-toggle="tab" role="tab">Thông tin</a></li>
              <li class="nav-item"><a class="nav-link" href="#reviews" data-toggle="tab" role="tab">Nhận xét ({{$comments->count()}})</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade show active" id="description" role="tabpanel">
                <span style="color:black">Giới thiệu:</span>
                <p>@php
                                          echo  html_entity_decode($pd->describe,ENT_QUOTES);
                                       @endphp</p>
                
                <span style="color:black">Nguồn gốc:</span>
                <p class="mb-30">{{$pd->producer}}</p>

              </div>
              <div class="tab-pane fade" id="reviews" role="tabpanel">
                <!-- Review-->
                @foreach ($comments as $cm)
                 
                <div class="comment">
                  <div class="comment-author-ava"><img src="public/source/page/img/user.png" alt="Review author"></div>
                  <div class="comment-body">
                    <div class="comment-header d-flex flex-wrap justify-content-between">
                      <h4 class="comment-title">{{$cm->created}}</h4>
                      <div class="mb-2">
                         <div class="rating-stars">
                           @for ($i = 0; $i <$cm->vote ; $i++)
                            <i class="icon-star filled"></i> 
                           @endfor
                           </div>
                      </div>
                    </div>
                    <p class="comment-text">{{$cm->comment}}</p>
                    <div class="comment-footer"><span class="comment-meta">{{$cm->nameUser($cm->user_id)}}</span></div>
                  </div>
                </div>

                @endforeach
                {{$comments->links()}}
                <!-- Review Form--> 
                <h5 class="mb-30 padding-top-1x">Đánh giá và nhận xét sản phẩm</h5>
                @if (Auth::guard('web')->check())
                <form class="row" method="post" action="{{ route('review') }}">
                  <input type="hidden" value="{{Auth::guard('web')->user()->id}}" name="user_id">
                  <input type="hidden" value="{{$pd->id}}" name="product_id">
                  {{ csrf_field() }}
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_rating">Đánh giá</label>
                      <select class="form-control form-control-rounded" name="vote" id="review_rating">
                        <option value="5">5 Sao</option>
                        <option value="4">4 Sao</option>
                        <option value="3">3 Sao</option>
                        <option value="2">2 Sao</option>
                        <option value="1">1 Sao</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <label for="review_text">Nhận xét </label>
                      <textarea class="form-control form-control-rounded" id="review_text" name="comment" rows="8" required></textarea>
                    </div>
                  </div>
                  <div class="col-12 text-right">
                    <button class="btn btn-outline-primary" type="submit">Gửi nhận xét</button>
                  </div>
                </form>
                @else
                     <div class="alert alert-info alert-dismissible fade show text-center margin-bottom-1x"><i class="icon-layers"></i>&nbsp;&nbsp;<strong>Thông báo:</strong> <a href="{{ route('login-user') }}" style=" color: red; text-decoration: none">Đăng nhập</a> để nhận xét!.</div
                @endif
              </div>
            </div>
          </div>
        </div>
          @endforeach
        <!-- Related Products Carousel-->
        <!-- <h3 class="text-center padding-top-2x mt-2 padding-bottom-1x">Sản phẩm khác</h3>
                <div class="owl-carousel" data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: true, &quot;margin&quot;: 30, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;576&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;991&quot;:{&quot;items&quot;:4},&quot;1200&quot;:{&quot;items&quot;:4}} }">
          <div class="grid-item">
            <div class="product-card">
              <div class="product-badge text-danger">22% Off</div><a class="product-thumb" href="shop-single.html"><img src="public/source/page/img/shop/products/09.jpg" alt="Product"></a>
              <h3 class="product-title"><a href="shop-single.html">Rocket Dog</a></h3>
              <h4 class="product-price">
                <del>$44.95</del>$34.99
              </h4>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
              </div>
            </div>
          </div>
          <div class="grid-item">
            <div class="product-card">
                <div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star"></i>
                </div><a class="product-thumb" href="shop-single.html"><img src="public/source/page/img/shop/products/03.jpg" alt="Product"></a>
              <h3 class="product-title"><a href="shop-single.html">Oakley Kickback</a></h3>
              <h4 class="product-price">$155.00</h4>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
              </div>
            </div>
          </div>
          <div class="grid-item">
            <div class="product-card"><a class="product-thumb" href="shop-single.html"><img src="public/source/page/img/shop/products/12.jpg" alt="Product"></a>
              <h3 class="product-title"><a href="shop-single.html">Vented Straw Fedora</a></h3>
              <h4 class="product-price">$49.50</h4>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
              </div>
            </div>
          </div>
          <div class="grid-item">
            <div class="product-card">
                <div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i>
                </div><a class="product-thumb" href="shop-single.html"><img src="public/source/page/img/shop/products/11.jpg" alt="Product"></a>
              <h3 class="product-title"><a href="shop-single.html">Top-Sider Fathom</a></h3>
              <h4 class="product-price">$90.00</h4>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
              </div>
            </div>
          </div>
          <div class="grid-item">
            <div class="product-card"><a class="product-thumb" href="shop-single.html"><img src="public/source/page/img/shop/products/04.jpg" alt="Product"></a>
              <h3 class="product-title"><a href="shop-single.html">Waist Leather Belt</a></h3>
              <h4 class="product-price">$47.00</h4>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
              </div>
            </div>
          </div>
          <div class="grid-item">
            <div class="product-card">
              <div class="product-badge text-danger">50% Off</div><a class="product-thumb" href="shop-single.html"><img src="public/source/page/img/shop/products/01.jpg" alt="Product"></a>
              <h3 class="product-title"><a href="shop-single.html">Unionbay Park</a></h3>
              <h4 class="product-price">
                <del>$99.99</del>$49.99
              </h4>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>

@endsection
@section('script')
<script type="text/javascript">
   $(function(){
  mylib.choiceimg();
})
</script>
@endsection