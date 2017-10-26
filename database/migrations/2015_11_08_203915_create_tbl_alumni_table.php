<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTblAlumniTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_alumni', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_angkatan');
			$table->string('nama');
			$table->string('tempat_lahir')->nullable();
			$table->date('tanggal_lahir')->nullable();
			$table->string('agama')->nullable();
			$table->integer('id_provinsi_tinggal');
			$table->string('alamat')->nullable();
			$table->string('pekerjaan')->nullable();
			$table->string('kontak_alumni')->nullable();
			$table->enum('status', ['lajang', 'menikah']);
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
		Schema::drop('tbl_alumni');
	}

}
