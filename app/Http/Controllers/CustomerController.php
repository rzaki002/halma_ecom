<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Customer;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    function __construct()
    {
        $this->middleware('permission:customer-list|customer-edit|customer-delete',
            ['only' => ['index', 'show']]
        );
        // $this->middleware('permission: customer-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:customer-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:customer-delete', ['only' => ['destroy']]);
    }

    public function index()
    {
        $customers = Customer::latest()->paginate(5);
        return view('customers.index', compact('customers'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }



    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('customers.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            // 'no_hp' => 'required',
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);

        $input = $request->all();
        Customer::create([
            "no_hp" => '83018039',
            "nama" => $input['name'],
            "email" => $input['email'],
            "password" => bcrypt($input['password'])
        ]);

        // dd($input);
        $data = [
            'name'=> $input['name'],
            'email'=>$input['email'],
            'password'=>bcrypt($input['password'])
        ];
        $user = User::create($data);
        $role = Role::where('name','User')->first();
        if($role ==  null){
            $role = Role::create(['name'=>'User']);
            $user->assignRole([$role->id]);
        }else{
            $user->assignRole([$role->id]);
        }
        return redirect()->route('login')
            ->with('success', 'Customers created successfully.');
    }

    public function show(Customer $customer)
    {
        return view('customers.show', compact('customer'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Customer $customer)
    {
        return view('customers.edit', compact('customer'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Customer $customer)
    {
        $request->validate([
            'no_hp' => 'required',
            'nama' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);

        $customer->update($request->all());
        return redirect()->route('customers.index')
            ->with('success', 'Cusatomer updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Customer $customer)
    {
        $customer->delete();
        return redirect()->route('customers.index')
            ->with('success', 'Customer deleted susccesfully');
    }
}
