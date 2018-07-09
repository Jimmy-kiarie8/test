<?php

namespace App;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Support\Facades\Auth;
use Permission;
use App\Traits\ExposePermissions;
use App\notifications\verifyEmail;

class User extends Authenticatable
{
    use HasRoles;
    use Notifiable;
    use \Illuminate\Auth\Authenticatable;

    public function questions() {
        return $this->hasMany(Question::class);
    }


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'credentials','verifyToken', 'company_id', 'address', 'phone_number', 'status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function role()
    {
        return $this->belongsToMany(Role::class,'user_roles');
    }

    public function verified()
    {
        return $this->verifyToken === null;
    }

    public function sendVerificationEmail()
    {
        $this->notify(new verifyEmail($this));
    }

    /*public function routeNotificationForSlack()
    {
        return 'https://hooks.slack.com/services/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';
    }*/

}

