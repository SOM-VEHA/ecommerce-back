<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class feedback_model extends Model
{
    use HasFactory;
    protected $primaryKey='id';
    protected $table='feedback';
    protected $fillable=['user_id','description','image'];
    public function user(){
        return $this->belongsTo(User::class);
    }
}
