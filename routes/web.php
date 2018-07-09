<?php
use App\Company;
use App\Utilities\AdminNotify\AdminNotify;
use App\Mail\Userregistered;
// use App\Notifications\SlackNotification;
use App\Notifications\TestNotification;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Notification;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/', function () {
    return view('dash');
});

/*Route::get('/slack', function () {
    $noty = Auth::user();
    // $noty->notify(new SlackNotification);
    $message = Notification::send($noty, new SlackNotification);
    if ($message) {
    	return $noty;
    }else{
    	return Auth::id();
    }
    // AdminNotify::send(new TestNotification());
});*/


// Route::get('/email', 'VerifyController@mail')->name('mail');
Route::get('/email', function () {
    $url = 'http://eboard2.dev/login';
    return view('email', compact('url'));
});

Route::get('/verify/{verifyToken}', 'VerifyController@verify')->name('verify');

//Admin auth 

Route::get('admin/home', 'AdminController@index');
Route::get('/calendar', 'LogoController@index');



// Route::get('/', 'HomeController@docs')->name('show-home');


Route::get('/eboard', function () {
    $company = Company::all();
    $newrole = Auth::user()->role;
    foreach ($newrole as $name) {
        $rolename = $name->name;
    }

    return view('welcome', compact('company', 'rolename'));
})->middleware('auth');

Route::get('verifyEmailFirst', 'Auth\RegisterController@verifyEmailFirst')->name('verifyEmailFirst');

// Route::get('verify/{email}/{verifyToken}', 'Auth\RegisterController@sendEmailDone')->name('sendEmailDone');


Route::get('/cal', function () {
    return view('calendar');
});

Auth::routes();


Route::get('/home', 'HomeController@index')->name('home');

// Route::middleware(['auth'])->group(function () {
// Route::group(['middleware' => ['auth']], function () {

    Route::get('/eboard/{name}', function () {
        return redirect('/');
    })->where('name', '[A-Za-z]+');
    Route::resource('markAs', 'DirectorController');
    Route::resource('noty', 'NotyController');
    Route::resource('users', 'UserController');
    Route::resource('usersupdate', 'UserUpController');
    Route::resource('manage', 'ManageController');
    Route::resource('nse', 'NseController');
    Route::resource('file', 'HomeController');
    Route::resource('company', 'CompanyController');
    Route::resource('comment', 'CommentController');
    // Route::resource('sharecomment', 'ShareCommentController');
    Route::resource('getdirectcomment', 'DirectCommentController');
    Route::resource('cats', 'CategoryController');
    Route::resource('logo', 'LogoController');
    Route::resource('surveys', 'SurveysController');
    Route::resource('questions', 'QuestionsController');
    Route::resource('answers', 'AnswersController');
    Route::resource('docs', 'SubcatController');
    // Route::resource('poll','PollController');
    Route::resource('mailsend','VerifyController');
    Route::resource('group','RoleController');
    Route::resource('role','UserRoleController');
    Route::resource('mails','MailEventController');
    // Route::resource('report', 'ReportController');
    // Route::resource('posts', 'postsController');



    Route::post('/subcat', 'SubcatController@subcat');
    Route::post('/getattach', 'SubcatController@getattach');
    Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');


    Route::post('/getcomm', 'CommentController@getcomm');
    Route::post('getDirector', 'DirectorController@getDirector');
    // Route::post('getShareholders', 'ShareholderController@getShareholders');
    Route::post('getNse', 'NseController@getNse');
    // Route::post('/getsharecomment', 'ShareCommentController@getsharecomment');
    Route::post('/getPosts', 'postsController@getPosts');
    Route::post('/getsurvey', 'SurveysController@getsurvey');
    Route::post('/getAns', 'AnswersController@getAns');
    Route::post('/getquest', 'QuestionsController@getquest');
    Route::post('/getnoty', 'UserRoleController@getnoty');
    Route::post('/notyget', 'UserRoleController@notyget');
    Route::post('/getReadNoty', 'NotyController@getReadNoty');


    // Route::post('markAs', 'DirectorController@markAs');


    Route::post('/submit', function(\Illuminate\Http\Request $request)
    {
        $content = $request['content'];
        return view('posts/output', ['content' => $content]);
    })->name('submit');


    // file upload
    Route::post('/attachments/store', 'HomeController@store')->name('store-attachments');
    Route::post('/attachments', 'HomeController@pullAttachments')->name('pull-attachments');
    Route::delete('/attachments/', 'HomeController@deleteAttachment')->name('delete-attachment');
    Route::post('/attachments/categories', 'HomeController@getCategories')->name('pull-categories');
    Route::post('/categories', 'HomeController@storeCategories');
    Route::post('/getCategory', 'HomeController@getCategory');
    Route::post('/getmanage', 'ManageController@getmanage');
    Route::post('/getcompany', 'CompanyController@getcompany');
    Route::post('/getCat', 'CategoryController@getCat');
    Route::post('/getDocs', 'CategoryController@getDocs');
    Route::post('/getAllUsers', 'CategoryController@getAllUsers');

    Route::post('/getview', 'CompanyController@getview');
    Route::post('/getusersNo', 'CompanyController@getusersNo');
    Route::post('/getusers', 'postsController@getusers');
    // Route::post('/getcom', 'ShareholderController@getcom');
    // Route::post('/getdircom', 'ShareholderController@getdircom');
    Route::post('/getlogo', 'LogoController@getlogo');
    // Route::post('/getpoll', 'PollController@getpoll');
    Route::post('/getuserinfo', 'DashboardController@getuserinfo');
    Route::post('/getgroup', 'RoleController@getgroup');
    Route::post('/getRole', 'UserRoleController@getRole');
    Route::post('/getRoles', 'UserRoleController@getRoles');
    Route::post('/getrolename', 'UserRoleController@getrolename');

    // Number
    Route::post('/compNo', 'CompanyController@compNo');
    Route::post('/attaNo', 'CompanyController@attaNo');
    Route::post('/commentNo', 'CommentController@commentNo');


    // blog

    Route::resource('posts', 'postsController');
    Route::get('/dashboard', 'DashboardController@index');
    Route::get('/usersget', 'CompanyController@usersget');
    Route::get('/profiles', 'ProfilesController@index');
    Route::post('/uploadPhoto', 'ProfilesController@uploadPhoto');
    Route::post('/search', 'ProfilesController@search')->name('search');
    Route::get('/changePhoto', function () {
        return view('profiles.pic');
    });
    // Route::resource('menu', 'MenuController');
    // Route::get('/laptop', 'MenuController@index');
    // Route::get('/survey', 'SurveyController@survey')->name('survey');
    // Route::get('/survey/new', 'SurveyController@new_survey')->name('new.survey');

    Route::get('/survey', 'SurveyController@survey');

    Route::get('/survey/new', 'SurveyController@new_survey')->name('new.survey');
    Route::get('/survey/{survey}', 'SurveyController@detail_survey')->name('detail.survey');
    Route::get('/survey/view/{survey}', 'SurveyController@view_survey')->name('view.survey');
    Route::get('/survey/answers/{survey}', 'SurveyController@view_survey_answers')->name('view.survey.answers');
    Route::get('/survey/{survey}/delete', 'SurveyController@delete_survey')->name('delete.survey');

    Route::get('/survey/{survey}/edit', 'SurveyController@edit')->name('edit.survey');
    Route::patch('/survey/{survey}/update', 'SurveyController@update')->name('update.survey');

    Route::post('/survey/view/{survey}/completed', 'AnswerController@store')->name('complete.survey');
    Route::post('/survey/create', 'SurveyController@create')->name('create.survey');

    // Questions related
    Route::post('/survey/{survey}/questions', 'QuestionController@store')->name('store.question');

    Route::get('/question/{question}/edit', 'QuestionController@edit')->name('edit.question');
    Route::patch('/question/{question}/update', 'QuestionController@update')->name('update.question');
    Route::auth();


    /*Route::get('/', 'PollController@index');
    Route::get('/polls','PollController@show');
    Route::post('/polls','PollController@store');*/

    Route::get('chat','ChatController@chat');
    Route::post('/send','ChatController@send')->name('send');
    Route::post('saveToSession','ChatController@saveToSession');
    Route::post('deleteSession','ChatController@deleteSession');
    Route::post('getOldMessage','ChatController@getOldMessage');
    Route::get('check',function(){
        return session('chat');
    });



    Route::get('/compose', 'EmailController@compose');

    Route::post('/subscribe', 'EmailController@send');

    Route::get('/signup', 'SignUpController@signup');

    Route::post('/savesubscribers', 'SignUpController@subscribe');


    Route::get('/slack', 'MailEventController@slack');
    Route::get('/slacks', 'MailEventController@slacks');

    // email
// });

