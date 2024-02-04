@extends('home.layout')
@section('content')
<div id="section_produk" class="sort-product-tab-wrapper">
    <div class="container pt-2">
        <div class="card badge-secondary">
        {{-- <h4>Total Produk : {{$jumlah_produks}}</h4> --}}
    </div>
        {{-- @foreach ($kategoris as $k)
        <h1>{{$k->nama}}</h1> --}}
        <div class="row">
            <div class="col-12">
                <div class="tab-content tab-animate-zoom">
                    <!-- Start Grid View Product -->
                    <div class="tab-pane active show sort-layout-single" id="layout-3-grid">
                        <div class="row">
                            
                            {{-- foreacg --}}
                            {{-- @foreach ($k->produk as $produk) --}}
                            @foreach ($produks as $produk)
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
        
        {{-- @endforeach --}}
        
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
    <div class="modal fade" id="modalQuickview" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Product Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('add.cart') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div id="productDetails">
                            <!-- Di sini akan ditampilkan data dari server -->
                            <div class="product-image">
                                <img src="" alt="Product Image" id="productImage" width="100px">
                            </div>
                            <div class="product-info">
                                {{-- <h5 class="mb-3" id="productName"></h5> --}}
                                <label for="exampleInputEmail1">Product</label>

                                <input type="text" class="form-control" id="productName" name="productName" readonly>
                                {{-- <p id="productDescription"></p> --}}

                                <label for="exampleInputEmail1">Description</label>
                                {{-- <input type="text" class="form-control" id="productDescription" name="deskripsi"
                                    readonly> --}}
                                    <textarea class="form-control" id="productDescription" name="deskripsi" readonly rows="4"></textarea>

                                <label for="exampleInputEmail1">Price

                                </label>
                                <input type="text" class="form-control" id="productPrice" name="price" readonly>
                                {{-- <span class="price" id="productPrice"></span> --}}
                            </div>
                        </div>
                        @if (Auth::check())
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" placeholder="Enter email"
                                    value="{{ Auth::user()->name }}" name="name" readonly>
                                <input type="text" id="id_product" hidden class="form-control" name="id_product">

                                <input type="text" id="user_id" name="user_id" class="form-control"
                                    value="{{ Auth::user()->id }}" hidden>
                            @else
                        @endif
                        <label>Alamat</label>
                        <input type="text" id="alamat" class="form-control" name="alamat_kirim"
                            placeholder="Alamat">

                        <label>Catatan</label>
                        
                        <input type="text" class="form-control" name="catatan" placeholder="Catatan">
                        <label>Quantity</label>
                        <input type="text" class="form-control" name="quantity" placeholder="Quantity" min="1" max="100" value="1" type="number">
                        <label>No handphone</label>
                        <input type="text" class="form-control" name="nohp" placeholder="no handphone">
                        <label>pilihan metode pengambilan</label>
                        {{-- <input type="text" class="form-control" name="status_pengambilan"
                            placeholder="status pengambilan"> --}}
                            <select class="form-control" name="status_pengambilan">
                                <option value="ambil_sendiri">Ambil Sendiri</option>
                                <option value="kirim">Dikirim</option>
                            </select>
                        {{-- <div class="input-group mb-3">
                            <label>Input File</label>
                            <div class="input-group-prepend">
                                <span class="input-group-text">Upload</span>
                            </div>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="gambar" id="inputGroupFile01">
                                <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                            </div>
                        </div> --}}
                        <div class="input-group mb-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="gambar" id="inputGroupFile01">
                                <label class="custom-file-label" for="inputGroupFile01"></label>(  Silakan Masukan file design jika ingin custom berupa : PDF, TIFF, JPG, RAR, ZIP max 50Mb )
                                >50Mb email/share drive ke halmagrafika@gmail.com
                            </div>
                            {{-- <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="buttonUpload">Upload</button>
                            </div> --}}
                        </div>
                        
                        <div class="form-group">
                            <button class="btn btn-success btn-submit">Submit</button>
                        </div>
                    </form>
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
