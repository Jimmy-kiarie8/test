<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserUpController extends Controller {
	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id) {
		return $request->all();
		$users = User::find($request->id);
		$users->email = $request->email;
		$users->address = $request->address;
		$users->phone_number = $request->phone_number;
		$users->name = $request->name;
		$users->save();
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
		//
	}
}
