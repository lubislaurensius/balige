<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model {

	//
    protected $table = 'tbl_provinsi';
    protected $primaryKey = 'id';
    protected $fillable = array('name');
    public $timestamps = true;

    public function scopeDropdownProvinsi($query) {
        $data = array();
        $eselon = $query->select(array('id', 'name'))->get();
        if (count($eselon) > 0) {
            foreach ($eselon as $ese) {
                $data[] = array('id' => $ese->id, 'label' => $ese->name);
            }
        }
        return $data;
    }
}
