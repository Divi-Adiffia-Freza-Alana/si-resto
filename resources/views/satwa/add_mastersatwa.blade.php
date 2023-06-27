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
                <h3 class="card-title">Form Master Satwa</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/storemastersatwa" method="post" enctype="multipart/form-data">
              @csrf
                <div class="card-body">
                <div class="row">
                    <input type="hidden" name="id" id="id" value="<?php echo (isset($data->id)?$data->id:""); ?>">
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Nama Satwa </label>
                      <input type="text" class="form-control" id="namasatwa" name="namasatwa" placeholder="Nama Satwa" value="<?php echo (isset($data->namasatwa)?$data->namasatwa:""); ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Kingdom </label>
                      <input type="text" class="form-control" id="kingdom" name="kingdom" placeholder="Kingdom" value="<?php echo (isset($data->kingdom)?$data->kingdom:""); ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Filum </label>
                      <input type="text" class="form-control" id="filum" name="filum" placeholder="Filum" value="<?php echo (isset($data->filum)?$data->filum:""); ?>" required>
                    </div>
                    <div class="col-md-6">
                      <!-- select -->
                      <div class="form-group">
                        <label>Kelas</label>
                        <select class="form-control" id="kelas" name="kelas">
                          <option <?php echo (isset($data->kelas)&&$data->kelas=="Aves"?"selected":""); ?> value="Aves">Aves</option>
                          <option <?php echo (isset($data->kelas)&&$data->kelas=="Mamalia"?"selected":""); ?> value="Mamalia">Mamalia</option>
                          <option <?php echo (isset($data->kelas)&&$data->kelas=="Reptil"?"selected":""); ?> value="Reptil">Reptil</option>
                          <option <?php echo (isset($data->kelas)&&$data->kelas=="Amfibi "?"selected":""); ?> value="Amfibi ">Amfibi </option>
                        </select>
                      </div>
                    </div>           
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Ordo </label>
                      <input type="text" class="form-control" id="ordo" name="ordo" placeholder="Ordo" value="<?php echo (isset($data->ordo)?$data->ordo:""); ?>" required>
                    </div>       
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Famili </label>
                      <input type="text" class="form-control" id="famili" name="famili" placeholder="Famili" value="<?php echo (isset($data->famili)?$data->famili:""); ?>" required>
                    </div>        
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Subfamili </label>
                      <input type="text" class="form-control" id="subfamili" name="subfamili" placeholder="Subfamili" value="<?php echo (isset($data->subfamili)?$data->subfamili:""); ?>" required>
                    </div>        
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Genus </label>
                      <input type="text" class="form-control" id="genus" name="genus" placeholder="Genus" value="<?php echo (isset($data->genus)?$data->genus:""); ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Spesies </label>
                      <input type="text" class="form-control" id="spesies" name="spesies" placeholder="Spesies" value="<?php echo (isset($data->spesies)?$data->spesies:""); ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Ancaman </label>
                      <input type="text" class="form-control" id="ancaman" name="ancaman" placeholder="Ancaman" value="<?php echo (isset($data->ancaman)?$data->ancaman:""); ?>" required>
                    </div>
                    <!-- textarea -->
                    <div class="form-group col-md-6">
                      <label>Penyebaran</label>
                      <textarea class="form-control" rows="3" id="penyebaran" name="penyebaran" placeholder="Penyebaran ..."><?php echo (isset($data->penyebaran)?$data->penyebaran:""); ?></textarea>
                    </div>
                    <div class="form-group col-md-6">
                      <label>Makanan</label>
                      <textarea class="form-control" rows="3"  id="makanan" name="makanan" placeholder="Makanan ..."><?php echo (isset($data->makanan)?$data->makanan:""); ?></textarea>
                    </div>
                    <div class="form-group col-md-6">
                      <label>Habitat</label>
                      <textarea class="form-control" rows="3" id="habitat" name="habitat" placeholder="Habitat ..."><?php echo (isset($data->habitat)?$data->habitat:""); ?></textarea>
                    </div>
                    <div class="form-group col-md-6">
                      <label>Tren Populasi</label>
                      <textarea class="form-control" rows="3"  id="trenpopulasi" name="trenpopulasi" placeholder="Tren Populasi ..."><?php echo (isset($data->trenpopulasi)?$data->trenpopulasi:""); ?></textarea>
                    </div>
                    <div class="form-group col-md-6">
                      <label>Fun Facts</label>
                      <textarea class="form-control" rows="3"  id="funfact" name="funfact" placeholder="Fun Facts ..."><?php echo (isset($data->funfact)?$data->funfact:""); ?></textarea>
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