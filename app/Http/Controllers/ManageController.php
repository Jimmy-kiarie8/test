<?php

namespace App\Http\Controllers;

use Auth;
use App\Manage;
use App\Http\Requests\ManageRequest;
use Illuminate\Http\Request;

class ManageController extends Controller
{
    public function getmanage()
    {
        return Manage::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ManageRequest $request)
    {
        // return $request->all();
        $manage = new Manage;
        $manage->name = $request->name;
        $manage->maxUsers = $request->maxUsers;
        $manage->website = $request->website;
        $manage->parent_company = $request->parent_company;
        $manage->description = $request->description;
        $manage->user_id = Auth::id();
        $manage->save();
        return $manage;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Manage  $manage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Manage $manage)
    {
        $manage = Manage::find($request->id);
        $manage->name = $request->name;
        $manage->maxUsers = $request->maxUsers;
        $manage->website = $request->website;
        $manage->parent_company = $request->parent_company;
        $manage->description = $request->description;
        $manage->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Manage  $manage
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Manage $manage)
    {
        return $request->id;
        // return Manage::where('id', $manage->id)->delete();
        // return $request->all();
    }
}
