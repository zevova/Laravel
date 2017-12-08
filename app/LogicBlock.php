<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogicBlock extends Model
{
    protected $table = 'logic_blocks';

    protected $fillable = [
        'id', 'title', 'text', 'image', 'status', 'created_at', 'updated_at',
    ];

    public function user()
    {
        return $this->hasOne('App\User', 'id', 'author_id');
    }
}
