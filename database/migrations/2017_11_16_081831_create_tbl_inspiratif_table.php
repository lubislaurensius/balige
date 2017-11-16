<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTblInspiratifTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_inspiratif', function(Blueprint $table)
		{
			$table->integer('id_inspiratif', true);
			$table->string('nama_alumni', 100);
			$table->text('isi', 65535);
			$table->string('gambar', 100);
			$table->date('tanggal');
			$table->time('waktu');
			$table->string('author', 20);
			$table->integer('counter');
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
		Schema::drop('tbl_inspiratif');
	}

}
