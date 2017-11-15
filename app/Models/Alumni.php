<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Alumni extends Model {

    //
    protected $table = 'tbl_alumni';
    protected $primaryKey = 'id';
    protected $fillable = array('nama', 'tempat_lahir', 'tanggal_lahir', 'agama', 'alamat', 'pekerjaan', 'kontak_alumni','id_angkatan', 'status', 'hobby', 'instansi', 'nama_pasangan', 'jumlah_anak');
    public $timestamps = true;

    public function angkatan() {
        return $this->belongsTo('App\Models\Angkatan', 'id_angkatan');
    }

    public function absensi() {
        return $this->hasMany('App\Models\Absensi','id');
    }

}
