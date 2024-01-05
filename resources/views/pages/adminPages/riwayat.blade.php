@extends('mainlayout')
@section('maincontent')
    <body>
        <?php
            error_reporting(0);
            session_start();
            $connect = mysqli_connect("localhost","root","","laundry");
        ?>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h1 class="judul-home">Riwayat Transaksi</h1>
                    <p class="judul-home">Menampilkan Data Dari Semua Transaksi sudah selesai!</p>

                    <form class="d-flex mt-3" role="search" method="get" action=''>
                        <input class="form-control me-2" type="search" name="keyword" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Cari</button>
                    </form>
                    <table class="table table-responsive table-striped">
                        <thead>
                          <tr align='left'>
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
                          </tr>
                            @endforeach
                        </tbody>
                      </table>
                      {!! $data->links() !!}
                </div>
            </div>
        </div>
    </body>
@endsection


