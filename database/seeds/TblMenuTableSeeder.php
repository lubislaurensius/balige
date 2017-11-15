<?php

use Illuminate\Database\Seeder;
use App\Models\Menu;

class TblMenuTableSeeder extends Seeder {

	public function run()
	{
		// User::truncate();
		Menu::create( [
			'id'=>'1',
			'title'=>'Profil',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'1.1',
			'title'=>'Sambutan Alumni',
			'id_parent'=>'1',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'1.2',
			'title'=>'Visi dan Misi',
			'id_parent'=>'1',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'1.3',
			'title'=>'Sasaran Mutu',
			'id_parent'=>'1',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'1.4',
			'title'=>'Tujuan',
			'id_parent'=>'1',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'1.5',
			'title'=>'Motto',
			'id_parent'=>'1',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'3',
			'title'=>'Pengurus',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'3.1',
			'title'=>'Struktur Organisasi ',
			'id_parent'=>'3',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'3.2',
			'title'=>'Ketua Alumni',
			'id_parent'=>'3',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'3.5',
			'title'=>'Data Pengurus',
			'id_parent'=>'3',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'4',
			'title'=>'Alumni',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'4.1',
			'title'=>'Data Alumni',
			'id_parent'=>'4',
			'level'=>1
		] );						
		Menu::create( [
			'id'=>'4.2',
			'title'=>'Data Alumni Inspiratif ',
			'id_parent'=>'4',
			'level'=>1
		] );
		Menu::create( [
			'id'=>'4.3',
			'title'=>'Data Persebaran Alumni ',
			'id_parent'=>'4',
			'level'=>1
		] );									
		Menu::create( [
			'id'=>'6',
			'title'=>'Info',
			'id_parent'=>'0',
			'level'=>0
		] );						
		Menu::create( [
			'id'=>'6.1',
			'title'=>'Lowongan Kerja',
			'id_parent'=>'6',
			'level'=>1
		] );										
		Menu::create( [
			'id'=>'7',
			'title'=>'Indexs Berita',
			'id_parent'=>'0',
			'level'=>10
		] );						
		Menu::create( [
			'id'=>'8',
			'title'=>'Foto',
			'id_parent'=>'12',
			'level'=>10
		] );						
		Menu::create( [
			'id'=>'11',
			'title'=>'List Download',
			'id_parent'=>'0',
			'level'=>10
		] );						
		Menu::create( [
			'id'=>'12',
			'title'=>'Galeri',
			'id_parent'=>'0',
			'level'=>0
			] );

	}

}
