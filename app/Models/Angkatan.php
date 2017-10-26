<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Angkatan extends Model {

    //
    protected $table = 'tbl_angkatan';
    protected $primaryKey = 'id';
    protected $fillable = array('tahun_lulus');
    public $timestamps = true;

    public function alumni() {
        return $this->hasMany('App\Models\Siswa');
    }

    public function absensi() {
        return $this->hasMany('App\Models\Absensi');
    }

    public function scopeDropdownAngkatan($query) {
        $data = array();
        $eselon = $query->select(array('id', 'tahun_lulus'))->get();
        if (count($eselon) > 0) {
            foreach ($eselon as $ese) {
                $data[] = array('id' => $ese->id, 'label' => $ese->tahun_lulus);
            }
        }
        return $data;
    }

}
