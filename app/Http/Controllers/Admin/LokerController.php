<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\LokerRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Loker;
use Illuminate\Contracts\Auth\Guard;

class LokerController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function __construct(Guard $auth) {
        $this->auth = $auth;
    }

    public function index() {
        //
        $data['title'] = 'Menu Lowongan Kerja';
        return view('backend.loker.index', $data);
    }

    public function apiLoker() {
        $data = Loker::orderBy('tanggal', 'desc')->get();
        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        //
        $data['title'] = 'Tambah Lowongan Kerja';
        return View('backend.loker.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(LokerRequest $request) {
        $destinationPath = public_path('upload/loker');
        $data = $request->except('file');
        if ($request->has('data')) {
            $data = json_decode($request->get('data'));
        }
        if (isset($data->id_loker)) {
            $loker = Loker::find($data->id_loker);
            if ($request->hasFile('file')) {
                $checkfile = file_exists($destinationPath . '/' . $loker->gambar);
                if ($checkfile) {
                    unlink($destinationPath . '/' . $loker->gambar);
                }
                $loker->gambar = $request->file('file')->getClientOriginalName();
                $request->file('file')->move($destinationPath, $loker->gambar);
            }
        } else {
            $loker = new Loker();
            $loker->tanggal = date('Y-m-d');
            $loker->waktu = date('H:i:s');
            if ($request->hasFile('file')) {
                $loker->gambar = $request->file('file')->getClientOriginalName();
                $request->file('file')->move($destinationPath, $loker->gambar);
            }
        }
        $loker->judul_loker = $data->judul_loker;
        $loker->isi = $data->isi;
        $loker->author = $this->auth->user()->username;
        $loker->counter = 0;
        if ($loker->save()) {
            return response()->json(array('success' => TRUE));
        };
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        //
        $data = Loker::find($id);
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
        $data['title'] = 'Edit Lowongan Kerja';
        $data['data'] = Loker::find($id);
        return view('backend.loker.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update(LokerRequest $request, $id) {
        //
        $input = $request->all();
        $input['author'] = $this->auth->user()->nama_pegawai;
        $loker = Loker::find($id);
        if ($loker->update($request->all())) {
            return response()->json(array('success' => TRUE, 'msg' => 'Data Berhasil Dihapus'));
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
        $data = Loker::find($id);
        if ($data->delete()) {
            return response()->json(array('success' => TRUE, 'msg' => 'Data Berhasil Dihapus'));
        }
    }

}
