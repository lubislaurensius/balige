<?php

use Illuminate\Database\Seeder;
use App\Models\Menu;

class TblMenuTableSeeder extends Seeder {

	public function run()
	{
		// User::truncate();
//PEngurus
		Menu::create( [
			'id'=>'1',
			'title'=>'Pengurus',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'1.1',
			'title'=>'Struktur Organisasi ',
			'id_parent'=>'1',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'1.2',
			'title'=>'Ketua Alumni',
			'id_parent'=>'1',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'1.3',
			'title'=>'Data Pengurus',
			'id_parent'=>'1',
			'level'=>1
		] );		

//Profil
		Menu::create( [
			'id'=>'2',
			'title'=>'Profil',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'2.1',
			'title'=>'Sekolah',
			'id_parent'=>'2',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'2.2',
			'title'=>'Alumni',
			'id_parent'=>'2',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'2.3',
			'title'=>'Visi dan Misi',
			'id_parent'=>'2',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'2.4',
			'title'=>'Tujuan',
			'id_parent'=>'2',
			'level'=>1
		] );

//Data Alumni					
						
		Menu::create( [
			'id'=>'3',
			'title'=>'Alumni',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'3.1',
			'title'=>'List Alumni',
			'id_parent'=>'3',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'3.2',
			'title'=>'Alumni Inspiratif ',
			'id_parent'=>'3',
			'level'=>1
		] );
		Menu::create( [
			'id'=>'3.3',
			'title'=>'Data Persebaran Alumni ',
			'id_parent'=>'3',
			'level'=>1
		] );	

//Info								
		Menu::create( [
			'id'=>'4',
			'title'=>'Info',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'4.1',
			'title'=>'Lowongan Kerja',
			'id_parent'=>'4',
			'level'=>1
		] );
//Berita										
		Menu::create( [
			'id'=>'5',
			'title'=>'Indexs Berita',
			'id_parent'=>'0',
			'level'=>10
		] );						
//Galeri						
		Menu::create( [
			'id'=>'6',
			'title'=>'Galeri',
			'id_parent'=>'0',
			'level'=>0
			] );
		Menu::create( [
			'id'=>'6.1',
			'title'=>'Foto',
			'id_parent'=>'6',
			'level'=>1
		] );								
		Menu::create( [
			'id'=>'7',
			'title'=>'List Download',
			'id_parent'=>'0',
			'level'=>10
		] );



	}

}
