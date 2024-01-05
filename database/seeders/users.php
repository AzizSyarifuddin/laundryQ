<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
class users extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'name'=>'admin',
            'email'=>'email1@gmail.com',
            'username'=>'admin',
            'password'=>Hash::make('123')
        ]);
        DB::table('users')->insert([
            'name'=>'rika',
            'email'=>'email2@gmail.com',
            'username'=>'rika',
            'password'=>Hash::make('123')
        ]);
    }
}
