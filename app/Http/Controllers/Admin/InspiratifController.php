<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\InspiratifRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Inspiratif;
use Illuminate\Contracts\Auth\Guard;

class InspiratifController extends Controller {

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
        $data['title'] = 'Menu Alumni Inspiratif';
        return view('backend.inspiratif.index', $data);
    }

    public function apiInspiratif() {
        $data = Inspiratif::orderBy('tanggal', 'desc')->get();
        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        //
        $data['title'] = 'Tambah Alumni Inspiratif';
        return View('backend.inspiratif.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(InspiratifRequest $request) {
        $destinationPath = public_path('upload/inspiratif');
        $data = $request->except('file');
        if ($request->has('data')) {
            $data = json_decode($request->get('data'));
        }
        if (isset($data->id_inspiratif)) {
            $inspiratif = Inspiratif::find($data->id_inspiratif);
            if ($request->hasFile('file')) {
                $checkfile = file_exists($destinationPath . '/' . $inspiratif->gambar);
                if ($checkfile) {
                    unlink($destinationPath . '/' . $inspiratif->gambar);
                }
                $inspiratif->gambar = $request->file('file')->getClientOriginalName();
                $request->file('file')->move($destinationPath, $inspiratif->gambar);
            }
        } else {
            $inspiratif = new Inspiratif();
            $inspiratif->tanggal = date('Y-m-d');
            $inspiratif->waktu = date('H:i:s');
            if ($request->hasFile('file')) {
                $inspiratif->gambar = $request->file('file')->getClientOriginalName();
                $request->file('file')->move($destinationPath, $inspiratif->gambar);
            }
        }
        $inspiratif->nama_alumni = $data->nama_alumni;
        $inspiratif->isi = $data->isi;
        $inspiratif->author = $this->auth->user()->username;
        $inspiratif->counter = 0;
        if ($inspiratif->save()) {
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
        $data = Inspiratif::find($id);
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
        $data['title'] = 'Edit Alumni Inspiratif';
        $data['data'] = Inspiratif::find($id);
        return view('backend.inspiratif.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update(InspiratifRequest $request, $id) {
        //
        $input = $request->all();
        $input['author'] = $this->auth->user()->nama_pegawai;
        $inspiratif = Inspiratif::find($id);
        if ($inspiratif->update($request->all())) {
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
        $data = Inspiratif::find($id);
        if ($data->delete()) {
            return response()->json(array('success' => TRUE, 'msg' => 'Data Berhasil Dihapus'));
        }
    }

}
