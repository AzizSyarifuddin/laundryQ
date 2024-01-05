@extends('mainlayout')
@section('maincontent')
  <body>
    <?php
      error_reporting(0);
      session_start();
      $connect = mysqli_connect("localhost","root","","laundry");
    ?>     
      <center>
        <div class='cont-admin'>
        <h1 class='judul-home'>Daftar Pesanan</h1>
        <p class='judul-home'>Ayo selesaikan laundry nya!!</p>
        <div class='table-responsive'  >
          <form action='update' method='POST'>
            @csrf
            <table class="table table-responsive table-striped">
              <thead>
                <tr align='left'>
                  {{-- <th scope='col'>Id</th> --}}
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
                  @csrf
                <tr>
                  <td>{{$item->cust}}</td>
                  <td>{{$item->berat}}</td>
                  <td>{{$item->jenis}}</td>
                  <td>{{$item->tanggal}}</td>
                  <td>{{$item->status}}</td>
                  <td><a href='/cek/{{ $item->id_pesan }}/edit' style="text-decoration: none; font-weight: bold;">Update</a></td>
                </tr>
                  @endforeach
              </tbody>
            </table>
              
          </form>
          {!! $data->links() !!}
        </div>  
      </center>          
  </body>
@endsection