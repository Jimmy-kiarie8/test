<?php

namespace App\Http\Controllers;

use App\Notifications\Slack;
use App\Noty;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Notification;

class NotyController extends Controller
{
    public function getReadNoty()
    {
        $users = DB::table('notifications')
                    ->whereNotNull('read_at')
                    ->where('notifiable_id', Auth::id())
                    ->get();
        return $users;
        // return Noty::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $thread = $request->message;
        $message_id = $request->message;
        $messages = DB::table('users')
                            ->whereIn('id', $message_id)
                            ->get();
                            // return Auth::user();
        foreach ($messages as $message) {
            // $message_id = $notification;
            // return $message;
            Notification::send($message, new Slack($thread));
        }
        
        // return $request->all();
        // $shareholder = new Noty;
        // $shareholder->post = $request->post;
        // $shareholder->user_id = Auth::id();
        // $shareholder->save();
        // return $shareholder;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Noty  $shareholder
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Noty $noty)
    {
        /*$shareholder = Noty::find($request->id);
        $shareholder->name = $request->name;
        $shareholder->email = $request->email;
        $shareholder->shareholder_no = $request->shareholder_no;
        $shareholder->save();*/
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Noty  $shareholder
     * @return \Illuminate\Http\Response
     */
    public function destroy(Noty $noty)
    {
        // return Noty::where('id', $noty->id)->delete();
    }
}
