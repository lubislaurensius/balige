<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Inspiratif extends Model {

	//
        protected $table = 'tbl_inspiratif';
        protected $primaryKey = 'id_inspiratif';
        protected $fillable = array('nama_alumni','isi','gambar','tanggal','waktu','author','counter');
        public $timestamps = true;

}
