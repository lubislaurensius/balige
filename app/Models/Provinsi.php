<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model {

	//
        protected $table = 'tbl_provinsi';
        protected $primaryKey = 'id';
        protected $fillable = array('name');
        public $timestamps = true;

}
