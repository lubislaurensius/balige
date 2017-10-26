<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\AlumniRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Alumni;
use Illuminate\Contracts\Auth\Guard;

class AlumniController extends Controller {

    public function __construct(Guard $auth) {
        $this->auth = $auth;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index($kelas_id, $id = null) {
        //
        $data['kelas_id'] = $kelas_id;
        $data['title'] = 'Menu Alumni';
        return view('backend.alumni.index', $data);
    }   

    public function listAlumniByAngkatan($angkatan_id) {
        //
        $data['angkatan_id'] = $angkatan_id;
        $data['title'] = 'Menu Alumni';
        return view('backend.alumni.index', $data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function apiAlumni($id = NULL) {
        //
        $data = Alumni::with('angkatan')->where('id_angkatan', '=', $id)->orderBy('nama')->get();
        return response()->json($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function create($id = null) {
        //
        $data['id'] = $id;
        $data['title'] = 'Tambah Alumni';
        return View('backend.alumni.create', $data);
    }

    public function createAlumniByAngkatan($id = null) {
        //
        $data['id'] = $id;
        $data['title'] = 'Tambah Alumni';
        return View('backend.alumni.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(AlumniRequest $request, $id = null) {
        //
        $input = $request->all();
        $Alumni = new Alumni($input);
        if ($Alumni->save()) {
            return response()->json(array('success' => TRUE));
        }
    }

    public function storeAlumniByAngkatan(AlumniRequest $request, $id = null) {
        //
        $input = $request->all();
        $Alumni = new Alumni($input);
        if ($Alumni->save()) {
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
        $data = Alumni::find($id);
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
        $data['title'] = 'Edit Alumni';
        $data['data'] = Alumni::find($id);
        return view('backend.alumni.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update(AlumniRequest $request, $kelas_id, $id) {
        //
        $input = $request->all();
        $Alumni = Alumni::find($id);
        if ($Alumni->update($input)) {
            return response()->json(array('success' => TRUE));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($kelas_id, $id) {
        //
        $Alumni = Alumni::find($id);
        if ($Alumni->delete()) {
            return response()->json(array('success' => TRUE));
        }
    }

}
