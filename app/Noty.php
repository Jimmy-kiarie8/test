<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noty extends Model
{
    protected $table = 'notifications';
    protected $fillable = [
        'read_at'
    ];
}
