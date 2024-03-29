<?php

namespace App\Http\Controllers;

use App\Models\Pembayaran;
use Illuminate\Http\Request;

class PembayaranController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pembayarans = Pembayaran::latest()->paginate(5);
        return view('pembayarans.index', compact('pembayarans'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $pembayarans = Pembayaran::all();
        return view('pembayarans.create', compact('pembayarans'));
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $input = $request->all();

        // return response()->json([
        //     'status'=>"succes",
        //     'data'=> $input
        // ]);
        // $request->validate([
        //     'id_order' => 'required',
        //     'jumlah_bayar' => 'required',
        //     'bukti_tf' => 'required',
        //     'metode_bayar' => 'required',
        // ]);

        // Pembayaran::created([
        //     'id_order' => $input['id_order'],
        //     'jumlah_bayar' => $dc->orderdetail->harga,
        //     'bukti_tf' => $request->bukti_tf,
        //     'metode_bayar'=>$request->metode_bayar
        // ]);
        // return redirect()->route('pembayarans.index')
        // ->with('success', 'Pembayaran created succesfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Pembayaran $pembayaran)
    {
        return view('pembayarans.show', compact('pembayaran'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pembayaran $pembayaran)
    {
        return view('pembayarans.edit', compact('pembayaran'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pembayaran $pembayaran)
    {
        $request->validate([
            'id_order' => 'required',
            'jumlah_bayar' => 'required',
            'bukti_tf' => 'required',
            'status_bayar' => 'required',
        ]);

        $pembayaran->update($request->all());
        return redirect()->route('pembayarans.index')
                        ->with('success','Pembayaran updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pembayaran $pembayaran)
    {
        $pembayaran->delete();
        return redirect()->route('pembayarans.index')
            ->with('success', 'Pembayaran deleted susccesfully');
    }

    public function buying(Request $request){
        $input = $request->all();

        Pembayaran::create([
            'id_order'=>$input['order_id'],
            'jumlah_bayar'=>$input['gross_amount'],
            'bukti_tf'=>$input['pdf_url'],
            'status_bayar'=>$input['payment_type']
        ]);

        // return response()->json([
        //     'status'=>"success",
        //     'data'=> $input
        // ]);
        return view('pembayarans.index', compact('pembayaran'));
    }
}