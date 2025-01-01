<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CartsModel extends Model
{
    use HasFactory;
    protected $table = 'carts';
    protected $fillable = [
        'user_id',
        'product_id',
        'quantity',
        'totalprice'
    ];
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function product(){
        return $this->belongsTo(Product::class);
    }
}