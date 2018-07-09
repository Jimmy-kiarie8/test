<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CompAdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $users = Auth::user()->role;
        foreach ($users as $user) {
            $user_role = $user->name;
        }
        if ($user_role == 'companyAdmin') {
            return $next($request);
        }else{
            return redirect('eboard');
        }
    }
}
