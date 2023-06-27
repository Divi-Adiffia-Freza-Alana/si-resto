<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Mastersatwa;
use App\Models\Kandang;
use App\Models\Satwa;
use App\Models\Satwa_in;
use App\Models\Satwa_kandang;
use App\Models\Satwa_foto;
use Illuminate\Http\RedirectResponse;
use Carbon\Carbon;
use Illuminate\Support\Str;
use DataTables;


class SatwaController extends Controller
{
    //Satwa Masuk 
 
    public function index(Request $request){

        $query = Satwa::with(['mastersatwa','kandang','satwa_in']);
        if ($request->ajax()) {
            return  DataTables::of($query)
            ->addIndexColumn()
           ->editColumn('satwa_in.asal_usul', function($data){
            return (isset($data->satwa_in->asal_usul)?$data->satwa_in->asal_usul:"Tidak ada");
                
            })
            ->editColumn('satwa_in.nama_instansi', function($data){
                return (isset($data->satwa_in->nama_instansi)?$data->satwa_in->nama_instansi:"Tidak ada");
                    
                })
                ->editColumn('kandang', function($data){
                    return (isset($data->kandang[0]->kode_kandang)?$data->kandang[0]->kode_kandang:"Tidak ada");
                        
                })
                ->editColumn('kandang1', function($data){
                    return (isset($data->kandang[1]->kode_kandang)?$data->kandang[1]->kode_kandang:"Tidak ada");
                        
                })
                ->editColumn('kandangkeeper', function($data){
                    return (isset($data->kandang[0]->keeperKandang->nama)?$data->kandang[0]->keeperKandang->nama:"Tidak ada");
                        
                })
                ->addColumn('detail', function($row){
                    $btn = '<a class="btn bg-green" href="/satwa-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-eye"></i> </a>';
                     return $btn;
             })/*
                    ->editColumn('kandangholding', function($data){
                        return (isset($data->kandang[1]->kode_kandang)?$data->kandang[1]->kode_kandang:"Tidak ada");
                            
                        })*/
            ->addColumn('action', function($row){
                $btn = '<a class="btn btn-primary" href="/satwa-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-pen-to-square"></i> </a>
                        <a class="btn btn-danger" href="/satwa-delete/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-trash"></i></a>';
                 return $btn;
         })

         ->rawColumns(['action','detail'])
         ->make(true);                 
        }
        return view('satwa.satwa');

    }

    public function add(){

        return view('satwa.add_satwa');

    }

    public function edit($id){
        
        $satwadata = Satwa::with(['satwa_in','kandang.keeperKandang','mastersatwa','satwafoto'])->get()->find($id);
      //  $years = Carbon::parse($satwadata->tgl_lahir)->age;
        //var_dump($years);
       // exit();
        // dd($satwadata->kandang[3]->id);
       
      //  dd($satwadata->kandang->id);
       // $kandangdata = Kandang::with('keeperKandang')->get()->find($id);
        //dd($keeperdata);
        return view('satwa.add_satwa',['data' =>$satwadata]); 

    }

    public function delete($id){

       // $deleteSatwa = Satwa::findorFail($id);
       
        $satwa = Satwa::with(['kandang','satwa_in'])->whereId($id)->get();
        //dd($satwa);
        dd($satwa);
        $satwa->kandang()->delete();
        $satwa->satwa_in()->delete();
        $satwa->delete();


        /*$deleteKeeperfoto = Keeper_foto::findorFail($id);
        $deleteKeeperfoto->delete();*/
        Session::flash('status', 'success');
        Session::flash('message', 'Delete Data Satwa Berhasil');

        return redirect('/satwa');

    }


 
    
    public function store(Request $request): RedirectResponse
    
    {   
        
    if($request->id == NULL || $request->id == "" ){
    
       // dd($request->all());

        $satwa = Satwa::create([
            'id' => Str::uuid(),
            'id_mastersatwa' => $request->id_mastersatwa,
            'nama' => $request->nama,
            'filial' => $request->filial,
            'jk' => $request->jk,
            'induk_jantan' => $request->induk_jantan,
            'induk_betina' => $request->induk_betina,
            'status_breeding' => $request->status_breeding,
            'tgl_lahir' => date("Y-m-d", strtotime($request->tgl_lahir)),
            'ciri' => $request->ciri
        ]); 
        Satwa_in::create([
            'id' => Str::uuid(),
            'id_satwa' => $satwa->id,
            'asal_usul' => $request->asalusul,
            'nama_instansi' => $request->nama_instansi,
            'tgl_masuk' => date("Y-m-d", strtotime($request->tgl_masuk)),
        ]); 
        foreach ($request->kandang as $key => $value) {
            Satwa_kandang::create([ 
                'id' => Str::uuid(),
                'id_satwa' => $satwa->id,
                'id_kandang' => $value,
            ]);
        }

        if ($request->file('foto')){
            $extension = $request->file('foto')->getClientOriginalExtension();
            $namefile = $request->nama.'-'.now()->timestamp.'.'.$extension;
            $request->file('foto')->move('foto', $namefile);
            Satwa_foto::create([
                'id' => Str::uuid(),
                'id_satwa' => $satwa->id,
                'nama' => $namefile,
                'url' => urlimage($namefile) 

            ]);
        }

        if ($request->file('bap')){
            $extension = $request->file('bap')->getClientOriginalExtension();
            $namefilebap = $request->nama.'-'.now()->timestamp.'.'.$extension;
            $request->file('bap')->move('dokumen', $extension);
            Satwa_in_dokumen::create([
                'id' => Str::uuid(),
                'id_satwa' => $satwa->id,
                'nama' => $namefilebap,
                'jenis' => 'bap',
                'url' => urlimage($namefile) 
    
            ]);

            }

            if ($request->file('lahir')){
                $extension = $request->file('lahir')->getClientOriginalExtension();
                $namefilelahir = $request->nama.'-'.now()->timestamp.'.'.$extension;
                $request->file('lahir')->move('lahir', $extension);
                Satwa_in_dokumen::create([
                    'id' => Str::uuid(),
                    'id_satwa' => $satwa->id,
                    'nama' => $namefilelahir,
                    'jenis' => 'bap',
                    'url' => urldoc($namefile) 
        
                ]);
            if ($request->file('pendukung')){
                $extension = $request->file('pendukung')->getClientOriginalExtension();
                $namefilependukung = $request->nama.'-'.now()->timestamp.'.'.$extension;
                $request->file('pendukung')->move('dokumen', $extension);
                Satwa_in_dokumen::create([
                    'id' => Str::uuid(),
                    'id_satwa' => $satwa->id,
                    'nama' => $namefilependukung,
                    'jenis' => 'pendukung',
                    'url' => urldoc($namefile) 
        
                ]);
            }
    }
    

   


             
  /*  else{
      
        Satwa::updateOrCreate(
            ['id' => $request->id],
            [   'id_keeper' => $request->id_keeper,
                'kode_kandang' => $request->kode_kandang,
                'jenis_kandang' => $request->jenis_kandang,
                'zona' => $request->zona,
                'deskripsi' => $request->deskripsi,
                'foto' =>  $namefile
            ]

            );
            
        }*/

        return redirect('/satwa');
    }
}

    // Satwa Keluar

    public function indexkeluar(Request $request){

        $query = Satwa::with(['satwa_mutasi']);
        if ($request->ajax()) {
            return  DataTables::of($query)
            ->addIndexColumn()
           /* ->editColumn('keeperKandang.nama', function($data){
                return $data->keeperKandang->nama;
            })*/
            ->addColumn('action', function($row){
                $btn = '<a class="btn btn-primary" href="/keeper-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-pen-to-square"></i> </a>
                        <a class="btn btn-danger" href="/keeper-delete/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-trash"></i></a>';
                 return $btn;
         })
         ->rawColumns(['action'])
         ->make(true);                 
        }
        return view('satwa.satwa_mutasi');

    }

    public function addmutasi(){

        return view('satwa.add_satwa_mutasi');

    }

    public function editmutasi($id){ 
        
        $satwadata = Satwa::with(['satwa_in','mastersatwa'])->get()->find($id);
       // $kandangdata = Kandang::with('keeperKandang')->get()->find($id);
        //dd($keeperdata);
        return view('satwa.add_satwa_mutasi',['data' =>$satwadata]);

    }

    public function deletemutasi($id){

        $deleteSatwa = Satwa::findorFail($id);
        $deleteSatwa->delete();

        /*$deleteKeeperfoto = Keeper_foto::findorFail($id);
        $deleteKeeperfoto->delete();*/
        Session::flash('status', 'success');
        Session::flash('message', 'Delete Data Satwa Berhasil');

        return redirect('/keeper');

    }




     //Master Satwa
    public function master(Request $request){
     
        if ($request->ajax()) {
            $mastersatwa = Mastersatwa::query();
            return  DataTables::eloquent($mastersatwa)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                           $btn = '<a class="btn btn-primary" href="/mastersatwa-edit/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-pen-to-square"></i> </a>
                                   <a class="btn btn-danger" href="/mastersatwa-delete/'.(isset($row->id)?$row->id:"").'" style="color:#ffff;display:inline-block;" ><i class="fa-solid fa-trash"></i></a>';
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        return view('satwa.master');

    }

    public function addmaster(){

        return view('satwa.add_mastersatwa');

    }

    public function editmaster($id){
        
        $mastersatwadata = Mastersatwa::find($id);
        return view('satwa.add_mastersatwa',['data' =>$mastersatwadata]);

    }


    public function deletemaster($id){

        $delete = Mastersatwa::findorFail($id);
        $delete->delete();

        return redirect('/mastersatwa');

    }



    public function storemastersatwa(Request $request): RedirectResponse
    {    

        /*
        $namefile='';
        if ($request->file('foto')){
        $extension = $request->file('foto')->getClientOriginalExtension();
        $namefile = $request->nama.'-'.now()->timestamp.'.'.$extension;
        $request->file('foto')->move('foto', $namefile);
            }*/

             if( $request->id == NULL ||  $request->id == "" ){

               // dd($request->all());
                MasterSatwa::create([
                    'id' => Str::uuid(),
                    'namasatwa' => $request->namasatwa,
                    'kingdom' => $request->kingdom,
                    'filum' => $request->filum,
                    'kelas' => $request->kelas,
                    'ordo' => $request->ordo,
                    'famili' => $request->famili,
                    'subfamili' => $request->subfamili,
                    'genus' => $request->genus,
                    'spesies' => $request->spesies,
                    'ancaman' => $request->ancaman,
                    'penyebaran' => $request->penyebaran,
                    'makanan' => $request->makanan,
                    'habitat' => $request->habitat,
                    'trenpopulasi' => $request->trenpopulasi,
                    'funfact' => $request->funfact
                ]); 
             }
    else{
           MasterSatwa::updateOrCreate(
            ['id' => $request->id],
            [
                'namasatwa' => $request->namasatwa,
                'kingdom' => $request->kingdom,
                'filum' => $request->filum,
                'kelas' => $request->kelas,
                'ordo' => $request->ordo,
                'famili' => $request->famili,
                'subfamili' => $request->subfamili,
                'genus' => $request->genus,
                'spesies' => $request->spesies,
                'ancaman' => $request->ancaman,
                'penyebaran' => $request->penyebaran,
                'makanan' => $request->makanan,
                'habitat' => $request->habitat,
                'trenpopulasi' => $request->trenpopulasi,
                'funfact' => $request->funfact
            ]
            );
            
        }

        return redirect('/mastersatwa');
    }


//Select 

    public function selectMastersatwa(Request $request)
    {
    	$mastersatwa = [];
        if($request->has('q')){
            $search = $request->q;
            $mastersatwa =Mastersatwa::select("id", "namasatwa")
            		->where('namasatwa', 'LIKE', "%$search%")
            		->get();
        }else{ 
            $mastersatwa =Mastersatwa::select("id", "namasatwa")->orderBy('id')->get(10);
        }
        return response()->json($mastersatwa);
    }

    public function selectExhibit(Request $request)
    {
    	$exhibit = [];
        if($request->has('q')){
            $search = $request->q;
            $exhibit =Kandang::select("id", "kode_kandang")
            		->where('kode_kandang', 'LIKE', "%$search%")
                    ->where('jenis_kandang', 'LIKE', 'Exhibit')
            		->get();
        }else{ 
            $exhibit =Kandang::select("id", "kode_kandang")->where('jenis_kandang', 'LIKE', 'Exhibit')->orderBy('id')->get(10);
        }
        return response()->json($exhibit);
    }

    public function selectHolding(Request $request)
    {
    	$holding = [];
        if($request->has('q')){
            $search = $request->q;
            $holding =Kandang::select("id", "kode_kandang")
            		->where('kode_kandang', 'LIKE', "%$search%")
                    ->where('jenis_kandang', 'LIKE', 'Holding')
            		->get(); 
        }else{ 
            $holding =Kandang::select("id", "kode_kandang")->where('jenis_kandang', 'LIKE', 'Holding')->orderBy('id')->get(10);
        }
        return response()->json($holding);
    }


}
