<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class subkesenian extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function sanggar()

    {
        return $this->hasMany(sanggar::class);
    }
}
