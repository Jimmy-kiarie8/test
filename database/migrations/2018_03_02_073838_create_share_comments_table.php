<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShareCommentsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('share_comments', function (Blueprint $table) {
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('post_id');
			$table->text('comment');
			$table->timestamps();

			$table->foreign('user_id')
				->references('id')
				->on('users');
			// ->onDelete('cascade')

			$table->foreign('post_id')
				->references('id')
				->on('shareholders');
			// ->onDelete('cascade')
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('share_comments');
	}
}
