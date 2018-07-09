<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SendRequest;
use Mail;
use App\Subscriber;
use App\Mail\CampaignReady;

class EmailController extends Controller
{
    //
    public function compose(){
        return view('dashboard');
    }

    public function send(SendRequest $request){
        $subscribers = Subscriber::all();
        
        foreach ($subscribers as $subscriber) {
            Mail::queue( new CampaignReady($subscriber, $request->title, $request->content));
        }

        /*foreach ($subscribers as $subscriber) {
            $name = $subscriber->firstname;
            $title =$request->title;
            $content =$request->content;
        }
        return view('emails.campaign')->with([
                'name' => $name,
                'title' => $title,
                'content' => $content 
            ]);*/

        return back()->with([
            'success' => "Campaign Sent!"
        ]);        
    }
}
