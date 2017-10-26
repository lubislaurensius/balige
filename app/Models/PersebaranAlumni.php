<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PersebaranAlumni extends Model {

	//
        protected $table = 'tbl_persebaran_alumni';
        protected $primaryKey = 'kode';
        protected $fillable = array('provinsi','ibukota','jumlah');
        public $timestamps = true;

}
