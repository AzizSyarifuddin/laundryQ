<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <nav class="navbar bg-body-tertiary fixed-top">
        <!-- Navbar code here -->
            <div class="container-fluid">
              <a class="navbar-brand" href="{{route('user')}}">LaundryQ</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                  <h5 class="offcanvas-title" id="offcanvasNavbarLabel">LaundryQ</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                  <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="{{route('dashboard')}}">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="{{route('admin')}}" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Menu
                      </a>
                      <ul class="dropdown-menu">
                        </li>
                        <li><a class="dropdown-item" href="{{route('about-us')}}">About us</a></li>
                        <li class="dropdown-item">
                          <a class="nav-link" href="{{route('logout')}}">Logout</a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
    </nav>
</head>

<body>
    <?php
        error_reporting(0);
        session_start();
        $connect = mysqli_connect("localhost","root","","laundry");
    ?>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1 class="judul-home">Daftar Transaksi</h1>
                <p class="judul-home">Menampilkan Data Dari Semua Transaksi yang Terjadi!</p>

                <form class="d-flex mt-3" role="search" method="get" action=''>
                    <input class="form-control me-2" type="search" name="keyword" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Cari</button>
                </form>
                <table class="table table-responsive table-striped">
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
                        @csrf
                      <tr>
                        <td>{{$item->id_pesan}}</td>
                        <td>{{$item->cust}}</td>
                        <td>{{$item->berat}}</td>
                        <td>{{$item->jenis}}</td>
                        <td>{{$item->tanggal}}</td>
                        <td>{{$item->status}}</td>
                        <td><a href='/edit/{{ $item->id_pesan }}/editFromOwner' style="text-decoration: none; font-weight: bold;">Update</a></td>
                        <td>
                          <form action="{{route('destroy', $item->id_pesan)}}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button  type="submit">
                              Delete
                            </button>
                          </form>
                        </td>
                      </tr>
                        @endforeach
                    </tbody>
                  </table>
                  {!! $data->links() !!}
                  
            </div>
        </div>
    </div>
</body>
<footer>
  <center><p>Created With love By Aziz💙 - All rights reserved</p></center>
  <style>
      footer {
          text-align: center;
          color: white;
          padding: 10px;
          background-color: #252525;
          position: fixed;
          bottom: 0;
          width: 100%;
      }
  </style>
</footer>
</html>