@extends('mainlayout')
@section('maincontent')
  <body>
    <?php

      $connect = mysqli_connect("localhost","root","","laundry");
    ?>
    <div class="cont-admin">
        <h1 class="judul-home">Halo Administrator!</h1>
        <p class="judul-home">Semangat kerjanya ya..!!</p>
        <div class="card" style="padding-top: 5px;">
            <h5 class="card-header">Main Menu</h5>
            <div class="card-body">
              <h5 class="card-title">Pesan</h5>
              <p class="card-text">Langsung ke halaman pemesanan laundry kak.</p>
              <a href="{{route('pesan')}}" class="btn btn-primary">Pesan</a>
            </div>
          </div>
    
          <div class="row" style="padding-bottom: 5%;">
    
            <div class="col-sm-6 mb-3 mb-sm-0">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Cek Laundry</h5>
                  <p class="card-text">Ayo lihat laundry an yang belum selesai disini ya kak!</p>
                  <a href="{{route('cek')}}" class="btn btn-primary">Lihat</a>
                </div>
              </div>
            </div>
    
            <div class="col-sm-6">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Riwayat Transaksi</h5>
                  <p class="card-text">Ayo Cek Riwayat Transaksi!</p>
                  <a href="{{route('riwayat')}}" class="btn btn-primary">Lihat</a>
                </div>
              </div>
            </div>
    
          </div>

          <div class="card" >
            <div class="card-body">
              <h5 class="card-title">Join Viewer</h5>
              <p class="card-text">Langsung ke halaman Pendaftaran View</p>
              <a href="{{route('register')}}" class="btn btn-primary">Lihat</a>
            </div>
          </div>
    </div>
  </body>

@endsection
  