<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class AngkatanRequest extends Request {

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
        return [
            'tahun_lulus' => 'required',
        ];
    }

    public function messages() {
        return [
            'tahun_lulus.required' => 'Tahun Masuk Diperlukan!',
        ];
    }

}
