<?php

namespace App\Http\Controllers;

use App\Deal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AddController extends Controller
{
    public function index()
    {
        $deals = Deal::all()->toArray();
        return view('welcome', ['adds' => $deals]);
    }
    public function create()
    {
        return view('add.create', ['add' => null]);
    }


    public function store(Request $request)
    {
        $params = $request->except(['_token']);
        $pics = ['pic1', 'pic2', 'pic3'];
        foreach ($pics as $pic) {
            if($request->hasFile($pic) && $request->file($pic)->isValid()) {
                $file = $request->file($pic);
                $fileName = str_random().'.'.$file->extension();
                if($file->move(public_path('uploads'), $fileName)) {
                    $params[$pic] = $fileName;
                }
                //  $path = $file->storePubliclyAs(asset('uploads'), $file->getClientOriginalName());
            } else {
                if($pic == 'pic1') {
                    return redirect()->back()->withInput()->withErrors([$pic => 'Image not uploaded. Kindly Upload again.']);
                }
            }
        }
        $params['user_id'] = Auth::id();
        Deal::create($params);
        return redirect()->route('add.index');
    }

    public function edit(Deal $deal)
    {
        return view('add.create', ['add' => $deal]);
    }

    public function update(Request $request, Deal $deal)
    {
        $params = $request->except(['_token', '_method']);
        $pics = ['pic1', 'pic2', 'pic3'];
        foreach ($pics as $pic) {
            if($request->hasFile($pic) && $request->file($pic)->isValid()) {
                $file = $request->file($pic);
                $fileName = str_random().'.'.$file->extension();
                if($file->move(public_path('uploads'), $fileName)) {
                    $params[$pic] = $fileName;
                }
            }
        }
        Deal::where('id' , $deal->id)->update($params);
        return redirect()->route('add.index');
    }

    public function show(Deal $add)
    {
        return view('add.show', ['add' => $add]);
    }
}
