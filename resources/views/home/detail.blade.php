@extends('home.layout')
@section('content')
<div id="section_produk" class="sort-product-tab-wrapper">
    <div class="container">
        @foreach ($kategoris as $k)
        <h1>{{$k->nama}}</h1>
        <div class="row">
            <div class="col-12">
                <div class="tab-content tab-animate-zoom">
                    <!-- Start Grid View Product -->
                    <div class="tab-pane active show sort-layout-single" id="layout-3-grid">
                        <div class="row">
                            {{-- foreacg --}}
                            @foreach ($k->produk as $produk)
                            <div  class="col-xl-4 col-sm-6 col-12">
                                <!-- Start Product Default Single Item -->
                                <div class="product-default-single-item product-color--golden">
                                    <div class="image-box">
                                        <a href="product-details-default.html" class="image-link">
                                            <img src="/gambar/{{$produk->gambar}}" width="600px" height="690px"
                                                alt="">
                                        </a>
                                        <div class="action-link">
                                            <div class="action-link-left">
                                                <a onclick="getData({{ $produk->id }})" data-bs-toggle="modal"
                                                    data-bs-target="#modalQuickview">Add To Card</a>
                                            </div>
                                            @if (Auth::check())
                                            <div class="action-link-right">
                                                <a onclick="getData({{ $produk->id }})" data-bs-toggle="modal"
                                                    data-bs-target="#modalQuickview"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></a>
                                            </div>
                                            @else
                                            <div class="action-link-right">
                                                <a href="{{route('login')}}"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></a>
                                            </div>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div class="content-left">
                                            <h6 class="title"><a
                                                    href="#">{{$produk->nama}}</a></h6>
                                            <ul class="review-star">
                                                <li class="fill"><i class="ion-android-star"></i>
                                                </li>
                                                <li class="fill"><i class="ion-android-star"></i>
                                                </li>
                                                <li class="fill"><i class="ion-android-star"></i>
                                                </li>
                                                <li class="fill"><i class="ion-android-star"></i>
                                                </li>
                                                <li class="fill"><i class="ion-android-star"></i>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="content-right">
                                            <span class="price">Rp
                                                {{number_format($produk->harga, 0, ',', '.')}}</span>
                                        </div>

                                    </div>
                                </div>
                                <!-- End Product Default Single Item -->
                            </div>
                            
                            @endforeach
                            {{-- endofrnya di sini --}}
                        </div> <!-- End Grid View Product -->
                        <!-- Start List View Product -->
                        <!-- End List View Product -->
                    </div>
                </div>
            </div>
        </div>
        @endforeach
        
    </div> <!-- End Tab Wrapper -->
{{-- 
    <!-- Start Pagination -->
    <div class="page-pagination text-center" data-aos="fade-up" data-aos-delay="0">
        <ul>
            <li><a class="active" href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#"><i class="ion-ios-skipforward"></i></a></li>
        </ul>
    </div> <!-- End Pagination --> --}}
</div>

    <!-- Modal Quick View -->
    <div class="modal fade " id="modalQuickview" tabindex="-1" aria-modal="true" role="dialog" style="display: block;">
        <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col text-right">
                                <button type="button" class="close modal-close" data-bs-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true"> <i class="fa fa-times"></i></span>
                                </button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="product-details-gallery-area mb-7">
                                    <!-- Start Large Image -->
                                    <div class="product-large-image modal-product-image-large swiper-container swiper-container-initialized swiper-container-horizontal">
                                        <div class="swiper-wrapper" id="swiper-wrapper-271e1ebdb788abcd" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
                                            <div  class="product-image-large-image swiper-slide img-responsive swiper-slide-active" role="group" aria-label="1 / 6" style="width: 324px;">
                                                <img  id="productImage"src="" alt="">
                                            </div>
                                        </div>
                                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                                    <!-- End Large Image -->
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="modal-product-details-content-area">
                                    <!-- Start  Product Details Text Area-->
                                    <div class="product-details-text">
                                        <h4 class="title"><input type="text" class="form-control" id="productName" name="productName" readonly style="border: none; background-color: transparent; font-size: inherit; padding: 0; margin: 0; outline: none; border-bottom: 0px solid #ffffff; color: #333; font-weight: bold; font-size: 1.2em; color:"></h4>
                                        <div class="price" ><input type="text" class="form-control" id="productPrice" name="productPrice" readonly style="border: none; background-color: transparent; font-size: inherit; padding: 0; margin: 0; outline: none; border-bottom: 0px solid #ffffff; color: #333; font-weight: bold; font-size: 1.2em; color:"></div>
                                    </div> <!-- End  Product Details Text Area-->
                                    <!-- Start Product Variable Area -->
                                    <div class="product-details-variable">
                                        <!-- Product Variable Single Item -->
                                        <div class="variable-single-item">
                                            <span>Color</span>
                                            
                                        </div>
                                        <!-- Product Variable Single Item -->
                                        <div class="d-flex align-items-center flex-wrap">
                                            <div class="variable-single-item ">
                                                <span>Quantity</span>
                                                <div class="product-variable-quantity">
                                                    <input min="1" max="100" value="1" type="number">
                                                </div>
                                            </div>

                                            <div class="product-add-to-cart-btn">
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#modalAddcart">Add To
                                                    Cart</a>
                                            </div>
                                        </div>
                                    </div> <!-- End Product Variable Area -->
                                    @if (Auth::check())
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" placeholder="Enter email"
                                    value="{{ Auth::user()->name }}" name="name" readonly style="border: none; background-color: transparent; font-size: inherit; padding: 0; margin: 0; outline: none; border-bottom: 0px solid #ffffff; color: #333; color:">
                                <input type="text" id="id_product" hidden class="form-control" name="id_product">

                                <input type="text" id="user_id" name="user_id" class="form-control"
                                    value="{{ Auth::user()->id }}" hidden>
                            @else
                        @endif
                                    <div class="modal-product-about-text">
                                        <p><input type="text" class="form-control" id="productDescription" name="deskripsi"
                                            readonly></p>
                                    </div>
                                    <!-- Start  Product Details Social Area-->
                                    <div class="modal-product-details-social">
                                        <span class="title">SHARE THIS PRODUCT</span>
                                        <ul>
                                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                                            </li>
                                            <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>

                                    </div> <!-- End  Product Details Social Area-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if (request()->segment(1)=="cariproduk")
    <script>
        var targetSection = document.getElementById('section_produk');

        // Scroll to the target section
        targetSection.scrollIntoView({
            behavior: 'smooth'
        });
    </script>
    @endif

    <script>
        function getData(productId) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            // Ganti URL sesuai dengan route Anda
            var url = '{{ route('showDataById', ':id') }}';
            url = url.replace(':id', productId);
            $.ajax({
                type: 'GET',
                url: url,
                success: function(data) {
                    console.log(data);
                    // Menampilkan data ke dalam modal
                    $("#productImage").attr("src", "/gambar/" + data.data.gambar);
                    $("#id_product").val(data.data.id);
                    $("#productName").val(data.data.nama);
                    $("#productDescription").val(data.data.keterangan);
                    $("#productPrice").val(data.data.harga);
                    // Menampilkan modal
                    $('#modalQuickview').modal('show');
                },
                error: function(error) {
                    console.error('Error:', error);
                }
            });
        }
    </script>
@endsection
