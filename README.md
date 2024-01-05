# LAUNDRYQ
## _System Management Laundry Order_

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

LaundryQ adalah solusi modern yang dirancang khusus untuk memenuhi kebutuhan pengelolaan harian perusahaan laundry. Sistem ini memberikan kemudahan bagi pemilik dan administrator laundry untuk mengelola operasi sehari-hari, serta memberikan akses mudah untuk melihat riwayat transaksi yang terjadi. Dengan fokus pada efisiensi dan visibilitas, LaundryQ mencakup dua jenis login, yaitu sebagai owner dari perusahaan laundry dan sebagai administrator dari tempat laundry.

## Features
- Login Sebagai Administrator Maupun Sebagai Owner perusahaan
- Penulisan pesanan laundry
- Melihat order Laundry dan Update (Khususnya Status pesanan)
- Melihat Riwayat order
- Register account

## Problem That Need To Solves
> Mampu memudahkan pekerja dalam mengatur riwayat order
> Pemilik perusahaan dapat memantau kinerja pekerja mereka
> Mempermudah dalam menentukan keuntungan

## Installation
> Pastikan sudah terinstal PHP, Composer, dan Xampp
> Buat database baru dengan nama laundry ( pada folder database juga terdapat file laundry.sql yang sudah terisi data pemesanan dan riwayat secara lengkap )
> pada file .env, pastikan untuk nama database, username ,dan passwordnya sudah benar.
> Buka terminal baru lalu jalankan perintah " composer install "
> Jalankan perintah  " php artisan key:generate "
> Jalankan perintah " php artisan migrate "
> Jalankan perintah " php artisan db:seed users "
> > Jalankan perintah " php artisan serve " sudah siap digunakan.