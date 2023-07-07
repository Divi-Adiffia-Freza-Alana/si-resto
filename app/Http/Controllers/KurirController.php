<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Kurir;
use Illuminate\Http\RedirectResponse;

use Carbon\Carbon;
use Illuminate\Support\Str;
use DataTables;
use Session;
use Validator;

class KurirController extends Controller
{
    //

    public function index(Request $request){

        //dd(Keeper::with(['keeperfoto']));

        if ($request->ajax()) {
           // $kurir = Kurir::with('');
           $kurir = Kurir::query();
            return  DataTables::of($kurir)
                    ->addIndexColumn()
                  /*->editColumn('keeperfoto.nama', function($data){
                        return $data->keeperfoto->nama;
                    })*/
                    ->editColumn('tgl_lahir', function($data){ 
                        return dateformat($data->tgl_lahir);
                    })
                    ->addColumn('action', function($row){
                           $btn = '<a class="btn btn-primary" href="/kurir-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-pen-to-square"></i> </a>
                                   <a class="btn btn-danger" href="/kurir-delete/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-trash"></i></a>';
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        return view('kurir.kurir');

    }

    public function add(){

        return view('kurir.add_kurir');

    }


    public function edit($id){
        
        $kurirdata = Kurir::query()->get()->find($id);
       // $kandangdata = Kandang::with('keeperKandang')->get()->find($id);
        //dd($keeperdata);
        return view('kurir.add_kurir',['data' =>$kurirdata]);

    }

    

    public function store(Request $request): RedirectResponse
    
    {   


        $validator =  Validator::make($request->all(), [
            'foto' => 'image|mimes:jpeg,png,jpg|max:2048',
            
        ]);
    
        if ($validator->fails()) {

            Session::flash('status', 'error');
            Session::flash('message',  $validator->messages()->first());
            return redirect()->back()->withInput();

        } else {
 
            if($request->id == NULL || $request->id == "" ){

               // dd($request->All());
                
                $kurir = Kurir::create([
                     'id' => Str::uuid(),
                     'nama' => $request->nama,
                     'alamat' => $request->alamat,
                     'tgl_lahir' => date("Y-m-d", strtotime($request->tgl_lahir)),
                     'jk' => $request->jk,
                     'no_hp' => $request->no_hp,
                     'no_ktp' => $request->no_ktp,
                     //'foto' => $namefile,
                     'email' => $request->email
                 ]); 
                 
                 if ($request->file('foto')){
                     $extension = $request->file('foto')->getClientOriginalExtension();
                     $namefile = $request->nama.'-'.now()->timestamp.'.'.$extension;
                     $request->file('foto')->move('foto', $namefile);
                     Keeper_foto::create([
                         'id' => Str::uuid(),
                         'id_keeper' => $keeper->id,
                         'nama' => $namefile,
                         'url' => urlimage($namefile) 
 
                     ]);
                 }
             
                 Session::flash('status', 'success');
                 Session::flash('message', 'Tambah Data Kurir Berhasil');
              }
     else{
        //dd($namefile);
         Kurir::updateOrCreate(
             ['id' => $request->id],
             [
                'nama' => $request->nama,
                'alamat' => $request->alamat,
                'tgl_lahir' => date("Y-m-d", strtotime($request->tgl_lahir)),
                'jk' => $request->jk,
                'no_hp' => $request->no_hp,
                'no_ktp' => $request->no_ktp,
                //'foto' => $namefile,
                'email' => $request->email
             ]
             );
 
           /*  $namefile='';
             if ($request->file('foto')){
             $extension = $request->file('foto')->getClientOriginalExtension();
             $namefile = $request->nama.'-'.now()->timestamp.'.'.$extension;
             $request->file('foto')->move('foto', $namefile);
             Keeper_foto::create([
                'id' => Str::uuid(),
                'id_keeper' => $request->id,
                'nama' => $namefile,
                'url' => urlimage($namefile) 

            ]);
            }
     
             else{ 
                 $namefile=$request->fotolabel;
             }
 
             if($request->fotolabel != NULL){
                 $flight = Keeper_foto::find($request->id_foto);
             
                 $flight->nama = $namefile;
                 $flight->url = urlimage($namefile); 
                 $flight->save();
             }*/
 
     
 
             /*Keeper_foto::updateOrCreate(
                 ['id' => $request->id_foto],
                 ['nama' => $namefile]);*/
             
 
             Session::flash('status', 'success');
             Session::flash('message', 'Edit Data Kurir Berhasil');
             
         }
            
        }



      

          

        return redirect('/kurir');
    }

    public function delete($id){

        $deleteKurir = Kurir::findorFail($id);
        $deleteKurir->delete();

        /*$deleteKeeperfoto = Keeper_foto::findorFail($id);
        $deleteKeeperfoto->delete();*/
        Session::flash('status', 'success');
        Session::flash('message', 'Delete Data Kurir Berhasil');

        return redirect('/kurir');

    }
}
