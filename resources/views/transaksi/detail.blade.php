@extends('include.master')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        </div>
      </div><!-- /.container-fluid -->
    </section>
 
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
     
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header bg-green">
                <h3 class="card-title">Detail Transaksi</h3>

              </div>
              <!-- /.card-header -->
             
            
              
                <div class="card-body">
                  <div class="row"> 

                    <div class="col-6"> Kode Transaksi :  {{$data->kode}}</div>
                    <div class="col-6"> Tanggal:  {{dateformat($data->tgl_transaksi)}}</div>
                    <div class="col-6"> No. Meja :  {{$data->meja->nomor}}</div>
                    <div class="col-6"> Nama :  {{$data->konsumen->name}}</div>
                    
          

                  </div>
                  <br>
                  <div> <b>Detail Menu </b></div>
                  
                  <div class="row"> 
                    <table id="2" class="custom-table" style="width:100%!important;margin:0px 10px;">
                      <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama Menu</th>
                        <th>Kode Menu</th>
                        <th>Quantity</th>
                        <th>Harga</th>
                      </tr>
                      </thead>
                      <tbody>
                         
                        @foreach ($data->menu()->get() as $m)                 
                        <tr>
                        <td><?=$loop->iteration?></td> 
                        <td>{{$m->nama}}</td> 
                        <td>{{$m->kd_menu}}</td> 
                        <td>{{$m->pivot->qty}}</td> 
                        <td>{{$m->harga}}</td> 
                        </tr>          
                        @endforeach
                      </tbody>
                    </table>
                   
                  </div>     
                  <br>
                  <div class="row"> 

                    
                    <div class="col-6"> Status Pesanan: <b><?php if($data->status == 1){ echo 'Dalam Proses';}else{ echo 'Telah Selesai';}?></b></div>
                    <div class="col-6" style="text-align:right;"> Total : <b>Rp. {{$data->total}}</b></div>
                    <div class="col-6"> Status Pembayaran : <b> <?php if($data->status_bayar == 1){ echo 'Belum lunas';}else{ echo 'Sudah Lunas';}?></b></div>

                  </div>
                             
                

                </div>

                <!-- /.card-body -->

                <!--<div class="card-footer">
                  <button type="submit" class="btn bg-green">Submit</button>
                </div>-->
             
            </div>
            <!-- /.card -->

        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  @stop

