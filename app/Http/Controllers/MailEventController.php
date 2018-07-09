<?php

namespace App\Http\Controllers;

use App\Email;
use App\Events\eventEvent;
use App\Notifications\Slack;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Notification;

class MailEventController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->all();
        $event = new Email;
        $event->title = $request->title;
        $event->user_id = Auth::id();
        $event->save();
        event(new eventEvent($event));
        return $request->all();
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Email  $email
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Email $email)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Email  $email
     * @return \Illuminate\Http\Response
     */
    public function destroy(Email $email)
    {
        //
    }

    public function slack()
    {
       //  $notifications =Auth::user()->unreadNotifications;
       // Auth::user()->notify(new Slack);
        // Notification::send(Auth::user(), new Slack());
        /*foreach ($notifications as $notification) {
            dd($notification->data);
        }*/
        foreach (Auth()->user()->unreadNotifications as $notification){
            $converted = class_basename($notification->data['thread']);
            $convert = class_basename($notification->data['user']['name']);
            
        }
        $notification = ['converted' => $converted, 'convert' => $convert] ;
        
        
        return view('calendar', compact('notification'));
    }

    public function slacks()
    {
       // Auth::user()->notify(new Slack);
        $thread = 'some notifications';
        Notification::send(Auth::user(), new Slack($thread));
    }
}
