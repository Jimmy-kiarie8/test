<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Mail;
use App\mail\verifyEmail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Str;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            // 'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            // 'credentials' => 'required',
            'company_id' => 'required',
            'phone_number' => 'required|numeric',
            'address' => 'required',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'company_id' => $data['company_id'],
            // 'credentials' => $data['credentials'],
            'address' => $data['address'],
            'phone_number' => $data['phone_number'],
            'password' => Hash::make($data['password']),
            'verifyToken' => Str::random(40),
        ]);
        
        $user->sendVerificationEmail();
        return $user;
    }

    // public function sendEmail($thisUser)
    // {
    //    Mail::to($thisUser['email'])->send(new VerifyEmail($thisUser));
    // }

    public function verifyEmailFirst()
    {
        return view('email.verifyEmailFirst');
    }

    // public function sendEmailDone()
    // {
        
        // return $user;
       /* $user = User::where(['email' => $email, 'verifyToken' => $verifyToken])->first();
        if ($user) {
            return User::where(['email' => $email, 'verifyToken' => $verifyToken])->update(['status' => '1', 'verifyToken' => NULL]);
        }else{
            return 'user not found';
        }*/
    // }

}
