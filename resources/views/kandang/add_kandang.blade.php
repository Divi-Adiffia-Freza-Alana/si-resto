@extends('include.master')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">General Form</li>
            </ol>
          </div> 
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
                <h3 class="card-title">Form  Kandang</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/kandangstore" method="post" enctype="multipart/form-data">
              @csrf
                <div class="card-body">
                  <div class="row">
                  <input type="hidden" name="id" id="id" value="<?php echo (isset($data->id)?$data->id:""); ?>">
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Kode Kandang </label>
                      <input type="text" class="form-control" id="kode_kandang" name="kode_kandang" placeholder="Kode Kandang" value="<?php echo (isset($data->kode_kandang)?$data->kode_kandang:""); ?>" required>
                    </div>
                    <div class="col-md-6">
                      <!-- select -->
                      <div class="form-group">
                        <label>Jenis Kandang</label>
                        <select id="jenis_kandang" name="jenis_kandang" class="form-control" required>
                        <option <?php echo (isset($data->jenis_kandang)&&$data->jenis_kandang=="Exhibit"?"selected":""); ?> value="Exhibit">Exhibit</option>
                        <option <?php echo (isset($data->jenis_kandang)&&$data->jenis_kandang=="Holding"?"selected":""); ?> value="Holding">Holding</option>
                        <option <?php echo (isset($data->jenis_kandang)&&$data->jenis_kandang=="Shelter"?"selected":""); ?> value="Shelter">Shelter</option>
                        <option <?php echo (isset($data->jenis_kandang)&&$data->jenis_kandang=="Jepit"?"selected":""); ?> value="Jepit">Jepit</option>
                        <option <?php echo (isset($data->jenis_kandang)&&$data->jenis_kandang=="Transport"?"selected":""); ?> value="Transport">Transport</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group col-md-4">
                      <label>Zona</label>
                      <select id="selectzona" class="form-control" style="width: 100%;" id="id_zona" name="id_zona">
                      <option value=<?php echo (isset($data->id_zona)?$data->id_zona:"")?> selected><?php echo (isset($data->zona->nama)?$data->zona->nama:"")?></option>
                      </select>
                    </div>
                     <!--<div class="form-group col-md-4">
                      <label for="exampleInputEmail1">Zona </label>
                      <input type="text" class="form-control" id="zona" name="zona"  placeholder="Zona" value="<?php echo (isset($data->zona)?$data->zona:""); ?>"  required>
                      </div>-->
                      <div class="form-group col-md-4">
                    <label for="exampleInputFile">Foto</label>
                    <div class="input-group">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" id="foto" name="foto" >
                          <label class="custom-file-label" for="exampleInputFile"><?php echo (isset($data->foto)?$data->foto:"Choose File"); ?></label>
                          <input type="hidden" class="custom-file-input" id="fotolabel" name="fotolabel" value="<?php echo (isset($data->foto)?$data->foto:""); ?>">
                        </div>
                        <!--<div class="input-group-append">
                          <span class="input-group-text">Upload</span>
                        </div>-->
                      </div>
                    </div>
                    <div class="form-group col-md-4">
                      <label>Keeper</label>
                      <select id="selectkeeper" class="form-control" style="width: 100%;" id="id_keeper" name="id_keeper">
                      <option value=<?php echo (isset($data->id_keeper)?$data->id_keeper:"")?> selected><?php echo (isset($data->keeperKandang->nama)?$data->keeperKandang->nama:"")?></option>
                      </select>
                    </div>

                    <div class="col-md-12">
                        <!-- textarea -->
                        <div class="form-group">
                          <label>Deskripsi </label>
                          <textarea class="form-control" rows="3" placeholder="Enter ..."  id="deskripsi" name="deskripsi"><?php echo (isset($data->deskripsi)?$data->deskripsi:""); ?></textarea>
                        </div>
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

 