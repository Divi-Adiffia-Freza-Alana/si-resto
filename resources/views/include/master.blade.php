<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sistem Informasi Konservasi</title>
  
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />


  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

   <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('/')}}dist/css/adminlte.min.css?v=<?php echo time();?>">
  <!-- Main style -->
  <link rel="stylesheet" href="{{asset('/')}}css/main.css?v=<?php echo time();?>">
  



  <!-- DataTables -->
  <link  href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css" rel="stylesheet">

  <!-- datepicker -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">


</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <!--<div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>-->

  <!-- Navbar -->
  @include('include.navbar')
  <!-- /.navbar -->

  <!--Header-->

  <!-- Main Sidebar Container -->

  @include('include.sidebar')
  <!--Sidebar-->


  @yield('content')

  <!--Footer-->
  
  @include('include.footer')

    <!--Footer-->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{asset('/')}}plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{asset('/')}}plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="{{asset('/')}}plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="{{asset('/')}}plugins/chart.js/Chart.min.js"></script>


<!-- AdminLTE App -->
<script src="{{asset('/')}}dist/js/adminlte.js"></script>



<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>


<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/bs-custom-file-input/1.1.1/bs-custom-file-input.js" integrity="sha512-HaEy0QUW4eX9WTwu1vDg2AroxE2oAZl0FSGcsLo3OZcwDzhdccdZRUJsed3BHaZgb8ZDj7Ve8iL2nQ6dfkazsA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>-->
<script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.js"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('/')}}dist/js/pages/dashboard.js"></script>


<!-- Select2 -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


<!--Jquery Datepicker -->
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
  $(document).ready(() => {
      $("#foto").change(function () {
          const file = this.files[0];
          if (file) {
              let reader = new FileReader();
              reader.onload = function (event) {
                $('#avatar').attr('src', event.target.result);
                  
              };
              reader.readAsDataURL(file);
          }
      });
  });
</script>

<script>
  $(function () {

      
  var table = $('#data-tables-kurir').DataTable({
      processing: true,
      serverSide: true,
      autoWidth: true,
      ajax: "{{ route('kurir.index') }}",
      columns: [ 
          {data: 'nama', name: 'nama'},
          {data: 'no_ktp', name: 'no_ktp'},
          {data: 'tgl_lahir', name: 'tgl_lahir'},
          {data: 'no_hp', name: 'no_hp'},
          {data: 'email', name: 'email'},
          {data: 'jk', name: 'jk'},
          {data: 'alamat', name: 'alamat'},
          {data: 'action', name: 'action', orderable: false, searchable: false},
      ]

  });


  var table = $('#data-tables-bahanbaku').DataTable({
      processing: true,
      serverSide: true,
      autoWidth: true,
      ajax: "{{ route('bahanbaku.index') }}",
      columns: [ 
          {data: 'nama', name: 'nama'},
          {data: 'stok', name: 'stok'},
          {data: 'satuan', name: 'satuan'},
          {data: 'manajemenstok', name: 'manajemenstok', orderable: false, searchable: false},
         // {data: 'log', name: 'log', orderable: false, searchable: false},
          {data: 'action', name: 'action', orderable: false, searchable: false},
      ]

  });





  var table = $('#data-tables-menu').DataTable({
      processing: true,
      serverSide: true,
      autoWidth: true,
      ajax: "{{ route('menu.index') }}",
      columns: [ 
          {data: 'nama', name: 'nama'},
          {data: 'jenis', name: 'jenis'},
          {data: 'komposisi', name: 'komposisi'},
          {data: 'deskripsi', name: 'deskripsi'},

          {data: 'action', name: 'action', orderable: false, searchable: false},
      ]

  });




 
  var tableuser = $('#data-tables-user').DataTable({
      processing: true,
      serverSide: true,
      ajax: "{{ route('user.index') }}",
      columns: [
          {data: 'name', name: 'name'},
          {data: 'email', name: 'email'},
          {data: 'action', name: 'action', orderable: false, searchable: false},
          
      ]


  });






    
    $(function() {
    $( ".datepicker" ).datepicker({
        dateFormat: 'dd-mm-yy',
        yearRange: "-70:+0",
        changeMonth: true,
        changeYear: true,
     });
    });

    //Initialize Select2 Elements
    $('.select2').select2()

  
    $(document).ready(function () {
      bsCustomFileInput.init()
    })    
 

  });



  
</script>

<!-- Select logic -->
<script src="{{asset('/')}}js/select.js"></script>

<!-- datatble 
<script type="text/javascript" src="{{asset('/')}}js/datatable.js"></script>
logic -->

</body>
</html>
