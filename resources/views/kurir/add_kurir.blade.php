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
        <div class="col-sm-12">
            @if (Session::has('status'))
            
              <div class="alert alert-danger" role="alert">
              {{Session::get('message')}}
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              </div>
             
            @endif
        
          </div>
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header bg-green">
                <h3 class="card-title">Form Kurir</h3>
              </div>
              <!-- /.card-header -->
             
              <form action="/kurirstore" method="post" enctype="multipart/form-data">
              @csrf
                <div class="card-body">
                  <div class="row">


                    <div class="col-6">
                      <img id="avatar" src="<?php echo (isset($data->foto_url)?$data->foto_url:""); ?>" class="avatar"> </img>
                 

                    <div class="form-group" style="margin-top:25px;">
                   <!-- <label for="exampleInputFile">Foto</label>-->
                    <div class="input-group"  style="max-width:300px;margin:auto;">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="foto" name="foto" >
                        <label class="custom-file-label" for="exampleInputFile"><?php echo (isset($data->foto)?$data->foto:"Choose File"); ?></label>
                        <input type="hidden" id="fotolabel" name="fotolabel" value="<?php echo (isset($data->foto)?$data->foto:""); ?>">
                      </div>
                        <!--<div class="input-group-append">
                          <span class="input-group-text">Upload</span>
                        </div>-->
                      </div>
                    </div>
                    </div>
                    <div class="col-6">
                      <br>
                    <input type="hidden" name="id" id="id" value="<?php echo (isset($data->id)?$data->id:""); ?>">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Nama Kurir </label>
                      <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama Kurir" value="<?php echo (isset($data->nama)?$data->nama:""); ?>" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">No. KTP</label>
                      <input type="text" class="form-control" name="no_ktp" id="no_ktp" placeholder="No. KTP" value="<?php echo (isset($data->no_ktp)?$data->no_ktp:""); ?>" required>
                    </div>
                     <div class="form-group">
                      <label for="exampleInputEmail1">Email Kurir </label>
                      <input type="text" class="form-control" name="email" id="email" placeholder="Email Kurir" value="<?php echo (isset($data->alamat)?$data->alamat:""); ?>" required>
                    </div>
                    <div class="form-group">
                      <label>User</label>
                      <select id="selectuser" name="user" class="form-control" style="width: 100%;">
                      <option value=<?php echo (isset($data->user[0]->id)?$data->user[0]->id:"")?> selected><?php echo (isset($data->user[0]->name)?$data->user[0]->name:"")?></option>
                      </select>
                    </div>
  
                  </div>
              
                  </div>
                   <!-- /.row -->

                  <div class="row">
                  <div class="col-md-4">
                      <!-- select -->
                      <div class="form-group">
                        <label>Jenis Kelamin</label>
                        <select id="jk" name="jk" class="form-control" required>
                        <option <?php echo (isset($data->jk)&&$data->jk=="Laki-Laki"?"selected":""); ?> value="Laki-Laki">Laki-Laki</option>
                        <option <?php echo (isset($data->jk)&&$data->jk=="Perempuan"?"selected":""); ?> value="Perempuan">Perempuan</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group col-md-4">
                      <label for="exampleInputEmail1">No. Telp </label>
                      <input type="text" class="form-control" id="no_hp" name="no_hp" placeholder="No. HP" value="<?php echo (isset($data->no_hp)?$data->no_hp:""); ?>" required>
                    </div>
                    <div class="form-group col-md-4">
                      <label>Tanggal Lahir </label>
                        <div class="input-group date">
                            <input id="tglmasuk" type="text" class="form-control datepicker" name="tgl_lahir" value="<?php echo  (isset($data->tgl_lahir)?$data->tgl_lahir:""); ?>" required/>
                            <div class="input-group-append">
                                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                        </div>
                    </div>
                    
                  </div>
                  

                  <div class="col-md-12">
                    <!-- textarea -->
                    <div class="form-group">
                      <label>Alamat </label>
                      <textarea class="form-control" rows="3" placeholder="Enter ..."  id="alamat" name="alamat"><?php echo (isset($data->alamat)?$data->alamat:""); ?></textarea>
                    </div>
                </div>
                  <!--<div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                  </div>-->
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn bg-green">Submit</button>
                </div>
              </form>
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

