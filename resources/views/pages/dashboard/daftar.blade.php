@extends('mainlayout')
@section('maincontent')
    <body>
        <?php
            error_reporting(0);
            session_start();
            $conn = mysqli_connect("localhost","root","","laundry");

        ?>
        <div class="container mt-5" >
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h1 class="text-center">Daftar Member</h1>
                    <p class="text-center mt-3">Jadilah member dan nikmati layanan aplikasi LaundryQ</p>
                        <form action="create" method="post" style = "padding-top: 20px;">
                            @csrf
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" name="username" id="username" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" name="email" id="email" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="name" class="form-label">name</label>
                                <input type="text" name="name" id="name" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" name="password" id="password" class="form-control" required>
                            </div>
                            <button type="submit" name="register" class="btn btn-primary">Register</button>
                          </form>
            </center>
        </div>
    </body>
@endsection
