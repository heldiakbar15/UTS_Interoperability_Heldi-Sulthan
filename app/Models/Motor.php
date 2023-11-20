<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Motor extends Model
{
    protected $fillable = array('nama_motor', 'harga', 'deskripsi', 'gambar', 'brand_id');

    public $timestamps = true;
}
