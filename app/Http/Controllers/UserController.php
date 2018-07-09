<?php

namespace App\Http\Controllers;

use App\User;
use App\Role;
use App\Company;
use App\Permission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTFactory;
use Illuminate\Support\Str;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('admin');
        $this->middleware('auth');
        $this->middleware('adminComp');
    }
    public function index()
    {
        $result = User::orderBy('id', 'ASC')->paginate(10);
        return view('user.index', compact('result'));
    }

    public function create()
    {
        $company = Company::all();
        $roles = Role::pluck('name', 'id');
        return view('user.new', compact('roles', 'company'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'bail|required|min:2',
            'email' => 'required|email',
            'password' => 'required|min:6',
            'roles' => 'required|min:1|max:1',
            'company_id' => 'required',
            'phone_number' => 'required|numeric',
            'address' => 'required',
            'verifyToken' => '',
        ]);

        // hash password
        $request->merge(['password' => bcrypt($request->get('password'))]);
        $request->merge(['verifyToken' => Str::random(40)]);

        // Create the user
        if ( $user = User::create($request->except('roles', 'permissions')) ) {
            $this->syncPermissions($request, $user);
            $user->sendVerificationEmail();
            // return $user;
            // flash('User has been created.')->success();
        } else {
            // flash()->error('Unable to create user.');
        }

        return redirect()->route('users.index')->with('user', $user);
    }

    public function edit($id)
    {
        $company = Company::all();
        $user = User::find($id);
        $roles = Role::pluck('name', 'id');
        $permissions = Permission::all('name', 'id');

        return view('user.edit', compact('user', 'roles', 'permissions', 'company'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'bail|required|min:2',
            'email' => 'required|email',
            'roles' => 'required|min:1'
        ]);

        // Get the user
        $user = User::findOrFail($id);

        // Update user
        $user->fill($request->except('roles', 'permissions', 'password'));

        // check for password change
        if($request->get('password')) {
            $user->password = bcrypt($request->get('password'));
        }

        // Handle the user roles
        $this->syncPermissions($request, $user);

        $user->save();
        // flash()->success('User has been updated.');
        return redirect()->route('users.index');
    }

    public function destroy($id)
    {
        if ( Auth::user()->id == $id ) {
            // flash()->warning('Deletion of currently logged in user is not allowed :(')->important();
            return redirect()->back();
        }

        if( User::findOrFail($id)->delete() ) {
            // flash()->success('User has been deleted');
        } else {
            // flash()->success('User not deleted');
        }

        return redirect()->back();
    }

    private function syncPermissions(Request $request, $user)
    {
        // Get the submitted roles
        $roles = $request->get('roles', []);
        $permissions = $request->get('permissions', []);

        // Get the roles
        $roles = Role::find($roles);

        // check for current role changes
        if( ! $user->hasAllRoles( $roles ) ) {
            // reset all direct permissions for user
            $user->permissions()->sync([]);
        } else {
            // handle permissions
            $user->syncPermissions($permissions);
        }

        $user->syncRoles($roles);
        return $user;
    }
}
