<?php

use Illuminate\Database\Seeder;
use App\Models\Agenda;

class TblAgendaTableSeeder extends Seeder {

	public function run()
	{
		// User::truncate();
		Agenda::create( [
			'id_agenda'=>2,
			'tema_agenda'=>'Peluncuran Website Resmi Alumni SMA Negeri 2 Balige',
			'isi'=>'Peluncuran website resmi dari  SMA Negeri 2 Balige, sebagai media informasi  SMA Negeri 2 Balige.',
			'tgl_mulai'=>'2010-12-23',
			'tgl_selesai'=>'2010-12-24',
			'tgl_posting'=>'2010-12-22',
			'tempat'=>'SMA Negeri 1 Wongsorejo',
			'jam'=>'07.30 WIB - 12.00 WIB',
			'keterangan'=>'-'
		] );						
		Agenda::create( [
			'id_agenda'=>3,
			'tema_agenda'=>'Penyembelihan Hewan Kurban Idul Adha 2010',
			'isi'=>'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. SMA Negeri 1 Wongsorejo tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.',
			'tgl_mulai'=>'2010-11-17',
			'tgl_selesai'=>'2010-11-17',
			'tgl_posting'=>'2010-11-15',
			'tempat'=>'SMA Negeri 1 Wongsorejo',
			'jam'=>'07.30 WIB - 14.00 WIB',
			'keterangan'=>'Dihadiri oleh guru-guru, siswa dan pengurus OSIS.s'
		] );						
		Agenda::create( [
			'id_agenda'=>7,
			'tema_agenda'=>'Perkemahan Sabtu Minggu',
			'isi'=>'

			Perkemahan Sabtu Minggu

			\n',
			'tgl_mulai'=>'2015-02-17',
			'tgl_selesai'=>'2015-02-22',
			'tgl_posting'=>'2015-02-17',
			'tempat'=>'Sekolah',
			'jam'=>'17:00',
			'keterangan'=>'
			Perkemahan Sabtu Minggu

			\n'
			] );

	}

}
