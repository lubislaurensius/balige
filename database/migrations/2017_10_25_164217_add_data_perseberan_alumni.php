<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddDataPerseberanAlumni extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_persebaran_alumni', function(Blueprint $table)
		{
			$table->integer('kode');
			$table->string('provinsi');
			$table->string('ibukota');
			$table->integer('jumlah');
			$table->timestamp('created_at')->nullable();
			$table->timestamp('updated_at')->nullable();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('tbl_persebaran_alumni');
	}

}
