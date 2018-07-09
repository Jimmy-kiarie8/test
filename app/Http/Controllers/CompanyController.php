<?php

namespace App\Http\Controllers;

use App\Company;
use App\User;
use App\Attachment;
use Auth;
use Illuminate\Http\Request;
use App\Http\Requests\CompRequest;

class CompanyController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('admin');
        // $this->middleware('compAdmin');
    }

    public function attaNo()
    {
        return Attachment::count();
    }

    public function compNo()
    {
        return Company::count();
    }


    public function usersget()
    {
        return User::all();
    }

    public function getcompany()
    {
        return Company::orderBy('created_at', 'DESC')->get();
    }
    public function getview()
    {
        return Company::orderBy('created_at', 'DESC')->get();
    }

    public function getusersNo()
    {
        // $getid = Company::all();
        return User::count();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CompRequest $request)
    {
        // return $request->all();
        $newrole = Auth::user()->role;
        $names = $newrole;
        foreach ($names as $name) {
            $rolename = $name->name;
        }
        if ($rolename == 'Admin' || $rolename == 'admin') {
            $company = new Company;
            $company->name = $request->name;
            $company->email = $request->email;
            $company->color = $request->color;
            $company->logo = $request->logo;
            $company->website = $request->website;
            $company->description = $request->description;
            $company->tel_no = $request->tel_no;
            $company->user_id = Auth::id();
            $company->save();
            return $company;
        }else{
            return $request->all();
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $company)
    {
        $newrole = Auth::user()->role;
        $names = $newrole;
        foreach ($names as $name) {
            $rolename = $name->name;
        }
        if ($rolename == 'Admin' || $rolename == 'admin') {
            $company = Company::find($request->id);
            $company->name = $request->name;
            $company->email = $request->email;
            $company->color = $request->color;
            $company->logo = $request->logo;
            $company->website = $request->website;
            $company->description = $request->description;
            $company->tel_no = $request->tel_no;
            $company->save();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        Company::find($company->id)->delete();
    }
}
