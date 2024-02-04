<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Detail order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>
    
    <?php $total = 0 ; ?>
    @foreach ($orderUser as $ou)
    {{-- <div class="container">
    <div class="card" style="width: 18rem;">
      <img src="/gambar/{{ $ou->orderdetail?->produk->gambar }}" width="100px" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">{{ $ou->orderdetail?->produk->nama }}</h5>
        <span class="price">Rp
          {{number_format($ou->orderdetail->produk->harga, 0, ',', '.')}}</span>
        
        <button id="pay-button" class="btn btn-primary">Bayar Sekarang!!</button>
      </div>
    </div>
  </div> --}}
  <section style="background-color: #eee;">
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6 col-xl-4">
          <div class="card text-black">
            <i class="fab fa-apple fa-lg pt-3 pb-1 px-3"></i>
            <img src="/gambar/{{ $ou->orderdetail?->produk->gambar }}" width="50px"
              class="card-img-top" alt="Apple Computer" />
            <div class="card-body">
              <div class="text-center">
                <h5 class="card-title">{{ $ou->orderdetail?->produk->nama }}</h5>
              </div>
              <div>
                <div class="d-flex justify-content-between">
                  <span>Harga</span><span>Rp
                    {{number_format($ou->orderdetail->produk->harga, 0, ',', '.')}}</span>
                </div>
                <div class="d-flex justify-content-between">
                  <span>QTY</span><span>{{ $ou->orderdetail?->qty }}</span>
                </div>
              </div>
              <div class="d-flex justify-content-between total font-weight-bold mt-4">
                <span>Total</span><span>Rp{{number_format($ou->orderdetail->produk->harga* $ou->orderdetail->qty, 0, ',', '.')}}</span>
              </div>
              <button id="pay-button" class="btn btn-primary">Bayar Sekarang</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <?php $total = $total + ($ou->harga * $ou->qty) ?>
    @endforeach
  
     {{-- <pre><div id="result-json">JSON result will appear here after payment:<br></div></pre> --}}
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- TODO: Remove ".sandbox" from script src URL for production environment. Also input your client key in "data-client-key" -->
    <script src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="SB-Mid-client-o3jRXTyZiuvlTfu8"></script>
    <script type="text/javascript">
      document.getElementById('pay-button').onclick = function(){
        // SnapToken acquired from previous step
        snap.pay('<?=$snapToken?>', {
          // Optional
          onSuccess: function(result){
            console.log("success");
            $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
            $.ajax({
                type: 'POST',
                url: '{{ route('updatePembayaran') }}', // Ganti dengan rute yang sesuai
                data: result,
                success: function (data) {
                    // Tangani respons dari server jika diperlukan
                    window.location.href = "{{url('/')}}";
                },
                error: function (error) {
                    // Tangani kesalahan jika diperlukan
                    alert(error);
                }
            });

            /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
          },
          // Optional
          onPending: function(result){
            console.log("pending");
            
            /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
          },
          // Optional
          onError: function(result){
            console.log("onError");
            
            /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
          }
        });
      };
    </script>
  </body>
</html>