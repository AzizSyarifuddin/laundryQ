@extends('mainlayout')
@section('maincontent')
  <body>    
    <?php
      error_reporting(0);
      session_start();
      $conn = mysqli_connect("localhost","root","","laundry");

    ?>
      <div class="body-pesan">
          <form action="/cek/{{$data->id_pesan}}" method="POST" class="row g-3">
            @method('PUT')            
            @csrf
              <div class="col-md-6">
                <label for="inputNama" class="form-label"  >Atas Nama</label>
                <input type="teks" name="cust" class="form-control" id="inputNama" required value="{{$data->cust}}">
              </div>
              <div class="col-md-6">
                <label for="inputBerat" class="form-label">Berat (dalam gram)</label>
                <input type="teks" name="berat" class="form-control" id="inputBerat" required value="{{$data->berat}}">
              </div>
              <div class="col-md-4">
                <label for="inputState" class="form-label">Jenis Laundry</label>
                <select id="inputState" name="jenis" class="form-select">
                    <option value="Reguler" {{ $data->jenis === 'Reguler' ? 'selected' : '' }}>Reguler</option>
                    <option value="Kilat" {{ $data->jenis === 'Kilat' ? 'selected' : '' }}>Kilat</option>
                </select>
              </div>
              <div class="col-md-4">
                <label for="inputStatus" class="form-label">Status</label>
                <select id="inputStatus" name="status" class="form-select" >
                    <option value="Belum Selesai" @if ($data->status ==="Belum Selesai")selected @endif>Belum Selesai</option>
                    <option value="Sudah Selesai" @if ($data->status ==="Sudah Selesai")selected @endif>Sudah Selesai</option>
                </select>
            </div>            
              <div class="col-12">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="gridCheck" required>
                  <label class="form-check-label" for="gridCheck">
                    Konfirmasi
                  </label>
                </div>
                
              </div>
              <div class="col-12">
                <button type="submit" name="pesan" class="btn btn-primary">Update</button>
              </div>
            </form>
      </div>
  </body>
  <style>
        /* Navbar */
    .navbar {
        padding-top: 0px;
    }
    .container-fluid {
        background-color: #f5d553;
        border: 1px solid #000000;
    }
    .navbar-brand {
        color: #000000;
        font-size: 16px;
        padding-left: 4%;
        font-weight: bolder;
    }

    .navbar-toggler {
        border: none;
        padding-inline: 8px;
        padding-bottom: 8px;
    }

    .navbar-toggler-icon {
        background-image: url("https://img.icons8.com/ios-filled/50/000000/menu--v1.png");
        width: 15px;
        height: 15px;
    }


    /*Body*/
    body {
        
        padding-top: 5%;
    }


    .form-label {
        font-family: serif;
        font-weight: 500;
    }

    .btn {
        background-color: #f5d553;
        border: none;
        color: #000000;
        font-weight: bold;
        font-size: 14px;
        padding-inline: 8%;
    }

    .btn:hover {
        background-color: #383838;
        color: #f5d553;
    }

    .judul-home {
        text-align: center;
    }

    .table-responsive {
        padding-top: 5%;
        
    }

    .card {
        border: none;
        border-radius: 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }
    .cont-admin {
        padding-left: 10%;
        padding-right: 10%;
        padding-top: 20px;
    }


    .col-sm-6 {
        padding-top: 5%;

    }

    .body-pesan {
        padding-top: 5%;
        padding-left: 10%;
        padding-right: 10%;
    }

    /* index */
    .btn-index {
        
        background-color: black;
        border: none;
        color: #f5d553;
        font-weight: bold;
        font-size: 14px;
        padding-inline: 8%;
    }
    .btn-index:hover {
        background-color: #f5d553;
        color: black;
    }
  </style>
@endsection

