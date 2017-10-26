<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\AngkatanRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Angkatan;
use Illuminate\Contracts\Auth\Guard;

class AngkatanController extends Controller {

    public function __construct(Guard $auth) {
        $this->auth = $auth;
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        //
        $data['title'] = 'Menu Angkatan';
        return view('backend.angkatan.index', $data);
    }

    public function apiAngkatan() {
        $data = Angkatan::all();
        return response()->json($data);
    }

    public function apiCreateAngkatan() {
        $data = Angkatan::DropdownAngkatan();
        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        //
        $data['title'] = 'Tambah Angkatan';
        return View('backend.angkatan.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(AngkatanRequest $request) {
        //
        $input = $request->all();
        $angkatan = new Angkatan($input);
        if ($angkatan->save()) {
            return response()->json(array('success' => TRUE));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        //
        $data = Angkatan::find($id);
        return response()->json($data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        //
        $data['title'] = 'Edit Angkatan';
        $data['data'] = Angkatan::find($id);
        return view('backend.angkatan.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update(AngkatanRequest $request, $id) {
        //
        $input = $request->all();
        $angkatan = Angkatan::find($id);
        if ($angkatan->update($input)) {
            return response()->json(array('success' => TRUE));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        //
        $angkatan = Angkatan::find($id);
        if ($angkatan->delete()) {
            return response()->json(array('success' => TRUE));
        }
    }

}
