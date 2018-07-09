<?php

namespace App\Http\Controllers;

use App\Role;
use App\Http\Requests\RoleRequest;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    public function getgroup()
    {
        return Role::where('name', '!=', 'Admin')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RoleRequest $request)
    {
        // return $request->all();
        $role = new Role;
        $role->name = $request->name;
        $role->guard_name = 'web';
        $role->save();
        return $role;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Role $role)
    {
        // return $request->all();
        $role = Role::find($request->id);
        $role->name = $request->name;
        $role->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy(Role $role, $id)
    {
        Role::where('id', $id)->delete();
        // Role::destroy($role->id);
        // return $request->id;
    }
}
