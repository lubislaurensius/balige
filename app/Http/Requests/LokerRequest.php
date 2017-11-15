<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class LokerRequest extends Request {

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
            'judul_loker' => 'required',
            'isi' => 'required',
        ];
    }

    public function messages() {
        return [
            'judul_loker.required' => 'Judul Lowongan Diperlukan!',
            'data.required' => 'Field Isi & Judul diperlukan',
            'isi.required' => 'Isi Diperlukan!',
        ];
    }

}
