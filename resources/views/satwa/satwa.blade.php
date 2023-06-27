@extends('include.master')
@section('content')
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <div class="row">
                  <div class="col-10">
                    <h3 class="card-title">DataTable Satwa</h3> 
                  </div>
                  <div class="col-2">
                      <a class="btn btn-block bg-green" href="satwa/add" style="color:#ffff;float:right;" >Add New +</a>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="data-tables-satwa" class="table table-bordered table-striped" style="width:100%!important">
                  <thead>
                  <tr>
                    <th>Nama Satwa</th>
                    <th>Jenis</th>
                    <th>Filial</th>
                    <th>Asal Usul</th>
                    <th>Instansi</th>
                    <th>Kandang Exhibit</th>
                    <th>Kandang Holding</th>
                    <th>Keeper</th>
                    <th>Detail</th>
                    <th>Action</th>
                 
                  </tr>
                  </thead>
                  <tbody>
                  </tbody>
         
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  @stop

