<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Mail\Userregistered;
use Illuminate\Support\Facades\Mail;

class Subcat extends Model
{
	protected $casts = [
	    'users_id' => 'json'
	];
    
    /**
     * Every attachment belongs to one file category
     * 
     * @return Relation 
     */
    public function docs()
    {
    	return $this->belongsTo('App\Attachment');
    }

    public function mail()
    {
        Mail::to('jimkiarie8@gmail.com')
        ->send(new Userregistered);
        // return view('welcome');
    }
}
