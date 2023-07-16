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

                    <div class="col-6"> Nama :  {{$data->konsumen->name}}</div>
                    <div class="col-6"> Tanggal {{$data->tgl_transaksi}}</div>
                    <div class="col-6"> Nama :  {{$data->konsumen->name}}</div>
                 
                
                    
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

