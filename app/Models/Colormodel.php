<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Colormodel extends Model
{
    use HasFactory;
    protected $primaryKey='id';
    protected $table='colors';
    protected $fillable=['title','product_id'];
    public function product(){
        return $this->belongsTo(Product::class);
    }
}
