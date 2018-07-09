<?php

namespace App\Http\Controllers;

use App\Attachment;
use App\AttachmentCategory;
use App\Http\Requests\SubRequest;
use App\Subcat;
use App\User;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubcatController extends Controller
{
    public function getattach()
    {
        return Attachment::where('sub_cat', 0)->get();
    }
    public function subcat()
    {
        return Subcat::all();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subcats = Subcat::all();
        $docs = Attachment::all();
        $category = AttachmentCategory::all();
        // dd($subcats);
        return view('docs.docs', ['subcats' => $subcats, 'docs' => $docs]);

        /*$subcats = Subcat::all();

        $docs = Attachment::all();
        foreach($docs as $doc){
        // foreach($subcats as $key => $value){
            foreach($subcats as $value){
                if (in_array(Auth::id(), $value->users_id)) {
                    // if ($value->id == $doc->sub_cat){
                        $docsnew = Attachment::where('sub_cat', $value->id)->paginate(10);
                        dd($docsnew);
                    // }
                }else{
                    // dd($subcats);
                    return view('docs.docs', ['docs' => $docs, 'value' => $value]);
                }
            }
        // }
        }*/
    }


    /*public function mail(Request $request)
    {
        Mail::to('jimkiarie8@gmail.com')
                ->cc('nick@gmail.com')
                ->bcc('doe@gmail.com')
                ->send(new Documents);
        // return view('welcome');
    }*/
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SubRequest $request)
    {
        // return $request->email;
        $subcat = new Subcat;
        $subcat->title = $request->title;
        $subcat->description = $request->description;
        $subcat->cat_id = $request->cat_id;
        // $subcat->subcat = '0';
        $subcat->users_id = $request->users_id;
        $subcat->user_id = Auth::id();
        $subcat->save();
        
        
        // $this->mail();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Subcat  $subcat
     * @return \Illuminate\Http\Response
     */
    public function show(Subcat $subcat)
    {
        $sub = Attachment::find($subcat->id);
        return view('docs.show')->with('sub', $sub);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Subcat  $subcat
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $sub = Attachment::find($id);
        $subcats = Subcat::all();
        // $subcats = Subcat::pluck('title', 'id');
        // dd($sub);
        return view('docs.edit', ['sub' => $sub, 'subcats' => $subcats]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Subcat  $subcat
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Subcat $subcat, $id)
    {
        // return $request->all();
        $sub = Attachment::find($request->id);
        $subcat_id = $request->list['id'];
        $sub->sub_cat = $request->sub_cat;
        // $users_id = Subcat::select('users_id')->where('id', $request->sub_cat)->get();
        $users_id = DB::table('subcats')->select('users_id', 'title')->where('id', $request->sub_cat)->get();
        foreach ($users_id as $value) {
            $test = $value->users_id;
        }
        $try = DB::table('users')->select('email')->whereIn('id', $test)->get();
        var_dump($try); die;
        $subcat->users_id = $request->users_id;
        $subcat->user_id = Auth::id();
        // $sub->save();
        // return $sub;
        /*foreach ($request->email as $key => $value) {
            Mail::to($value)
                    ->send(new Documents);
        }*/
        // dd($request->input('sub_cat'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Subcat  $subcat
     * @return \Illuminate\Http\Response
     */
    public function destroy(Subcat $subcat)
    {
        //
    }
}



