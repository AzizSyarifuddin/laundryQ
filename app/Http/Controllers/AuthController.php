<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    /*
    Menampilkan halaman Form untuk Login
    */
    function index()
    {
        return view("pages.dashboard.login");
    }

    /*
    Fungsi Untuk Login
    */

    function login(Request $request)
    {
        //Melakukan validasi data  agar diisi semua
        $request->validate([
            'username'=>'required',
            'password'=>'required'
        ],[
            'username.required'=>'Username Wajib Diisi',
            'password.required'=>'Password Wajib Diiri'
        ]);
        //Fungsi melakukan validasi data dari database  
        $infologin =[
            'username'=>$request->username,
            'password'=>$request->password
        ];
        /*
        *
        Sebuah Kondisional dimana apabila usernamenya adalah admin maka akan diarahkan ke halaman admin
        *
        dan apabila tidak (dianggap sebagai login owner) akan diarahkan ke halaman owner
        */
        if(Auth::attempt($infologin)){
            if (auth()->user()->username === 'admin') {
                // Redirect to page 1 for admin
                return redirect('Administrator');
            } else {
                // Redirect to page 2 for non-admin users
                return redirect('daftarTransaksi');
            }
            
        //Fungsi apabila gagal /  tidak sesuai dengan yang ada
        }else{
            return redirect('user') ->withErrors('Username atau password Salah');
        }
        

    }
    /*
    Fungsi Untuk logout dari aplikasi
    */
    function logout(){
        Auth::logout();
        return redirect('user');
    }
    /*
    Menampilkan halaman register yang ada dalam autorisasi admin
    */
    function register(){
        return view('pages.dashboard.daftar');
    }
    /*
    Fungsi untuk Create account baru
    */
    function create(Request $request){
        /*
        Memvalidasi agar form diisi sesuai dengan fungsi dibawah
        */
        $request->validate([
            'username'=>'required|unique:users',
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'password'=>'required|min:3'
        ],[
            'username.required'=>'Username Wajib Diisi',
            'name.required'=>'nama wajib diisi',
            'password.required'=>'Password Wajib Diiri'
        ]);

        $data = [
            'username'=>$request->username,
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password)
        ];
        User::create($data);

        $infologin =[
            'username'=>$request->username,
            'password'=>$request->password  
        ];
        /*
        Melakukan fungsi untuk langsung menuju halaman mereka masing masing
        */
        if(Auth::attempt($infologin)){
            if (auth()->user()->username === 'admin') {
                // Redirect to page 1 for admin
                return redirect('Administrator');
            } else {
                // Redirect to page 2 for non-admin users
                return redirect('daftarTransaksi');
            }
            
        }else{
            return redirect('user') ->withErrors('Username atau password Salah');
        }
    }
}
