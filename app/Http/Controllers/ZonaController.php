<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Zona;
use Illuminate\Http\RedirectResponse;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use DataTables;

class ZonaController extends Controller
{
    //

    public function index(Request $request){
        if ($request->ajax()) {
            $zona = Zona::query();
            return DataTables::eloquent($zona)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                           $btn = '<a class="btn btn-primary" href="/zona-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-pen-to-square"></i> </a>
                                   <a class="btn btn-danger" href="/zona-delete/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-trash"></i></a>';
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        return view('zona.zona');

    }

    public function add(){

        return view('zona.add_zona');

    }

    public function edit($id){
        
        $zona = Zona::find($id);
        return view('zona.add_zona',['data' =>$zona]);

    }

    public function delete($id){

        $delete = Zona::findorFail($id);
        $delete->delete();

        return redirect('/zona');

    }


    public function store(Request $request): RedirectResponse
    
    {   
        
       //dd($request->all());
        
      /* $namefile='';
       if ($request->file('foto')){
       $extension = $request->file('foto')->getClientOriginalExtension();
       $namefile = $request->kode_kandang.'-'.now()->timestamp.'.'.$extension;
       $request->file('foto')->move('foto', $namefile);
       }

       else{
           $namefile=$request->fotolabel;
       }*/


    if($request->id == NULL || $request->id == "" ){


        Zona::create([
        'id' => Str::uuid(),
        'nama' => $request->name,
        'keterangan' => $request->keterangan

    ]); 
             }
    else{
      
        Zona::updateOrCreate(
            ['id' => $request->id],
            [          
            'nama' => $request->name,
            'keterangan' => $request->keterangan
            ]

            );
            
        }

        return redirect('/zona');
    }
}
