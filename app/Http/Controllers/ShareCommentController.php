<?php

namespace App\Http\Controllers;

use App\ShareComment;
use Auth;
use Illuminate\Http\Request;

class ShareCommentController extends Controller {
	public function getsharecomment() {
		return ShareComment::all();
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		// return $request->all();
		$comment = new ShareComment;
		$comment->comment = $request->comment;
		$comment->post_id = 1;
		$comment->user_id = Auth::id();
		$comment->save();
		return $comment;
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \App\ShareComment  $shareComment
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, ShareComment $shareComment) {
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  \App\ShareComment  $shareComment
	 * @return \Illuminate\Http\Response
	 */
	public function destroy(ShareComment $shareComment) {
		//
	}
}
