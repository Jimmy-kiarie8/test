<?php

namespace App\Http\Controllers;

use App\Nse;
use Illuminate\Http\Request;

class NseController extends Controller
{
    public function getNse()
    {
        return Nse::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->all();
        $nse = new Nse;
        $nse->parent_group  =$request->parent_group;
        $nse->group_name =$request->group_name;
        $nse->evaluated =$request->evaluated;
        $nse->meeting_group =$request->meeting_group;
        $nse->cont_manage =$request->cont_manage;
        $nse->restrict =$request->restrict;
        $nse->save();
        return $nse;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Nse  $nse
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Nse $nse)
    {
        $nse = Nse::find($request->id);
        $nse->parent_group  =$request->parent_group;
        $nse->group_name =$request->group_name;
        $nse->evaluated =$request->evaluated;
        $nse->meeting_group =$request->meeting_group;
        $nse->cont_manage =$request->cont_manage;
        $nse->restrict =$request->restrict;
        $nse->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Nse  $nse
     * @return \Illuminate\Http\Response
     */
    public function destroy(Nse $nse)
    {
        return Nse::where('id', $nse->id)->delete();
    }
}
