<?php

namespace App\Http\Controllers;

use App\Answers;
use App\Questions;
use App\User;
use Illuminate\Http\Request;
use Auth;

class AnswersController extends Controller
{
    public function getAns()
    {
    //     $questions = Questions::all();
    //     $user = User::all();
        return Answers::where('answer', '!=', NULL)->get();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->answer;
        
        foreach ($request->questions_id as $value) {
            foreach ($request->answer as $element) {
                $answers = new Answers;
                $answers->answer = $element;
                $answers->question_id = $value;
                $answers->survey_id = '1';
                $answers->user_id = Auth::id();
                $answers->save();
                    // $approve->approver_id = $approver;
                    // $approve->save();
            }                
        }
        // return $answers;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\answers  $answers
     * @return \Illuminate\Http\Response
     */
    public function show(answers $answers)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\answers  $answers
     * @return \Illuminate\Http\Response
     */
    public function edit(answers $answers)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\answers  $answers
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, answers $answers)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\answers  $answers
     * @return \Illuminate\Http\Response
     */
    public function destroy(answers $answers)
    {
        //
    }
}
