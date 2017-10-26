<?php

use Illuminate\Database\Seeder;
use App\Models\Pengumuman;

class TblPengumumanTableSeeder extends Seeder {

	public function run()
	{
		// User::truncate();
		Pengumuman::create( [
			'id_pengumuman'=>11,
			'judul_pengumuman'=>'ASa',
			'isi'=>'

			ascasssssssssssssssssssss

			\n',
			'tanggal'=>'2017-10-24',
			'penulis'=>'Laurensius'
		] );						
		Pengumuman::create( [
			'id_pengumuman'=>4,
			'judul_pengumuman'=>'Peresmian dan Launching Website Perdana SMA Negeri 1 Wongsorejo',
			'isi'=>'Peresmian dan launching website resmi SMA Negeri 1 Wongsorejo akan diadakan pada hari 23 Desember 2010 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2010-2011',
			'tanggal'=>'2010-12-22',
			'penulis'=>'admin'
		] );
						
		Pengumuman::create( [
			'id_pengumuman'=>10,
			'judul_pengumuman'=>'Tambah Satu',
			'isi'=>'

			tambah satu

			\n',
			'tanggal'=>'2015-02-24',
			'penulis'=>'Drs. Edi Suparnadi'
		] );
	}

}
