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
                <h3 class="card-title">Form Satwa Masuk</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/satwastore" method="post" enctype="multipart/form-data">
              @csrf
                <div class="card-body">
                  <div class="row">
                  <input type="hidden" name="id" id="id" value="<?php echo (isset($data->id)?$data->id:""); ?>">
                  <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Nama/Tagname Satwa </label>
                      <input type="text" class="form-control"  id="nama" name="nama"  placeholder="Nama Satwa" value="<?php echo(isset($data->nama)?$data->nama:"");?>">
                    </div>
                    <div class="form-group col-md-6">
                      <label>Satwa</label>
                      <select id="selectmastersatwa" class="form-control" style="width: 100%;"  name="id_mastersatwa">
                      <option value=<?php echo (isset($data->id_mastersatwa)?$data->id_mastersatwa:"")?> selected><?php echo (isset($data->mastersatwa->namasatwa)?$data->mastersatwa->namasatwa:"")?></option>
                      </select>
                    </div>
                    <div class="col-md-6">
                      <!-- select -->
                      <div class="form-group">
                        <label>Filial</label>
                        <select class="form-control" id="filial" name="filial">
                          <option <?php echo (isset($data->filial)&&$data->filial=="F0"?"selected":""); ?> value="F0">F0</option>
                          <option <?php echo (isset($data->filial)&&$data->filial=="F1"?"selected":""); ?> value="F1">F1</option>
                          <option <?php echo (isset($data->filial)&&$data->filial=="F2"?"selected":""); ?> value="F2">F2</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <!-- select -->
                      <div class="form-group">
                        <label>Jenis Kelamin</label>
                        <select class="form-control" id="jk" name="jk">
                          <option <?php echo (isset($data->jk)&&$data->jk=="Jantan"?"selected":""); ?> value="Jantan">Jantan</option>
                          <option <?php echo (isset($data->jk)&&$data->jk=="Betina"?"selected":""); ?> value="Betina">Betina</option>
                          <option <?php echo (isset($data->jk)&&$data->jk=="Unknown"?"selected":""); ?> value="Unknown">Unknown</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Induk Jantan </label>
                      <input type="text" class="form-control"  id="induk_jantan" name="induk_jantan"  placeholder="Induk Jantan" value="<?php echo(isset($data->induk_jantan)?$data->induk_jantan:""); ?>">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Induk Betina </label>
                      <input type="text" class="form-control"  id="induk_betina" name="induk_betina"  placeholder="Induk Betina" value="<?php echo(isset($data->induk_betina)?$data->induk_betina:""); ?>">
                    </div>
                    <div class="form-group col-md-6">
                      <label>Status Breeding </label>
                      <select class="form-control" style="width: 100%;"  id="status_breeding" name="status_breeding">
                        <option <?php echo (isset($data->status_breeding)&&$data->status_breeding=="Belum Kawin"?"selected":""); ?> value="Belum Kawin">Belum Kawin</option>
                        <option <?php echo (isset($data->status_breeding)&&$data->status_breeding=="Sudah Kawin"?"selected":""); ?> value="Sudah Kawin">Sudah Kawin</option>
                      </select>
                    </div> 
                  <?php  if(isset($data->tgl_lahir)){
                      $tgllahir_indo = dateformat($data->tgl_lahir);
                    }?>
                    <div class="form-group col-md-6">
                      <label>Tanggal Lahir</label>
                        <div class="input-group date">
                            <input id="tgl_lahir" type="text" class="form-control datepicker" name="tgl_lahir" value="<?php echo (isset($tgllahir_indo)?$tgllahir_indo:""); ?>" required/>
                            <div class="input-group-append">
                                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                        </div> 
                    </div>
                    <div class="form-group col-md-6">
                      <label>Lokasi Kandang Exhibit</label>
                      <select id="selectexhibit" name="kandang[]" class="form-control" style="width: 100%;">
                      <option value=<?php echo (isset($data->kandang[0]->id)?$data->kandang[0]->id:"")?> selected><?php echo (isset($data->kandang[0]->kode_kandang)?$data->kandang[0]->kode_kandang:"")?></option>
                      </select>
                    </div>
                    <div class="form-group col-md-6">
                      <label>Lokasi Kandang Holding</label>
                      <select id="selectholding" name="kandang[]" class="form-control" style="width: 100%;">
                      <option value=<?php echo (isset($data->kandang[1]->id)?$data->kandang[1]->id:"")?> selected><?php echo (isset($data->kandang[1]->kode_kandang)?$data->kandang[1]->kode_kandang:"")?></option>
                      </select>
                    </div>
                    <div class="col-md-6">
                      <!-- select -->
                      <div class="form-group">
                        <label>Asal Usul</label>
                        <select class="form-control" id="asalusul" name="asalusul">
                          <option <?php echo (isset($data->satwa_in->asalusul)&&$data->satwa_in->asalusul=="Captive Breed"?"selected":""); ?> value="Captive Breed">Captive Breed</option>
                          <option <?php echo (isset($data->satwa_in->asalusul)&&$data->satwa_in->asalusul=="Satwa Hibah"?"selected":""); ?> value="Satwa Hibah">Satwa Hibah</option>
                          <option <?php echo (isset($data->satwa_in->asalusul)&&$data->satwa_in->asalusul=="Breeding Loan"?"selected":""); ?> value="Breeding Loan">Breeding Loan</option>
                          <option <?php echo (isset($data->satwa_in->asalusul)&&$data->satwa_in->asalusul=="Titip Rawat"?"selected":""); ?> value="Titip Rawat">Titip Rawat</option>
                          <option <?php echo (isset($data->satwa_in->asalusul)&&$data->satwa_in->asalusul=="Perolehan Lainnya"?"selected":""); ?> value="Perolehan Lainnya">Perolehan Lainnya</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Instansi </label>
                      <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nama Instansi" name="nama_instansi" value="<?php echo (isset($data->satwa_in->nama_instansi)?$data->satwa_in->nama_instansi:""); ?>">
                    </div>
                    <?php 
                    if(isset($data->satwa_in->tgl_masuk)){
                      $tgl_indo = dateformat($data->satwa_in->tgl_masuk);
                    }?>
                    <div class="form-group col-md-6">
                      <label>Tanggal Masuk</label>
                        <div class="input-group date">
                            <input id="tgl_masuk" type="text" class="form-control datepicker" name="tgl_masuk" value="<?php echo (isset($tgl_indo)?$tgl_indo:""); ?>" required/>
                            <div class="input-group-append">
                                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <!-- textarea -->
                        <div class="form-group">
                          <label>Deskripsi (Ciri-ciri Khusus)</label>
                          <textarea name="ciri" class="form-control" rows="3" placeholder="Enter ..."><?php echo (isset($data->ciri)?$data->ciri:""); ?></textarea>
                        </div>
                    </div>
                    <div class="row">
                    <div class="form-group col-md-3">
                      <label for="exampleInputFile">Foto Satwa</label>
                      <div class="input-group">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" id="exampleInputFile" name="foto">
                          <label class="custom-file-label" for="exampleInputFile"><?php echo (isset($data->satwafoto[0]->nama)?$data->satwafoto[0]->nama:"Choose File"); ?></label>
                          <input type="hidden" id="fotolabel" name="fotolabel" value="<?php echo (isset($data->satwafoto[0]->nama)?$data->satwafoto[0]->nama:""); ?>">
                          <input type="hidden" id="id_foto" name="id_foto" value="<?php echo (isset($data->satwafoto[0]->id)?$data->satwafoto[0]->id:""); ?>">
                        </div>
                        <!--<div class="input-group-append">
                          <span class="input-group-text">Upload</span>
                        </div>-->
                      </div>
                    </div>
                    <div class="form-group col-md-3">
                      <label for="exampleInputFile">Dokumen BAP Satwa</label>
                      <div class="input-group">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" id="exampleInputFile" name="bap">
                          <label class="custom-file-label" for="exampleInputFile"><?php echo (isset($data->satwadokumen[0]->nama)?$data->satwadokumen[0]->nama:"Choose File"); ?></label>
                          <input type="hidden" id="fotolabel" name="fotolabel" value="<?php echo (isset($data->satwadokumen[0]->nama)?$data->satwadokumen[0]->nama:""); ?>">
                          <input type="hidden" id="id_foto" name="id_foto" value="<?php echo (isset($data->satwadokumen[0]->id)?$data->satwadokumen[0]->id:""); ?>">
                        </div>
                        <!--<div class="input-group-append">
                          <span class="input-group-text">Upload</span>
                        </div>-->
                      </div>
                    </div>
                    <div class="form-group col-md-3">
                      <label for="exampleInputFile">Dokumen Lahir Satwa</label>
                      <div class="input-group">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" id="exampleInputFile">
                          <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                        </div>
                        <!--<div class="input-group-append">
                          <span class="input-group-text">Upload</span>
                        </div>-->
                      </div>
                    </div> 
                    <div class="form-group col-md-3">
                      <label for="exampleInputFile">Dokumen Pendukung Satwa</label>
                      <div class="input-group">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" id="exampleInputFile">
                          <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                        </div>
                        <!--<div class="input-group-append">
                          <span class="input-group-text">Upload</span>
                        </div>-->
                      </div>
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