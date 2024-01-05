@extends('mainlayout')
@section('maincontent')
  <body>    
    <?php
      error_reporting(0);
      session_start();
      $conn = mysqli_connect("localhost","root","","laundry");

    ?>
      <div class="body-pesan">
          <form action="store" method="POST" class="row g-3">
            @csrf
              <div class="col-md-6">
                <label for="inputNama" class="form-label">Atas Nama</label>
                <input type="teks" name="cust" class="form-control" id="inputNama" required>
              </div>
              <div class="col-md-6">
                <label for="inputBerat" class="form-label">Berat (dalam gram)</label>
                <input type="teks" name="berat" class="form-control" id="inputBerat" required>
              </div>
              <div class="col-md-4">
                <label for="inputState" class="form-label">Jenis Laundry</label>
                <select id="inputState" name="jenis" class="form-select">
                  <option selected>Reguler</option>
                  <option>Kilat</option>
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
                <button type="submit" name="pesan" class="btn btn-primary">Buat Pesanan</button>
              </div>
            </form>
      </div>

  </body>
@endsection

