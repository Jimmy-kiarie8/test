<?php

namespace App\Http\Controllers;

use App\Director;
use Illuminate\Http\Request;
use Auth;

class DirectorController extends Controller
{
    /*public function getdircom()
    {
        return Director::all();
    }
    
    public function getdirect()
    {
        return Director::all();
    }
    public function getDirector()
    {
        return Director::all();
    }*/

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->all();
        $user = Auth::user();

        foreach ($user->unreadNotifications as $notification) {
            $notification->markAsRead();
        }
    }
}
