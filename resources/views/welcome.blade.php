   {{-- admin user --}}
   {{-- <?php

      error_reporting(0);
      session_start();
      if (!isset($_SESSION["login"]) || (isset($_SESSION["login"]) && !isset($_SESSION["admin"]))) {
        echo "
        <script>
            alert('Anda harus login sebagai admin terlebih dahulu');
            document.location.href = 'login.php';
          </script>";
        exit;
      }
      $connect = mysqli_connect("localhost","root","","laundry");
    ?> --}}

{{-- home user --}}
<?php
error_reporting(0);
    session_start();
    if(isset($_SESSION["login"])){
      if(isset($_SESSION["admin"])){
        return redirect()->route('laundry.admin');
        exit;
      }
    }else if(!isset($_SESSION["login"])){
      return redirect()->route('laundry.login');
      exit;
    }

    $conn = mysqli_connect("localhost","root","","laravel-1");
?>
{{-- <table class='table table-striped'>
                  <thead>
                    <tr align='left'>
                        <th scope='col'>Id</th>
                        <th scope='col'>Nama Pelanggan</th>
                        <th scope='col'>Berat</th>
                        <th scope='col'>Tipe Laundry</th>
                        <th scope='col'>Tanggal Pesanan</th>
                        <th scope='col'>Status</th>
                        <th scope='col'></th>
                    </tr>
                  </thead>       
                  <tbody>
                    @foreach ($data as $item)
                    <tr>
                      <td>{{$item->id_pesan}}</td>
                      <td>{{$item->cust}}</td>
                      <td>{{$item->berat}}</td>
                      <td>{{$item->jenis}}</td>
                      <td>{{$item->tanggal}}</td>
                      <td>{{$item->status}}</td>
                      <td><a href='/cek/{{ $item->id_pesan }}/edit'>Selesaikan</a></td>
                    </tr>
                    @endforeach
                  </tbody> --}}

                  // public function riwayat(Request $request)
    // {
    //     $keyword =$request->keyword;
    //     $data = pesanan::where('cust','LIKE','%'.$keyword.'%')
    //         ->where('status','LIKE','%Sudah Selesai%')
    //         ->orWhere('jenis','LIKE','%'.$keyword.'%')
    //         ->paginate(10);
    //     return view('pages.adminpages.riwayat')->with('data',$data);
    // }
