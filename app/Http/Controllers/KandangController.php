<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Kandang;
use App\Models\Keeper;
use App\Models\Zona;
use Illuminate\Http\RedirectResponse;
use Carbon\Carbon;
use Illuminate\Support\Str;
use DataTables;

class KandangController extends Controller
{
    //
    public function index(Request $request){

       // $query = Kandang::with('keeperKandang')->orderBy('kode_kandang', 'asc');
        $query = Kandang::with(['keeperKandang','zona']);
        if ($request->ajax()) {
            return  DataTables::of($query)
            ->addIndexColumn()
            ->editColumn('keeperKandang.nama', function($data){
                return (isset($data->keeperKandang->nama)?$data->keeperKandang->nama:"Tidak ada");
            })
            ->editColumn('zona.nama', function($data){
                return (isset($data->zona->nama)?$data->zona->nama:"Tidak ada");
            })
            ->addColumn('action', function($row){
                $btn = '<a class="btn btn-primary" href="/kandang-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-pen-to-square"></i> </a>
                        <a class="btn btn-danger" href="/kandang-delete/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-trash"></i></a>';
                 return $btn;
             }) 
                ->rawColumns(['action'])
                ->make(true);                   
        }
        return view('kandang.kandang');

    }

    public function add(){

        return view('kandang.add_kandang');


    }

    public function edit($id){
        
       // $kandangdata = Kandang::find($id);
       $kandangdata = Kandang::with('keeperKandang')->get()->find($id);
       // dd($kandangdata);
        return view('kandang.add_kandang',['data' =>$kandangdata]);

    }

    public function delete($id){

        $deleteKandang = Kandang::findorFail($id);
        $deleteKandang->delete();

        return redirect('/kandang');

    }


    public function selectKeeper(Request $request)
    {
    	$keeper = [];
        if($request->has('q')){
            $search = $request->q;
            $keeper =Keeper::select("id", "nama")
            		->where('nama', 'LIKE', "%$search%")
            		->get();
        }
        else{ 
            $keeper =Keeper::select("id", "nama")->orderBy('id')->get(10);
        }
        return response()->json($keeper);
    }

    public function selectzona(Request $request)
    {
    	$zona = [];
        if($request->has('q')){
            $search = $request->q;
            $zona =Zona::select("id", "nama")
            		->where('nama', 'LIKE', "%$search%")
            		->get();
        }

        else{ 
            $zona =Zona::select("id", "nama")->orderBy('id')->get(10);
        }
        return response()->json($zona);
    }
    


    public function store(Request $request): RedirectResponse
    
    {   
        
       //dd($request->all());
        
       $namefile='';
       if ($request->file('foto')){
       $extension = $request->file('foto')->getClientOriginalExtension();
       $namefile = $request->kode_kandang.'-'.now()->timestamp.'.'.$extension;
       $request->file('foto')->move('foto', $namefile);
       }

       else{
           $namefile=$request->fotolabel;
       }


    if($request->id == NULL || $request->id == "" ){

   // dd($request->all());
    Kandang::create([
        'id' => Str::uuid(),
        'id_keeper' => $request->id_keeper,
        'id_zona' => $request->id_zona,
        'kode_kandang' => $request->kode_kandang,
        'jenis_kandang' => $request->jenis_kandang,
        //'zona' => $request->zona,
        'deskripsi' => $request->deskripsi,
        //'foto' =>  $namefile
    ]); 
             }
    else{
      
        Kandang::updateOrCreate(
            ['id' => $request->id],
            [   'id_keeper' => $request->id_keeper,
                'id_zona' => $request->id_zona,
                'kode_kandang' => $request->kode_kandang,
                'jenis_kandang' => $request->jenis_kandang,
                'zona' => $request->zona,
                'deskripsi' => $request->deskripsi,
                //'foto' =>  $namefile
            ]

            );
            
        }

        return redirect('/kandang');
    }


}
