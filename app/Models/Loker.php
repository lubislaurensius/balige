<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Loker extends Model {

	//
        protected $table = 'tbl_loker';
        protected $primaryKey = 'id_loker';
        protected $fillable = array('judul_loker','isi','keterangan','gambar','tanggal','waktu','author','counter');
        public $timestamps = true;

}
