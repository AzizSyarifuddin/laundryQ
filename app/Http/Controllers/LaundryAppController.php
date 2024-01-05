<?php

namespace App\Http\Controllers;


use App\Models\pesanan;
use Illuminate\Http\Request;


class LaundryAppController extends Controller
{
    /*
    Menampilkan Halaman index/ halaman awal
    */

    public function index()
    {
        return view('pages.dashboard.index');
    }

    /*
    Menampilkan halaman untuk login
    */

    public function login()
    {
        return view('pages.dashboard.login');
    }

    /*
    Halaman About Us
    */

    public function aboutUs()
    {
        return view('pages.dashboard.about');
    } 

    /*
    *
    *
    *
    Menampilkan halaman untuk admin laundry
    */

    public function admin()
    {
        return view('pages.adminpages.admin');
    }
    
    /*
    *
        Fungsi  Create, Read, Update, dan Delete
    */

    /*
    Fungsi Create
    */
    public function pesan()
    {
        //Menampilkan halaman Form Pesan untuk kemudian diisi dengan data customer
        return view('pages.adminpages.pesan');
    }
    
    public function store(Request $request)
    {
        //Melakukan fugsi POST agar data yang diisikan masuk kedalam database
        
        //Melakukan validasi data yang diisikan
        $this->validate($request, [
            'cust'=> 'required|min:3',
            'jenis'=> 'required',
            'berat'=> 'required'
        ]);
        //Menghubungkan antara kolom Form dengan kolom database yang akan diisikan
        $data=[
            'cust'=>$request->cust,
            'jenis'=>$request->jenis,
            'berat'=>$request->berat,
            'status'=>'Belum Selesai'
        ];
        //Melakukan fungsi Create data
        pesanan::create($data);
        return redirect('pesan');
    }
    
    /*
    Fungsi  Read
    */
    public function cek()
    {
        // Melakukan seleksi agar order yang ditampilkan hanya order yang belum selesai
        $data = pesanan::where('status','LIKE','Belum Selesai')
            ->orderBy('id_pesan', 'desc')
            ->paginate(10);
        return view('pages.adminpages.cek')->with('data',$data);
    }
    
    /*Fungsi Read data riwayat yang sudah selesai*/
    public function riwayat(Request $request)
    {   
        $keyword = $request->keyword;

        $data = pesanan::where(function ($query) use ($keyword) {
                $query->where('cust', 'LIKE', '%' . $keyword . '%')
                    ->orWhere('jenis', 'LIKE', '%' . $keyword . '%');
            })
            ->where('status', 'Sudah Selesai')
            ->paginate(10);

        return view('pages.adminpages.riwayat')->with('data', $data);
    }

    /*
    Fungsi Update
    */
    public function edit($id_pesan)
    {
        //Memanggil halaman edit yang digunakan sebagai form untuk update data yang bermasalah seperti typo, dllnya
        $data = pesanan::find($id_pesan);
        return view ('pages.adminpages.edit',compact('data'));  
    }
    public function update($id_pesan,Request $request)
    {
        //Melakukan fungsi POST untuk melakukan update data lewat login admin
        //Fitur AutoFill agar form otomatis akan terisi
        $data = pesanan::find($id_pesan);
        
        //Melakukan update data yand ada  kecuali tokennya
        $data->update($request->except(['_token','submit']));
        return redirect('cek');
    }
     /*
     Fungsi Destroy
     */
    public function destroy($item)
    {
        pesanan::destroy($item);
        return redirect('daftarTransaksi');
    }

    /*
    *
    *
    Menampilkan fungsi untuk owner laundry
    */
    public function daftarTransaksi(Request $request)
    {
        $keyword =$request->keyword;
        /*
        menampilkan data  berdasarkan kondisi dibawah ini untuk fungsi search pada halaman daftar transaksi
        */
        $data = pesanan::where('cust','LIKE','%'.$keyword.'%')
            ->orWhere('jenis','LIKE','%'.$keyword.'%')
            ->orWhere('tanggal','LIKE','%'.$keyword.'%')
            ->paginate('5');
        return view('pages.dashboard.daftarTransaksi')->with('data',$data);
    }

    /*
    Menampilkan halaman untuk melakukan fungsi edit melalui owner toko laundry
    */

    public function editFromOwner($id_pesan)
    {
        $data = pesanan::find($id_pesan);
        return view ('pages.dashboard.editFromOwner',compact('data'));  
    }

    /*
    Fungsi untuk melakukan update data terhadap database
    */

    public function updateFromOwner($id_pesan,Request $request)
    {
        //Mennemukan data yang ada pada database
        $data = pesanan::find($id_pesan);   

        //melakukan POST update terhadap database 
        $data->update($request->except(['_token','submit']));
        return redirect('daftarTransaksi');
    }   
}


   