<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTblLokerTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_loker', function(Blueprint $table)
        {
            $table->integer('id_loker', true);
            $table->string('judul_loker', 100);
            $table->text('isi', 65535);
            $table->string('keterangan', 100);
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
        Schema::drop('tbl_loker');
    }

}