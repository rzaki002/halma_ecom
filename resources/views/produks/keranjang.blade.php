@extends('produks.layout2')
@section('content')
    <table class="table table-dark">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Image</th>
                
                <th scope="col">Produk</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                 <th scope="col">Status Bayar</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                $no = 1; ?>
            @foreach ($orderUser as $ou)
                <tr>
                    @if ($ou->status_bayar != "Lunas")
                    <th scope="row">{{$no++}}</th>
                        <td><img src="/gambar/{{ $ou->orderdetail?->produk->gambar }}" width="100px" /></td>
                    <td>{{ $ou->orderdetail?->produk->nama }}</td>
                    <td>{{ $ou->orderdetail?->harga }}</td>
                     <td>{{ $ou->orderdetail?->qty }}</td>
                     @if ($ou->status_bayar == null)
                        <td>Belum Di Bayar</td>
                    @else
                        <td>{{ $ou->status_bayar }}</td>
                    @endif 

                    <td>
                        <a href="{{ route('cobamidtrans', ['order_id'=>$ou->id]) }}" class="btn btn-primary mb-3 mt-3">Checkout</a>
                        <form action="{{ route('orders.destroy',$ou->id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-primary">Batal</button>
                        </form>
                    </td>
                    @endif
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
