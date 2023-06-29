<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Menu;
use Illuminate\Http\RedirectResponse;

use Carbon\Carbon;
use Illuminate\Support\Str;
use DataTables;
use Session;
use Validator;
class MenuController extends Controller
{
    //
    public function index(Request $request){

        //dd(Keeper::with(['keeperfoto']));

        if ($request->ajax()) {
            $menu = Menu::with();
            return  DataTables::of($menu)
                    ->addIndexColumn()
                  /*->editColumn('keeperfoto.nama', function($data){
                        return $data->keeperfoto->nama;
                    })*/
                    // ->editColumn('tgl_lahir', function($data){
                    //     return dateformat($data->tgl_lahir);
                    // })
                    ->addColumn('action', function($row){
                           $btn = '<a class="btn btn-primary" href="/menu-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-pen-to-square"></i> </a>
                                   <a class="btn btn-danger" href="/menu-delete/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-trash"></i></a>';
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        return view('menu.menu');

    }

    public function add(){

        return view('menu.add_menu');

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


        Menu::create([
        'id' => Str::uuid(),
        'nama' => $request->nama,
        'harga' => $request->harga,
        'jenis' => $request->jenis

    ]); 
             }
    else{
      
        Menu::updateOrCreate(
            ['id' => $request->id],
            [          
            'nama' => $request->nama,
            'harga' => $request->harga,
            'jenis' => $request->jenis
            ]

            );
            
        }

        return redirect('/menu');
    }
}

