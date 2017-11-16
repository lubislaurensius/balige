<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class InspiratifRequest extends Request {

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() {
        return TRUE;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() {
        if (Request::has('data')) {
            return[
                'data' => 'required'
            ];
        }
        return [
            'nama_alumni' => 'required',
            'isi' => 'required',
        ];
    }

    public function messages() {
        return [
            'nama_alumni.required' => 'Judul Berita Diperlukan!',
            'isi.required' => 'Isi Diperlukan!',
        ];
    }

}
