<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = [
        'id', 'author_id', 'category_id', 'title', 'seo_title', 'excerpt', 'body', 'image', 'slug', 'meta_description', 'meta_keywords', 'status', 'created_at', 'updated_at',
    ];

    public function user()
    {
        return $this->hasOne('App\User', 'id', 'author_id');
    }
}
