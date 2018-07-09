<?php

namespace App\Http\Controllers;

use App\RoleUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserRoleController extends Controller
{
    public function markAs()
    {
        Auth::user()->unreadNotifications->markAsRead();
    }
    public function getnoty()
    {
        return count(Auth::user()->unreadNotifications);
    }

    public function notyget()
    {
        /*foreach (Auth()->user()->unreadNotifications as $notification){
            $converted = class_basename($notification->data['thread']);
            $convert = class_basename($notification->data['user']['name']);            
        }
        return $converted;*/
        return Auth()->user()->unreadNotifications;
    }

    public function getRole()
    {
        $newrole = Auth::user()->role;
        $names = $newrole;
        foreach ($names as $name) {
            $rolename = $name->name;
        }
        return $rolename;
    }

    public function getRoles()
    {
        return RoleUser::all();
    }

    public function getrolename()
    {
       /* $users = DB::table('roles')
                    ->join('user_roles', 'roles.id', '=', 'user_roles.role_id')
                    ->join('users', 'user_roles.id', '=', 'users.id')
                    ->select('roles.*', 'contacts.phone', 'orders.price')
                    ->get();*/

        $users = DB::table('user_roles')
                    ->join('users', 'user_roles.user_id', '=', 'users.id')
                    ->join('roles', 'user_roles.role_id', '=', 'roles.id')
                    ->select('roles.name', 'users.id')
                    ->get();

        // $rolename = SELECT c.name, b.user_id, a.id FROM users a, user_roles b, roles c where b.user_id = a.id;
        return $users;
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DocCategory  $docCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $newrole = Auth::user()->role;

        $names = $newrole;
        foreach ($names as $name) {
            $rolename = $name->name;
        }
        if ($rolename == 'Admin') {        
            $role = RoleUser::updateOrCreate(
                ['user_id' => $request->user_id],
                ['user_id' => $request->user_id, 'role_id' => $request->role_id]
            );
        }
    }
}
