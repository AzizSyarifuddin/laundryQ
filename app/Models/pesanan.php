<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pesanan extends Model
{
    use HasFactory;
    
    
    protected $table = "pesanan";
    protected $primaryKey = 'id_pesan';
    protected $fillable = ['id_pesan','cust', 'jenis', 'berat','status',];
}
