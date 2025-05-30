<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostCategory extends Model
{
    use Hasfactory;

    protected $table = 'post_categories';

    protected $fillable = ['post_id', 'category_id'];
}
