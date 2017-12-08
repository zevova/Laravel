<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'product';
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'id', 'title', 'text', 'status', 'created_at', 'updated_at',
    ];

    public function user()
    {
        return $this->hasOne('App\User', 'id', 'user_id');
    }


}
